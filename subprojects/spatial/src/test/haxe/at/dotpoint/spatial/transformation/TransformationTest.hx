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
import haxe.io.Bytes;
import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class TransformationTest extends TestCase 
{
	
	//
	public function testSetGetTranslation():Void
	{
		var repository:Repository = new Repository( 1 );
		var transform:ITransformation = new Node( 0, repository );
		
		// ------------- //
		
		var input:IVector3 = new Vector3();
			input.x = Math.random();
			input.y = Math.random();
			input.z = Math.random();
		
		var expected:IVector3 = MathVector3.clone( input );
		
		//
		transform.setTranslation( input );
		
		var result:IVector3 = transform.getTranslation();
		
		// ------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetRotation():Void
	{
		var repository:Repository = new Repository( 1 );
		var transform:ITransformation = new Node( 0, repository );
		
		// ------------- //
		
		var input:IQuaternion = new Quaternion( 1, 2, 3, 4 );
		var expected:IQuaternion = MathQuaternion.clone( input );
		
		//
		transform.setRotation( input );
		
		var result:IQuaternion = transform.getRotation();
		
		// ------------- //
		
		assertTrue( MathQuaternion.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetScale():Void
	{
		var repository:Repository = new Repository( 1 );
		var transform:ITransformation = new Node( 0, repository );
		
		// ------------- //
		
		var input:IVector3 = new Vector3( 1, 2, 3, 4 );
		var expected:IVector3 = MathVector3.clone( input );
		
		//
		transform.setScaling( input );
		
		var result:IVector3 = transform.getScaling();
		
		// ------------- //
		
		assertTrue( MathVector3.isEqual( result, expected ) );
	}
	
	//
	public function testSetGetMatrix():Void
	{
		var repository:Repository = new Repository( 1 );
		var transform:ITransformation = new Node( 0, repository );
		
		// ------------- //
		
		var input:IMatrix44 = new Matrix44();
			
		for( i in 0...16 )
			input.setByIndex( i, i );
			
		//input.m11 = Math.random();
		//input.m22 = Math.random();
		//input.m33 = Math.random();
		
		var expected:IMatrix44 = MathMatrix44.clone( input );
		
		//
		transform.setMatrix( input );
		
		var result:IMatrix44 = transform.getMatrix();
		
		// ------------- //
		
		assertTrue( MathMatrix44.isEqual( result, expected ) );
	}
	
}