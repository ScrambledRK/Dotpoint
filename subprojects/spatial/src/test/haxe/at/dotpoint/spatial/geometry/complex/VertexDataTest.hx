package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class VertexDataTest extends TestCase 
{

	//
	private function createMeshData( layout:ByteLayoutType ):VertexData
	{
		var signature:MeshSignature = new MeshSignature( 3, 0, layout );
			signature.setFormat( VertexType.POSITION, new ByteFormat( ByteType.FLOAT, 3 ), 0 );
			signature.setFormat( VertexType.NORMAL, new ByteFormat( ByteType.FLOAT, 3 ), 1 );
			signature.setFormat( VertexType.UV, new ByteFormat( ByteType.FLOAT, 2 ), 3 );
		
		return new VertexData( signature );
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function testSetGetVertexDataBlocked():Void
	{
		var instance:VertexData = this.createMeshData( ByteLayoutType.BLOCKED );
		
		// ------------------- //
		
		var input:IVector3 = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
			
		var expected:IVector3 = MathVector3.clone( input );
		var result:IVector3 = new Vector3();
		
		//
		instance.setData( 2, VertexType.NORMAL, input );		
		instance.getData( 2, VertexType.NORMAL, result );
		
		// ------------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetVertexDataInterleaved():Void
	{
		var instance:VertexData = this.createMeshData( ByteLayoutType.INTERLEAVED );
		
		// ------------------- //
		
		var input:IVector3 = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
			
		var expected:IVector3 = MathVector3.clone( input );
		var result:IVector3 = new Vector3();
		
		//
		instance.setData( 2, VertexType.NORMAL, input );		
		instance.getData( 2, VertexType.NORMAL, result );
		
		// ------------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetVertexDataIndexBlocked():Void
	{
		var instance:VertexData = this.createMeshData( ByteLayoutType.BLOCKED );
		
		// ------------------- //
		
		var input:Int = 1;
		var expected:Int = input;
		
		//
		instance.setIndex( 2, VertexType.NORMAL, input );		
		var result:Int = instance.getIndex( 2, VertexType.NORMAL );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
	//
	public function testSetGetVertexDataIndexInterleaved():Void
	{
		var instance:VertexData = this.createMeshData( ByteLayoutType.INTERLEAVED );
		
		// ------------------- //
		
		var input:Int = 1;
		var expected:Int = 2;	// interleaved duplicates vertex data - therefor each vertex index equals data index
		
		//
		instance.setIndex( 2, VertexType.NORMAL, input );		
		var result:Int = instance.getIndex( 2, VertexType.NORMAL );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
}