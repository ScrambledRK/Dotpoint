package haxe.at.dotpoint.display.renderable.mesh.data.complex;

import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexRegister;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;
import haxe.at.dotpoint.math.vector.Vector2;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 * 21.03.15
 * @author RK
 */
class MeshRegisterData
{

	/**
	 *
	 */
	public var index:MeshIndexRegister;

	/**
	 *
	 */
	public var type:RegisterType;

	/**
	 *
	 */
	public var data:Array<Float>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

    public function new()
    {
        this.data = new Array<Float>();
	    this.index = -1;
    }

    // ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	public function getVector3():Vector3
	{
		if( this.type.size != 3 )
			throw "given RegisterType must support exactly 3 components";

		var vector:Vector3 = new Vector3();
			vector.x = data[0];
			vector.y = data[1];
			vector.z = data[2];

		return vector;
	}

	/**
	 *
	 */
	public function setVector3( vector:Vector3 ):Void
	{
		if( this.type.size != 3 )
			throw "given RegisterType must support exactly 3 components";

		if( vector == null )
			throw "cannot set null-data";

		this.data[0] = vector.x;
		this.data[1] = vector.y;
		this.data[2] = vector.z;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 */
	public function getVector2():Vector2
	{
		if( this.type.size != 2 )
			throw "given RegisterType must support exactly 3 components";

		var vector:Vector2 = new Vector2();
			vector.x = data[0];
			vector.y = data[1];

		return vector;
	}

	/**
	 *
	 */
	public function setVector2( vector:Vector2 ):Void
	{
		if( this.type.size != 2 )
			throw "given RegisterType must support exactly 2 components";

		if( vector == null )
			throw "cannot set null-data";

		this.data[0] = vector.x;
		this.data[1] = vector.y;
	}

}
