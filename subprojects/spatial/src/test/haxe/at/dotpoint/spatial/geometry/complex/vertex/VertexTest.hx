package at.dotpoint.spatial.geometry.complex.vertex;

import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.geometry.complex.DefaultVertex;
import at.dotpoint.spatial.geometry.complex.DefaultVertexType;
import haxe.ds.Vector;
import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class VertexTest extends TestCase 
{
	
	//
	public function testGetSetData():Void
	{
		var vertex:DefaultVertex = new DefaultVertex();
		
		// ------------------- //
		
		var input:IVector3 = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
			
		var expected:IVector3 = MathVector3.clone( input );
		
		vertex.setTensor( DefaultVertexType.NORMAL, input );
		var result:IVector3 = vertex.getTensor( DefaultVertexType.NORMAL );
		
		// ------------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testGetSetPosition():Void
	{
		var vertex:DefaultVertex = new DefaultVertex();
		
		// ------------------- //
		
		var input:IVector3 = vertex.position = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();		
			
		var expected:IVector3 = MathVector3.clone( input );
		var result:IVector3 = vertex.getTensor( DefaultVertexType.POSITION );
		
		// ------------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testGetSetNormal():Void
	{
		var vertex:DefaultVertex = new DefaultVertex();
		
		// ------------------- //
		
		var input:IVector3 = vertex.normal = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();		
			
		var expected:IVector3 = MathVector3.clone( input );
		var result:IVector3 = vertex.getTensor( DefaultVertexType.NORMAL );
		
		// ------------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
}