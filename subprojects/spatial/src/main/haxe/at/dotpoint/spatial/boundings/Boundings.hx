package haxe.at.dotpoint.spatial.boundings;

import haxe.at.dotpoint.datastructure.graph.event.TreeNodeEvent;
import haxe.at.dotpoint.datastructure.graph.TreeNode;
import haxe.at.dotpoint.dispatcher.event.Event;
import haxe.at.dotpoint.datastructure.entity.Component;
import haxe.at.dotpoint.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.math.geom.Cube;
import haxe.at.dotpoint.math.geom.Space;
import haxe.at.dotpoint.math.vector.IMatrix44;
import haxe.at.dotpoint.math.vector.IVector3;
import haxe.at.dotpoint.math.vector.Vector3;
import haxe.at.dotpoint.spatial.event.SpatialEvent;
import haxe.at.dotpoint.spatial.ISpatialEntity;
import haxe.at.dotpoint.spatial.transform.LazyTransform;
import haxe.at.dotpoint.spatial.transform.TransformationMatrix;

/**
 * 15.02.15
 * @author RK
 */
@:access(haxe.at.dotpoint.math.lazy.LazyCube)
//
class Boundings<TEntity:IASpatialEntity<TEntity>> extends Component<TEntity> implements IBoundings
{

	/**
	 * ModelSpace BoundingBox: RenderObject only, no Children, no Transform
	 */
	public var modelSpace(default, null):AABB;

	/**
	 * LocalSpace BoundingBox: RenderObject, Children, local Transform
	 */
	public var localSpace(default, null):AABB;

	/**
	 * WorldSpace BoundingBox: RenderObject, Children, world Transform
	 */
	public var worldSpace(default, null):AABB;

	// ---------------------- //

	/**
	 * indicates validation status of the localSpace Matrix
	 */
	private var statusLocalTransform:LazyStatus;

	/**
	 * indicates validation status of the worldSpace Matrix
	 */
	private var statusWorldTransform:LazyStatus;

	// ---------------------- //

	/**
	 * on local/world dimension change: change transform or model?
	 */
	public var changePolicy:BoundingChangePolicy;

