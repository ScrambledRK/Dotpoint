package at.dotpoint.spatial.boundings;

import at.dotpoint.math.Axis.AxisRelative;
import at.dotpoint.math.geom.Space;
import at.dotpoint.math.lazy.LazyCube;
import at.dotpoint.math.vector.IMatrix44;
import at.dotpoint.math.vector.IVector3;
import at.dotpoint.math.vector.Vector3;
import at.dotpoint.spatial.transform.ITransform;

/**
 * Axis-Aligned-Bounding-Box
 */
class AABB extends LazyCube
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?pivot:IVector3 = null )
	{
		super( pivot );
	}

	// ************************************************************************ //
	// Transform
	// ************************************************************************ //

	/**
	 *
	 */
	public function applyTransform( transform:ITransform, space:Space ):Void
	{
		if( !transform.hasRotation( space ) )
		{
			this.applyOrthogonalTransform( transform, space );
		}
		else
		{
			this.applyRotationTransform( transform, space );
		}
	}

	/**
	 *
	 */
	private function applyOrthogonalTransform( transform:ITransform, space:Space ):Void
	{
		var min:Vector3 = new Vector3();
		var max:Vector3 = new Vector3();

		// ----------- //

		var matrix:IMatrix44 = transform.getMatrix( null, space );

		Vector3.multiplyMatrix( this.value.min, matrix, min );
		Vector3.multiplyMatrix( this.value.max, matrix, max );

		// ----------- //

		this.value.min.x = Math.min( min.x, max.x );    // min/max could get flipped due to scaling
		this.value.min.y = Math.min( min.y, max.y );
		this.value.min.z = Math.min( min.z, max.z );

		this.value.max.x = Math.max( min.x, max.x );
		this.value.max.y = Math.max( min.y, max.y );
		this.value.max.z = Math.max( min.z, max.z );
	}

	/**
	 *
	 */
	private function applyRotationTransform( transform:ITransform, space:Space ):Void
	{
		var min:Vector3 = new Vector3();
		var max:Vector3 = new Vector3();

		// ------------------------------ //

		var tlf:Vector3 = this.value.getPoint( AxisRelative.TOP_LEFT_FRONT 		);
		var trf:Vector3 = this.value.getPoint( AxisRelative.TOP_RIGHT_FRONT 	);
		var blf:Vector3 = this.value.getPoint( AxisRelative.BOTTOM_LEFT_FRONT 	);
		var brf:Vector3 = this.value.getPoint( AxisRelative.BOTTOM_RIGHT_FRONT 	);

		var tlb:Vector3 = this.value.getPoint( AxisRelative.TOP_LEFT_BACK 		);
		var trb:Vector3 = this.value.getPoint( AxisRelative.TOP_RIGHT_BACK 		);
		var blb:Vector3 = this.value.getPoint( AxisRelative.BOTTOM_LEFT_BACK 	);
		var brb:Vector3 = this.value.getPoint( AxisRelative.BOTTOM_RIGHT_BACK 	);

		// ------------------------------ //

		var matrix:IMatrix44 = transform.getMatrix( null, space );

		Vector3.multiplyMatrix( tlf, matrix, tlf );
		Vector3.multiplyMatrix( trf, matrix, trf );
		Vector3.multiplyMatrix( blf, matrix, blf );
		Vector3.multiplyMatrix( brf, matrix, brf );

		Vector3.multiplyMatrix( tlb, matrix, tlb );
		Vector3.multiplyMatrix( trb, matrix, trb );
		Vector3.multiplyMatrix( blb, matrix, blb );
		Vector3.multiplyMatrix( brb, matrix, brb );

		// ------------------------------ //

		min.x = Math.min( tlf.x, Math.min( trf.x, Math.min( blf.x, brf.x ) ) );
		min.x = Math.min( min.x, Math.min( tlb.x, Math.min( trb.x, Math.min( blb.x, brb.x ) ) ) );

		min.y = Math.min( tlf.y, Math.min( trf.y, Math.min( blf.y, brf.y ) ) );
		min.y = Math.min( min.y, Math.min( tlb.y, Math.min( trb.y, Math.min( blb.y, brb.y ) ) ) );

		min.z = Math.min( tlf.z, Math.min( trf.z, Math.min( blf.z, brf.z ) ) );
		min.z = Math.min( min.z, Math.min( tlb.z, Math.min( trb.z, Math.min( blb.z, brb.z ) ) ) );

		// ----------- //

		max.x = Math.max( tlf.x, Math.max( trf.x, Math.max( blf.x, brf.x ) ) );
		max.x = Math.max( max.x, Math.max( tlb.x, Math.max( trb.x, Math.max( blb.x, brb.x ) ) ) );

		max.y = Math.max( tlf.y, Math.max( trf.y, Math.max( blf.y, brf.y ) ) );
		max.y = Math.max( max.y, Math.max( tlb.y, Math.max( trb.y, Math.max( blb.y, brb.y ) ) ) );

		max.z = Math.max( tlf.z, Math.max( trf.z, Math.max( blf.z, brf.z ) ) );
		max.z = Math.max( max.z, Math.max( tlb.z, Math.max( trb.z, Math.max( blb.z, brb.z ) ) ) );

		// ----------- //

		this.value.setExtensions( min, max );
	}

}
