package at.dotpoint.spatial.transformation;

import at.dotpoint.math.MathBasic;
import at.dotpoint.math.tensor.MathMatrix44;
import at.dotpoint.math.tensor.MathQuaternion;
import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.transformation.graph.TransformationType;
import at.dotpoint.spatial.transformation.graph.TransformationData;
import haxe.io.Bytes;
import haxe.unit.TestCase;
using at.dotpoint.unit.TestCaseHelper;

/**
 * ...
 * @author RK
 */
class TransformationTest extends TestCase 
{
	
	//
	public function testSetGetTranslation():Void
	{
		var repository:TransformationData = new TransformationData( 1 );
		
		// ------------- //
		
		var input:IVector3 = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
		
		var expected:IVector3 = MathVector3.clone( input );
		var result:IVector3 = new Vector3();
		
		//
		repository.setValues( 0, TransformationType.TRANSLATION, input );
		repository.getValues( 0, TransformationType.TRANSLATION, result );
		
		// ------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetRotation():Void
	{
		var repository:TransformationData = new TransformationData( 1 );
		
		// ------------- //
		
		var input:IQuaternion = new Quaternion();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
			input.w = Math.random();
		
		var expected:IQuaternion = MathQuaternion.clone( input );
		var result:Quaternion = new Quaternion();
		
		//
		repository.setValues( 0, TransformationType.ROTATION, input );
		repository.getValues( 0, TransformationType.ROTATION, result );
		
		// ------------- //
		
		assertTrue( MathQuaternion.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetScale():Void
	{
		var repository:TransformationData = new TransformationData( 1 );
		
		// ------------- //
		
		var input:IVector3 = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
		
		var expected:IVector3 = MathVector3.clone( input );
		var result:IVector3 = new Vector3();
		
		//
		repository.setValues( 0, TransformationType.SCALE, input );		
		repository.getValues( 0, TransformationType.SCALE, result );
		
		// ------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetMatrix():Void
	{
		var repository:TransformationData = new TransformationData( 1 );
		
		// ------------- //
		
		var input:IMatrix44 = new Matrix44();
			
		for( i in 0...16 )
			input.setByIndex( i, Math.random() );
			
		
		var expected:IMatrix44 = MathMatrix44.clone( input );
		var result:IMatrix44 = new Matrix44();
		
		//
		repository.setValues( 0, TransformationType.MATRIX, input );
		repository.getValues( 0, TransformationType.MATRIX, result );
		
		// ------------- //
		
		assertTrue( MathMatrix44.isEqual( result, expected ) );
	}	

}