package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.math.tensor.MathVector2;
import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector2;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.geometry.complex.vertex.Vertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexData;
import at.dotpoint.spatial.geometry.complex.vertex.VertexType;
import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class VertexDataTest extends TestCase 
{

	private function getRandomVector2():IVector2
	{
		var value:IVector2 = new Vector2();
			value.x = Math.random();
			value.y = Math.random();
			
		return value;
	}
	
	private function getRandomVector3():IVector3
	{
		var value:IVector3 = new Vector3();
			value.x = Math.random();
			value.y = Math.random();
			value.z = Math.random();
			
		return value;
	}
	
	//
	private function createVertexData( layout:ByteLayoutType ):VertexData
	{
		var signature:MeshSignature = new MeshSignature( 3, 0, layout );
			signature.setFormat( VertexType.POSITION, new ByteFormat( ByteType.FLOAT, 3 ), 0 );
			signature.setFormat( VertexType.NORMAL, new ByteFormat( ByteType.FLOAT, 3 ), 1 );
			signature.setFormat( VertexType.UV, new ByteFormat( ByteType.FLOAT, 2 ), 3 );
		
		return new VertexData( signature );
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	public function testSetGetVertexBlocked()
	{
		var instance:VertexData = this.createVertexData( ByteLayoutType.BLOCKED );
		
		// ------------------- //
		
		var in_normal:IVector3 = this.getRandomVector3();
		var in_uv:IVector2 = this.getRandomVector2();
		
		var ex_normal:IVector3 = MathVector3.clone( in_normal );
		var ex_uv:IVector2 = MathVector2.clone( in_uv );

		//
		var vertex:Vertex = new Vertex();
			vertex.index = 1;
			
		vertex.setTensor( VertexType.NORMAL, in_normal );	
		vertex.setTensor( VertexType.UV, in_uv );	
		
		vertex.setDataIndex( VertexType.NORMAL, 0 );
		vertex.setDataIndex( VertexType.UV, 2 );
		
		// ------------------- //
		
		instance.setVertex( vertex );
		
		var result:Vertex = new Vertex();
		instance.getVertex( 1, result );
		
		assertEquals( 1, result.index );
		assertEquals( 0, result.getDataIndex( VertexType.NORMAL) );
		assertEquals( 2, result.getDataIndex( VertexType.UV) );
		
		var ou_normal:IVector3 = result.getTensor( VertexType.NORMAL );
		var ou_uv:IVector2 = result.getTensor( VertexType.UV );
		
		var t_norm:IVector3 = new Vector3();
		instance.getDataTensor( 0, VertexType.NORMAL, t_norm );
		
		assertTrue( MathVector3.isEqual( ex_normal, ou_normal ) );
		assertTrue( MathVector2.isEqual( ex_uv, ou_uv ) );
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function testSetGetVertexDataBlocked():Void
	{
		var instance:VertexData = this.createVertexData( ByteLayoutType.BLOCKED );
		
		// ------------------- //
		
		var input:IVector3 = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
			
		var expected:IVector3 = MathVector3.clone( input );
		var result:IVector3 = new Vector3();
		
		//
		instance.setDataTensor( 2, VertexType.NORMAL, input );		
		instance.getDataTensor( 2, VertexType.NORMAL, result );
		
		// ------------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetVertexDataInterleaved():Void
	{
		var instance:VertexData = this.createVertexData( ByteLayoutType.INTERLEAVED );
		
		// ------------------- //
		
		var input:IVector3 = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
			
		var expected:IVector3 = MathVector3.clone( input );
		var result:IVector3 = new Vector3();
		
		//
		instance.setDataTensor( 2, VertexType.NORMAL, input );		
		instance.getDataTensor( 2, VertexType.NORMAL, result );
		
		// ------------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetVertexDataIndexBlocked():Void
	{
		var instance:VertexData = this.createVertexData( ByteLayoutType.BLOCKED );
		
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
		var instance:VertexData = this.createVertexData( ByteLayoutType.INTERLEAVED );
		
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