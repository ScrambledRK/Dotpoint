package haxe.at.dotpoint.display.renderable.mesh.buffer;

import haxe.at.dotpoint.display.renderable.mesh.data.IMeshData;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshSignature;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;
import haxe.at.dotpoint.display.renderable.shader.IShader;

/**
 * ...
 * @author RK
 */
class AMeshBuffer implements IMeshBuffer
{

	//
	public var indexBufferType:MeshIndexBufferType;

	//
	public var vertexBufferType:MeshVertexBufferType;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		this.indexBufferType = MeshIndexBufferType.TRIANGLES;
		this.vertexBufferType = MeshVertexBufferType.INTERLEAVED;
	}

	// ************************************************************************ //
	// Allocate
	// ************************************************************************ //

	/**
	 * data mesh to upload to the GPU
	 */
	public function allocate( data:IMeshData ):Void
	{
		throw "must override abstract method";
	}

	/**
	 * remove the mesh data from the GPU
	 */
	public function dispose( data:IMeshData ):Void
	{
		throw "must override abstract method";
	}

	// ************************************************************************ //
	// Bind
	// ************************************************************************ //

	/**
	 * sets the mesh buffer as currently active on the GPU (shader calls will use this allocated mesh then)
	 */
	public function bind( data:IMeshData, shader:IShader ):Void
	{
		throw "must override abstract method";
	}

	/**
	 * sets the mesh buffer as inactive on the GPU (no mesh will be active for shader calls then)
	 */
	public function unbind( data:IMeshData, shader:IShader ):Void
	{
		throw "must override abstract method";
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //

	/**
	 *
	 */
	private function getIndexBufferSize( signature:MeshSignature ):Int
	{
		if( signature != null )
			return signature.numTriangles * 3;

		return -1;
	}

	/**
	 *
	 * @param	register
	 * @return
	 */
	private function getVertexBufferSize( signature:MeshSignature, ?registers:Array<RegisterType> ):Int
	{
		if( signature != null )
		{
			var typelist:Array<RegisterType> = registers != null ? registers : signature.toArray();
			var vertexSize:Int = 0;

			for( type in typelist )
				vertexSize += type.size;

			return signature.numVertices * vertexSize;
		}

		return -1;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	/**
	 * fills the given index-buffer-stream with the triangle indices from the mesh data.
	 * does not create/allocate the stream itself, only  copies the data into the buffer.
	 *
	 * @param data		mesh to copy the triangle indices from
	 * @param stream	function setting the index-data to the actual index-buffer
	 * 					(can't be an datastructure due to cross-compability)
	 */
	private function populateIndexStream( data:IMeshData, stream:Int->Int->Void ):Void
	{
		for( t in 0...data.signature.numTriangles )
		{
			var indices:Array<Int> = data.getIndicesByTriangle( t );

			for( i in 0...3 )
				stream( t * 3 + i, cast indices[i] );
		}
	}

	/**
	 * fills the given vertex-buffer-stream with the vertex data from the mesh data.
	 * does not create/allocate the stream itself, only  copies the data into the buffer.
	 *
	 * @param data		mesh to copy the triangle indices from
	 * @param stream	function setting the vertex-data to the actual vertex-buffer
	 * 					(can't be an datastructure due to cross-compability)
	 * @param registers	optional register types of the mesh data that should be copied,
	 * 					if null - all types will be copied into the given stream
	 */
	private function populateVertexStream( data:IMeshData, stream:Int->Float->Void, ?registers:Array<RegisterType> ):Void
	{
		var typelist:Array<RegisterType> = registers != null ? registers : data.signature.toArray();

		// -------------- //

		var vertexStepSize:Int = 0;
		var typeStepSize:Int = 0;

		switch( this.vertexBufferType )
		{
			case MeshVertexBufferType.INTERLEAVED:
			{
				typeStepSize = 1;

				for( type in typelist )
					vertexStepSize += type.size;
			}

			case MeshVertexBufferType.SEPERATED:
			{
				typeStepSize 	= data.signature.numVertices;
				vertexStepSize 	= 1;
			}
		}

		// -------------------- //

		var offset:Int = 0;

		for( t in 0...typelist.length )
		{
			var type:RegisterType = typelist[t];
			var typeIndex:Int = data.signature.indexOfType( type );

			for( v in 0...data.signature.numVertices )
			{
				var registerIndices:Array<Int> = data.getIndicesByVertex( v );
				var registerData:Array<Float>  = data.getRegisterData( registerIndices[typeIndex], type );

				for( d in 0...registerData.length )
				{
					stream( offset + (v * vertexStepSize) + d, registerData[ d ] );
				}
			}

			offset += type.size * typeStepSize;
		}
	}
}