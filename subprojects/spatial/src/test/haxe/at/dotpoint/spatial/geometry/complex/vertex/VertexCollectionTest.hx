package at.dotpoint.spatial.geometry.complex.vertex;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.math.tensor.MathVector2;
import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector2;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.geometry.complex.mesh.MeshSignature;
import at.dotpoint.spatial.geometry.complex.DefaultVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexCollection;
import at.dotpoint.spatial.geometry.complex.DefaultVertexType;
import haxe.ds.Vector;
import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class VertexCollectionTest extends TestCase 
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
	private function createVertexData( layout:ByteLayoutType ):VertexCollection<DefaultVertexType>
	{
		var types:Vector<DefaultVertexType> = Vector.fromArrayCopy( DefaultVertexType.createAll() );
		
		var signature:MeshSignature<DefaultVertexType> = new MeshSignature<DefaultVertexType>( types, 3, 0, layout );
			signature.setFormat( DefaultVertexType.POSITION, new ByteFormat( ByteType.FLOAT, 3 ), 0 );
			signature.setFormat( DefaultVertexType.NORMAL, new ByteFormat( ByteType.FLOAT, 3 ), 1 );
			signature.setFormat( DefaultVertexType.UV, new ByteFormat( ByteType.FLOAT, 2 ), 3 );
		
		return new VertexCollection<DefaultVertexType>( signature );
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	public function testSetGetVertexBlocked()
	{
		var instance:VertexCollection<DefaultVertexType> = this.createVertexData( ByteLayoutType.BLOCKED );
		
		// ------------------- //
		
		var in_normal:IVector3 = this.getRandomVector3();
		var in_uv:IVector2 = this.getRandomVector2();
		
		var ex_normal:IVector3 = MathVector3.clone( in_normal );
		var ex_uv:IVector2 = MathVector2.clone( in_uv );

		//
		var vertex:DefaultVertex = new DefaultVertex();
			vertex.index = 1;
			
		vertex.setTensor( DefaultVertexType.NORMAL, in_normal );	
		vertex.setTensor( DefaultVertexType.UV, in_uv );	
		
		vertex.setDataIndex( DefaultVertexType.NORMAL, 0 );
		vertex.setDataIndex( DefaultVertexType.UV, 2 );
		
		// ------------------- //
		
		instance.setVertex( vertex );
		
		var result:DefaultVertex = new DefaultVertex();
		instance.getVertex( 1, result );
		
		assertEquals( 1, result.index );
		assertEquals( 0, result.getDataIndex( DefaultVertexType.NORMAL) );
		assertEquals( 2, result.getDataIndex( DefaultVertexType.UV) );
		
		var ou_normal:IVector3 = result.getTensor( DefaultVertexType.NORMAL );
		var ou_uv:IVector2 = result.getTensor( DefaultVertexType.UV );
		
		var t_norm:IVector3 = new Vector3();
		instance.getDataTensor( 0, DefaultVertexType.NORMAL, t_norm );
		
		assertTrue( MathVector3.isEqual( ex_normal, ou_normal ) );
		assertTrue( MathVector2.isEqual( ex_uv, ou_uv ) );
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function testSetGetVertexDataBlocked():Void
	{
		var instance:VertexCollection<DefaultVertexType> = this.createVertexData( ByteLayoutType.BLOCKED );
		
		// ------------------- //
		
		var input:IVector3 = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
			
		var expected:IVector3 = MathVector3.clone( input );
		var result:IVector3 = new Vector3();
		
		//
		instance.setDataTensor( 2, DefaultVertexType.NORMAL, input );		
		instance.getDataTensor( 2, DefaultVertexType.NORMAL, result );
		
		// ------------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetVertexDataInterleaved():Void
	{
		var instance:VertexCollection<DefaultVertexType> = this.createVertexData( ByteLayoutType.INTERLEAVED );
		
		// ------------------- //
		
		var input:IVector3 = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
			
		var expected:IVector3 = MathVector3.clone( input );
		var result:IVector3 = new Vector3();
		
		//
		instance.setDataTensor( 2, DefaultVertexType.NORMAL, input );		
		instance.getDataTensor( 2, DefaultVertexType.NORMAL, result );
		
		// ------------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetVertexDataIndexBlocked():Void
	{
		var instance:VertexCollection<DefaultVertexType> = this.createVertexData( ByteLayoutType.BLOCKED );
		
		// ------------------- //
		
		var input:Int = 1;
		var expected:Int = input;
		
		//
		instance.setIndex( 2, DefaultVertexType.NORMAL, input );		
		var result:Int = instance.getIndex( 2, DefaultVertexType.NORMAL );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
	//
	public function testSetGetVertexDataIndexInterleaved():Void
	{
		var instance:VertexCollection<DefaultVertexType> = this.createVertexData( ByteLayoutType.INTERLEAVED );
		
		// ------------------- //
		
		var input:Int = 1;
		var expected:Int = 2;	// interleaved duplicates vertex data - therefor each vertex index equals data index
		
		//
		instance.setIndex( 2, DefaultVertexType.NORMAL, input );		
		var result:Int = instance.getIndex( 2, DefaultVertexType.NORMAL );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
}