package haxe.at.dotpoint.display.renderable.mesh.data.complex;

import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexRegister;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexVertex;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshSignature;
import haxe.at.dotpoint.display.renderable.register.RegisterHelper;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;
import haxe.at.dotpoint.math.Limit;
import haxe.at.dotpoint.math.vector.Vector2;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 *
 */
class MeshVertex
{

	/**
	 *
	 */
	public var index:MeshIndexVertex;

	/**
	 *
	 */
	public var registers:Array<MeshRegisterData>;

	// ------------------------- /

	/**
	 * MeshRegisterHelper.ID_VERTEX_POSITION
	 */
	public var position(get,set):Vector3;

	/**
	 * MeshRegisterHelper.ID_VERTEX_NORMAL
	 */
	public var normal(get,set):Vector3;

	/**
	 * MeshRegisterHelper.ID_VERTEX_COLOR
	 */
	public var color(get,set):Vector3;

	/**
	 * MeshRegisterHelper.ID_VERTEX_UV
	 */
	public var uv(get,set):Vector2;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		this.registers = new Array<MeshRegisterData>();
		this.index = -1;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 * VERTEX_POSITION
	 */
	private function get_position():Vector3
	{
		var register:MeshRegisterData = this.getMeshRegisterByType( RegisterHelper.V_POSITION );

		if( register == null )
			return null;

		return register.getVector3();
	}

	private function set_position( vector:Vector3 ):Vector3
	{
		var register:MeshRegisterData = this.getMeshRegisterByType( RegisterHelper.V_POSITION );

		if( register != null )
			register.setVector3( vector );

		return vector;
	}

	/**
	 * VERTEX_NORMAL
	 */
	private function get_normal():Vector3
	{
		var register:MeshRegisterData = this.getMeshRegisterByType( RegisterHelper.V_NORMAL );

		if( register == null )
			return null;

		return register.getVector3();
	}

	private function set_normal( vector:Vector3 ):Vector3
	{
		var register:MeshRegisterData = this.getMeshRegisterByType( RegisterHelper.V_NORMAL );

		if( register != null )
			register.setVector3( vector );

		return vector;
	}

	/**
	 * VERTEX_COLOR
	 */
	private function get_color():Vector3
	{
		var register:MeshRegisterData = this.getMeshRegisterByType( RegisterHelper.V_COLOR );

		if( register == null )
			return null;

		return register.getVector3();
	}

	private function set_color( vector:Vector3 ):Vector3
	{
		var register:MeshRegisterData = this.getMeshRegisterByType( RegisterHelper.V_COLOR );

		if( register != null )
			register.setVector3( vector );

		return vector;
	}

	/**
	 * VERTEX_UV
	 */
	private function get_uv():Vector2
	{
		var register:MeshRegisterData = this.getMeshRegisterByType( RegisterHelper.V_UV_COORDINATES );

		if( register == null )
			return null;

		return register.getVector2();
	}

	private function set_uv( vector:Vector2 ):Vector2
	{
		var register:MeshRegisterData = this.getMeshRegisterByType( RegisterHelper.V_UV_COORDINATES );

		if( register != null )
			register.setVector2( vector );

		return vector;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	public function getMeshRegisterByIndex( registerIndex:MeshIndexRegister ):MeshRegisterData
	{
		for( register in this.registers )
		{
			if( register.index == registerIndex )
				return register;
		}

		return null;
	}

	/**
	 * RegisterType.ID
	 */
	public function getMeshRegisterByID( ID:String ):MeshRegisterData
	{
		for( register in this.registers )
		{
			if( register.type != null && register.type.ID == ID )
				return register;
		}

		return null;
	}

	/**
	 * RegisterType.ID
	 */
	public function getMeshRegisterByType( type:RegisterType ):MeshRegisterData
	{
		for( register in this.registers )
		{
			if( register.type != null && register.type.ID == type.ID )
				return register;
		}

		return null;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 */
	public function sortMeshRegister( signature:MeshSignature ):Void
	{
		function signatureSort( a:MeshRegisterData, b:MeshRegisterData ):Int
		{
			if( a == null || a.type == null ) return Limit.INT32_MAX;
			if( b == null || a.type == null ) return Limit.INT32_MIN;

			return a.index - b.index;
		}

		this.registers.sort( signatureSort );
	}

}