	/**
	 * whether or not to include children into boundings calculations
	 */
	public var measureChildren:Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?policy:BoundingChangePolicy, ?pivot:IVector3 = null )
	{
		super();

		if( policy == null )
			policy = BoundingChangePolicy.CHANGE_TRANSFORM;

		this.changePolicy    = policy;
		this.measureChildren = true;

		this.modelSpace = new AABB( pivot );
		this.localSpace = new AABB( pivot );
		this.worldSpace = new AABB( pivot );

		this.statusLocalTransform = LazyStatus.VALID;
		this.statusWorldTransform = LazyStatus.VALID;
	}

	// ************************************************************************ //
	// Entity/Component
	// ************************************************************************ //

	/**
	 *
	 */
	private override function onEntityAdded():Void
	{
		this.assertRequiredComponents( [TreeNode,LazyTransform] );

		// -------------- //

		this.modelSpace.lazy.onUpdate     = this.onUpdateModel;
		this.modelSpace.lazy.onValidate   = this.validateModelBounds;

		this.localSpace.lazy.onUpdate     = this.onUpdateLocal;
		this.localSpace.lazy.onValidate   = this.validateLocalBounds;

		this.worldSpace.lazy.onUpdate     = this.onUpdateWorld;
		this.worldSpace.lazy.onValidate   = this.validateWorldBounds;

		// ----------------- //

		this.entity.getSpatialNode().addListener( TreeNodeEvent.ADDED_TO_NODE,     this.onSpatialTreeChanged );
		this.entity.getSpatialNode().addListener( TreeNodeEvent.REMOVED_FROM_NODE, this.onSpatialTreeChanged );

		this.entity.transform.addListener( SpatialEvent.TRANSFORM_CHANGED, this.onTransformChanged );
	}

	/**
	 *
	 */
	private override function onEntityRemoved():Void
	{
		this.modelSpace.lazy.onUpdate     = null;
		this.modelSpace.lazy.onValidate   = null;

		this.localSpace.lazy.onUpdate     = null;
		this.localSpace.lazy.onValidate   = null;

		this.worldSpace.lazy.onUpdate     = null;
		this.worldSpace.lazy.onValidate   = null;

		// ----------------- //

		this.entity.getSpatialNode().removeListener( TreeNodeEvent.ADDED_TO_NODE,     this.onSpatialTreeChanged );
		this.entity.getSpatialNode().removeListener( TreeNodeEvent.REMOVED_FROM_NODE, this.onSpatialTreeChanged );

		this.entity.transform.removeListener( SpatialEvent.TRANSFORM_CHANGED, this.onTransformChanged );
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 * @param	space
	 * @return
	 */
	public function getBounds( ?space:Space ):AABB
	{
		if( space == null )
			space = Space.LOCAL;

		switch( space )
		{
			case Space.LOCAL:
				return this.localSpace;

			case Space.WORLD:
				return this.worldSpace;

			case Space.MODEL:
				return this.modelSpace;
		}

		return null;
	}

	// ************************************************************************ //
	// Event-Listeners
	// ************************************************************************ //

	/**
	 * transformation changed either within bounds due to policy or more likely outside
	 * and depending on the space internal boundings are invalidated. keep in mind that
	 * a local change comes with a world change but not necessary the other way around.
	 */
	private function onTransformChanged( value:Event ):Void
	{
		var event:SpatialEvent = cast value;

		switch( event.space )
		{
			case Space.LOCAL:                                           // local change dispatches 2 transform events (for each space)
			{                                                           // therfore no need to invalidate world bounds
			   if( this.statusLocalTransform == LazyStatus.VALID )
			   {
				    //this.statusLocalTransform = LazyStatus.INVALID;
                    this.invalidateLocalBounds();
			   }
			}

			case Space.WORLD:                                           // only wb invalid, not parents, local change includes wt change
			{                                                           // therfore no need to invalidate parents (done in local)
				if( this.statusWorldTransform == LazyStatus.VALID )     // children wbs get invalidated via wt change event
			    {                                                       // so validating wb will validate children wbs
					//this.statusWorldTransform = LazyStatus.INVALID;
					this.invalidateWorldBounds() ;
			    }
			}

			default: return;
		}
	}

	/**
	 * scene graph changed: eg. the entity has been removed from the graph or added
	 * to a different node, in either case parents need to know about it.
	 */
	private function onSpatialTreeChanged( value:Event ):Void
	{
		if( value.target != this.entity.getSpatialNode() )                   // ignore bubbling events
			return;

		this.invalidateParents();                                       // wbs already invalidated via wt change event
	}

	// ************************************************************************ //
	// AABB
	// ************************************************************************ //

	/**
	 * model has changed and local/world bounds depend on it. this can either happen
	 * due to directly manipulating model bounds or indirectly via local/world bounds
	 * and the policy set to change model instead of transform.
	 */
	inline private function onUpdateModel():Void
	{
		this.modelSpace.lazy.status = LazyStatus.VALID;
		this.modelSpace.lazy.allowDispatchUpdate = false;

		if( this.changePolicy == BoundingChangePolicy.CHANGE_MODELBOUNDS )
			this.measureChildren = false;

		this.invalidateLocalBounds();
		this.invalidateWorldBounds();

		this.dispatchModelChange();
	}

	/**
	 * local bounds has changed. in case policy is set to adjust transform scaling
	 * the transform matrix will be changed immediatly (and the following transform event
	 * will be ignored @onTransform). in case the policy is set to adjust the model,
	 * the model will be invalidated (accessing model validates the model bounds)
	 */
	inline private function onUpdateLocal():Void
	{
		this.localSpace.lazy.status = LazyStatus.VALID;

		if( this.changePolicy == BoundingChangePolicy.CHANGE_TRANSFORM )
		{
			this.updateTransformScale();        // uses valid local bounds to calculate scaling and sets it.

			this.invalidateLocalBounds();       // even local needs to be validated again (especially for min/max)
			this.invalidateWorldBounds();
		}
		else
		{
			this.measureChildren = false;

			this.localSpace.lazy.allowDispatchUpdate = false;

			this.invalidateWorldBounds();
			this.invalidateModelBounds();       // unlike transform change, model is indirectly affected by the change
			this.invalidateParents();

			this.dispatchLocalChange();
		}
	}

	/**
	 * world bounds has changed. in case policy is set to adjust transform scaling
	 * the transform matrix will be changed immediatly (and the following transform event
	 * will be ignored @onTransform). in case the policy is set to adjust the model,
	 * the model will be invalidated (accessing model validates the model bounds)
	 */
	inline private function onUpdateWorld():Void
	{
		this.worldSpace.lazy.status = LazyStatus.VALID;

		if( this.changePolicy == BoundingChangePolicy.CHANGE_TRANSFORM )
		{
			this.updateTransformScale();        // uses valid world bounds to calculate scaling and sets it.

			this.invalidateLocalBounds();
			this.invalidateWorldBounds();       // even world needs to be validated again (especially for min/max)
		}
		else
		{
			this.measureChildren = false;

			this.worldSpace.lazy.allowDispatchUpdate  = false;

			this.invalidateLocalBounds();
			this.invalidateModelBounds();       // unlike transform change, model is indirectly affected by the change

			this.dispatchWorldChange();
		}
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 * only called in case BoundingPolicy is set to change Model instead of Transform
	 * model bounds are calculating "reverting" transformations of the current valid bounds (local/world)
	 */
	inline private function validateModelBounds():Void
	{
		this.calculateModelBounds( this.modelSpace, this.getValidSpace() );

		this.resetBoundsUpdate();
		this.modelSpace.lazy.status = LazyStatus.VALID;
	}

	/**
	 * use Model- and ChildrenBounds, as well as local Transform to update
	 */
	inline private function validateLocalBounds():Void
	{
		this.calculateTransformBounds( this.localSpace, Space.LOCAL );

		this.resetBoundsUpdate();
		this.localSpace.lazy.status = LazyStatus.VALID;
	}

	/**
	 * use Model- and ChildrenBounds, as well as world Transform to update
	 */
	inline private function validateWorldBounds():Void
	{
		this.calculateTransformBounds( this.worldSpace, Space.WORLD );

		this.resetBoundsUpdate();
		this.worldSpace.lazy.status = LazyStatus.VALID;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 * only used when policy is set to adjust transform instead of the model bounds directly
	 * local/world bounds will always be the model bounds * their transform. this methods
	 * calculates the difference in scale between the current valid bound (local/world) as it
	 * has just been changed - sets the transform scaling, but ultimatly discards the change
	 * done in the local/world bounds (but since transform changed, it will be updated correctly)
	 */
	private function updateTransformScale():Void
	{
		var validSpace:Space = this.getValidSpace();

		// ------------- //

		var validBounds:AABB = this.getBounds( validSpace );                    // current bounding dimensions
		var modelBounds:AABB = this.calculateTransformBounds( validSpace );     // previous boundings dimensions w/o transform

		if( modelBounds.isEmpty() )
			return;

		var matrix:TransformationMatrix = this.getTransformMatrix( validSpace );

		// ------------- //

		var current:IVector3 = matrix.getScale();
		var factor:IVector3  = new Vector3( 1, 1, 1 );

		if( modelBounds.width  > 0 && validBounds.width > 0 )  factor.x = validBounds.width  / modelBounds.width;
		if( modelBounds.height > 0 && validBounds.height > 0 ) factor.y = validBounds.height / modelBounds.height;
		if( modelBounds.length > 0 && validBounds.length > 0 ) factor.z = validBounds.length / modelBounds.length;

		if( factor.x == 1 && factor.y == 1 && factor.z == 1 )
			return;

		matrix.setScale( factor );

		// ------------- //

		this.silentTransformUpdate( matrix, validSpace );
	}

	/**
	 * all boundings need to dispatch changes again
	 */
	inline private function resetBoundsUpdate():Void
	{
		this.modelSpace.lazy.allowDispatchUpdate  = true;
		this.localSpace.lazy.allowDispatchUpdate  = true;
		this.worldSpace.lazy.allowDispatchUpdate  = true;
	}

	// ************************************************************************ //
	// onInvalidate
	// ************************************************************************ //

	/**
	 * local/world bounds changed (via transforms or directly)
	 */
	private function invalidateModelBounds():Void
	{
		if( this.modelSpace.lazy.status == LazyStatus.VALID )
		{
			this.modelSpace.lazy.status = LazyStatus.INVALID;
			this.dispatchModelChange();
		}
	}

	/**
	 * model/world bounds changed (via transforms or directly)
	 */
	private function invalidateLocalBounds():Void
	{
		if( this.localSpace.lazy.status == LazyStatus.VALID )
		{
			this.localSpace.lazy.status = LazyStatus.INVALID;
			this.dispatchLocalChange();

			this.invalidateParents();                                   // once world change is someones local change
		}                                                               // therefore only local change to inform parents
	}

	/**
	 * model/local bounds changed (via transforms or directly)
	 */
	private function invalidateWorldBounds():Void
	{
		if( this.worldSpace.lazy.status == LazyStatus.VALID )
		{
			this.worldSpace.lazy.status = LazyStatus.INVALID;
			this.dispatchWorldChange();
		}
	}

	/**
	 * anytime boundings changed, all parents might need to update since
	 * bounds are calculated including children boundings
	 */
	private function invalidateParents():Void
	{
		var tree:TreeNode<TEntity> = this.entity.getSpatialNode();

		if( tree.parent == null || tree.parent.entity == null )
			return;

		var boundings:IBoundings = tree.parent.entity.boundings;
			boundings.invalidateLocalBounds();
			boundings.invalidateWorldBounds();
	}

	// ************************************************************************ //
	// dispatch changes
	// ************************************************************************ //

	/**
	 *
	 */
	inline private function dispatchModelChange():Void
	{
		this.dispatch( SpatialEvent.getInstance( SpatialEvent.BOUNDINGS_CHANGED, Space.MODEL ) );
	}

	/**
	 *
	 */
	inline private function dispatchLocalChange():Void
	{
		this.dispatch( SpatialEvent.getInstance( SpatialEvent.BOUNDINGS_CHANGED, Space.LOCAL ) );
	}

	/**
	 *
	 */
	inline private function dispatchWorldChange():Void
	{
		this.dispatch( SpatialEvent.getInstance( SpatialEvent.BOUNDINGS_CHANGED, Space.WORLD ) );
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //

	/**
	 * add all children boundings into a single bounding-cube, the given space
	 * determines the boundings pulled and in the end in what space they are.
	 *
	 * the resulting cube can be empty but does not reset the given output object
	 */
	public function getChildrenBounds( ?output:Cube, space:Space ):Cube
	{
		if( output == null )
			output = new Cube();

		// -------------- //

		var tree:TreeNode<TEntity> = this.entity.getSpatialNode();

		for( child in tree.children )
		{
			Cube.insertCube( output, child.entity.boundings.getBounds( space ) );
		}

		// -------------- //

		return output;
	}

	/**
	 * reverts the transformation of the given space-boundings and returns the resulting
	 * (and actually implied) model boundings. this is quite costly actually as it involves
	 * instantiating a new transformation object and inverting the given space matrix.
	 */
	private function calculateModelBounds( ?output:AABB = null, space:Space ):AABB
	{
		if( output == null )
			output = new AABB();

		// -------------- //

		var bounds:Cube = this.getBounds( space ).value;

		if( bounds.isEmpty() )
			return output;

		var matrix:TransformationMatrix = this.getTransformMatrix( space );
			matrix.inverse();

		// ------------- //

		var inverse:LazyTransform<TEntity> = new LazyTransform<TEntity>();
			inverse.setMatrix( matrix, Space.LOCAL );

		output.value.setExtensions( bounds.min, bounds.max );           // does not validate in case its invalid
		output.applyTransform( inverse, Space.LOCAL );                  // TODO: optimize using wb w/h/l and wt scaling

		// ------------- //

		return output;
	}


	/**
	 * calculates local/world bounds using the current model bounds as well as
	 * all children bounds of the given space.
	 */
	private function calculateTransformBounds( ?output:AABB, space:Space ):AABB
	{
		if( output == null )
			output = new AABB();

		output.value.setEmpty();

		// --------------- //

		if( this.measureChildren )
			this.getChildrenBounds( output.value, Space.LOCAL );        // l/w transform will be applied for all children

		if( !this.modelSpace.isEmpty() )                                // validates in case its invalid
			Cube.insertCube( output.value, this.modelSpace.value );

		// --------------- //

		if( !output.value.isEmpty() )
			 output.applyTransform( this.entity.transform, space );

		return output;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 * either local or world space, at least one has to be valid at all times
	 */
	inline private function getValidSpace():Space
	{
		if( this.localSpace.lazy.status == LazyStatus.VALID )
			return Space.LOCAL;

		if( this.worldSpace.lazy.status == LazyStatus.VALID )
			return Space.WORLD;

		throw "local space and world space invalid - this should never happen";

		return null;
	}

	/**
	 * shortcut for this ugly way of getting an transformation matrix of the given space
	 */
	inline private function getTransformMatrix( space:Space ):TransformationMatrix
	{
		var matrix:TransformationMatrix = new TransformationMatrix();

		this.entity.transform.getMatrix( matrix, space );

		return matrix;
	}

	/**
	 * sets the given transformation matrix at the respective space, but does it
	 * without triggering @onTransform invalidations
	 */
	inline private function silentTransformUpdate( matrix:IMatrix44, space:Space ):Void
	{
		if( space == Space.LOCAL )  this.statusLocalTransform = LazyStatus.INVALID;
		else                        this.statusWorldTransform = LazyStatus.INVALID;

		this.entity.transform.setMatrix( matrix, space );

		if( space == Space.LOCAL )  this.statusLocalTransform = LazyStatus.VALID;
		else                        this.statusWorldTransform = LazyStatus.VALID;
	}
}
