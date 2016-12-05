package at.dotpoint.spatial.transform;

import at.dotpoint.math.MathUtil;
import at.dotpoint.math.geom.Space;
import at.dotpoint.math.vector.IMatrix44;
import at.dotpoint.math.vector.Matrix44;
import at.dotpoint.math.vector.Quaternion;
import at.dotpoint.math.vector.Vector3;

using at.dotpoint.unit.TestCaseHelper;

/**
 * 2016-08-12
 * @author RK
 */
class ATransformTest extends haxe.unit.TestCase
{

	//
	private var transform:ITransform;

	// ************************************************************************ //
	// Setup
	// ************************************************************************ //

	//
	public function new()
	{
		super();
	}


	//
	override public function setup()
	{
		throw "must override setup() and instantiate a new transform object to test";
	}

	//
	override public function tearDown()
	{
		this.transform.clearListeners();
		this.transform = null;
	}

	// ************************************************************************ //
	// Position
	// ************************************************************************ //

	@:isVar private var positionX(default,never):Float = 20;
	@:isVar private var positionY(default,never):Float = 30;
	@:isVar private var positionZ(default,never):Float = 70;

	//
	private function setPosition():Void
	{
		transform.position.x = this.positionX;
		transform.position.y = this.positionY;
		transform.position.z = this.positionZ;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

    /**
	 *
	 */
    private function testPositionToComponent():Void
    {
		this.setPosition();

		aEquals( this.positionX, transform.position.x );
		aEquals( this.positionY, transform.position.y );
		aEquals( this.positionZ, transform.position.z );
    }

	/**
	 *
	 */
	private function testPositionToMatrix():Void
	{
		this.setPosition();

		// ------------------- //

		var expected:Matrix44 = new Matrix44();
			expected.m41 = this.positionX;
			expected.m42 = this.positionY;
			expected.m43 = this.positionZ;

		// ------------------- //

		var local:IMatrix44 = transform.getMatrix( Space.LOCAL );
		var world:IMatrix44 = transform.getMatrix( Space.WORLD );

		this.aMatrix( expected, local, world );
	}

	/**
	 *
	 */
	private function testPositionHasRotation():Void
	{
		this.setPosition();

		// ------------------- //

		var local:IMatrix44 = transform.getMatrix( Space.LOCAL );
		var world:IMatrix44 = transform.getMatrix( Space.WORLD );

		this.aRotation( false, local, world );
	}

	/**
	 *
	 */
	private function testPositionHasScaling():Void
	{
		this.setPosition();

		// ------------------- //

		var local:IMatrix44 = transform.getMatrix( Space.LOCAL );
		var world:IMatrix44 = transform.getMatrix( Space.WORLD );

		this.aScaling( false, local, world );
	}

	// ************************************************************************ //
	// Scaling
	// ************************************************************************ //

	@:isVar private var scaleX(default,never):Float = 2;
	@:isVar private var scaleY(default,never):Float = 0.5;
	@:isVar private var scaleZ(default,never):Float = 1;

	//
	private function setScale():Void
	{
		transform.scale.x = this.scaleX;
		transform.scale.y = this.scaleY;
		transform.scale.z = this.scaleZ;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

    /**
	 *
	 */
    private function testScaleToComponent():Void
    {
		this.setScale();

		aEquals( this.scaleX, transform.scale.x );
		aEquals( this.scaleY, transform.scale.y );
		aEquals( this.scaleZ, transform.scale.z );
    }

	/**
	 *
	 */
	private function testScaleToMatrix():Void
	{
		this.setScale();

		// ------------------- //

		var expected:Matrix44 = new Matrix44();
			expected.m11 = this.scaleX;
			expected.m22 = this.scaleY;
			expected.m33 = this.scaleZ;

		// ------------------- //

		var local:IMatrix44 = transform.getMatrix( Space.LOCAL );
		var world:IMatrix44 = transform.getMatrix( Space.WORLD );

		this.aMatrix( expected, local, world );
	}

	/**
	 *
	 */
	private function testScaleHasRotation():Void
	{
		this.setScale();

		// ------------------- //

		var local:IMatrix44 = transform.getMatrix( Space.LOCAL );
		var world:IMatrix44 = transform.getMatrix( Space.WORLD );

		this.aRotation( false, local, world );
	}

	/**
	 *
	 */
	private function testScaleHasScaling():Void
	{
		this.setScale();

		// ------------------- //

		var local:IMatrix44 = transform.getMatrix( Space.LOCAL );
		var world:IMatrix44 = transform.getMatrix( Space.WORLD );

		this.aScaling( true, local, world );
	}

	/**
	 *
	 */
	private function testScaleHasTranslation():Void
	{
		this.setScale();

		// ------------------- //

		aEquals( 0.0, transform.position.x );
		aEquals( 0.0, transform.position.y );
		aEquals( 0.0, transform.position.z );
	}

	// ************************************************************************ //
	// Rotation
	// ************************************************************************ //

	@:isVar private var rotationX(default,never):Float = -0.5;
	@:isVar private var rotationY(default,never):Float = -0.5;
	@:isVar private var rotationZ(default,never):Float = -0.5;
	@:isVar private var rotationW(default,never):Float =  0.5;

	//
	private function setRotation():Void
	{
		transform.rotation.x = this.rotationX;		//var axis:Vector3 = new Vector3( -0.5774, -0.5774, -0.5774 );
		transform.rotation.y = this.rotationY;		//var radian:Float = 120.0 * MathUtil.DEG_RAD;
		transform.rotation.z = this.rotationZ;
		transform.rotation.w = this.rotationW;		//Quaternion.setAxisAngle( axis, radian, transform.rotation );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

   /**
	 *
	 */
    private function testRotationToComponent():Void
    {
		this.setRotation();

		// ------------------- //

		var expected:Quaternion = new Quaternion( this.rotationX, this.rotationY, this.rotationZ, this.rotationW );
			expected.normalize();

		// ------------------- //

		aTrue( MathUtil.isEqual( expected.x, transform.rotation.x ) );
		aTrue( MathUtil.isEqual( expected.y, transform.rotation.y ) );
		aTrue( MathUtil.isEqual( expected.z, transform.rotation.z ) );
		aTrue( MathUtil.isEqual( expected.w, transform.rotation.w ) );
    }

	/**
	 *
	 */
	private function testRotationToMatrix():Void
	{
		this.setRotation();

		// ------------------- //

		var expected:Matrix44 = new Matrix44();
			expected.setArray( [  	0, 1, 0, 0,
									0, 0, 1, 0,
									1, 0, 0, 0,
									0, 0, 0, 1 ] );

		// ------------------- //

		var local:IMatrix44 = transform.getMatrix( Space.LOCAL );
		var world:IMatrix44 = transform.getMatrix( Space.WORLD );

		this.aMatrix( expected, local, world );
	}

	/**
	 *
	 */
	private function testRotationHasRotation():Void
	{
		this.setRotation();

		// ------------------- //

		var local:IMatrix44 = transform.getMatrix( Space.LOCAL );
		var world:IMatrix44 = transform.getMatrix( Space.WORLD );

		this.aRotation( true, local, world );
	}

	/**
	 *
	 */
	private function testRotationHasScaling():Void
	{
		this.setRotation();

		// ------------------- //

		var local:IMatrix44 = transform.getMatrix( Space.LOCAL );
		var world:IMatrix44 = transform.getMatrix( Space.WORLD );

		this.aScaling( false, local, world );
	}

	/**
	 *
	 */
	private function testRotationHasTranslation():Void
	{
		this.setRotation();

		// ------------------- //

		aEquals( 0.0, transform.position.x );
		aEquals( 0.0, transform.position.y );
		aEquals( 0.0, transform.position.z );
	}

	// ************************************************************************ //
	// Matrix
	// ************************************************************************ //

	//
	private function setMatrix():Void
	{
		var axis:Vector3 = new Vector3( -0.5774, -0.5774, -0.5774 );
		var radian:Float = 120.0 * MathUtil.DEG_RAD;

		Quaternion.setAxisAngle( axis, radian, transform.rotation );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	/**
	 *
	 */
	private function testMatrix():Void
	{
		var expected_q:Quaternion = new Quaternion( -0.5, -0.5, -0.5, 0.5 );
			expected_q.normalize();

		var expected_m:Matrix44 = new Matrix44();
			expected_m.setArray( [  0, 0.5, 0, 40,
									0, 0, 1, 15,
									2, 0, 0, 70,
									0, 0, 0, 1 ] );

		transform.setMatrix( new Matrix44(expected_m), Space.LOCAL );

		// ------------------- //

		var local:IMatrix44 = transform.getMatrix( Space.LOCAL );
		var world:IMatrix44 = transform.getMatrix( Space.WORLD );

		this.aMatrix( expected_m, local, world );
		this.aRotation( true, local, world );
		this.aScaling(  true, local, world );

		aTrue( MathUtil.isEqual( 40, transform.position.x ) );
		aTrue( MathUtil.isEqual( 15, transform.position.y ) );
		aTrue( MathUtil.isEqual( 70, transform.position.z ) );

		aTrue( MathUtil.isEqual( 2,   transform.scale.x ) );
		aTrue( MathUtil.isEqual( 0.5, transform.scale.y ) );
		aTrue( MathUtil.isEqual( 1,   transform.scale.z ) );

		aTrue( MathUtil.isEqual( expected_q.x, transform.rotation.x ) );
		aTrue( MathUtil.isEqual( expected_q.y, transform.rotation.y ) );
		aTrue( MathUtil.isEqual( expected_q.z, transform.rotation.z ) );
		aTrue( MathUtil.isEqual( expected_q.w, transform.rotation.w ) );
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //

	/**
	 *
	 */
	private function aMatrix( expected:IMatrix44, local:IMatrix44, world:IMatrix44 ):Void
	{
		aTrue( Matrix44.isEqual( local, world ), "local matrix not equal world matrix:\n" + local + "\n" + world );
		aTrue( Matrix44.isEqual( local, expected ), "unexpected transformation matrix:\n" + local );
	}

	/**
	 *
	 */
	private function aRotation( expected:Bool, local:IMatrix44, world:IMatrix44 ):Void
	{
		if( expected )
		{
			aTrue( transform.hasRotation( Space.LOCAL ), "transform has no local rotation:\n" + local );
			aTrue( transform.hasRotation( Space.WORLD ), "transform has no world rotation:\n" + world );
		}
		else
		{
			aFalse( transform.hasRotation( Space.LOCAL ), "transform has local rotation:\n" + local );
			aFalse( transform.hasRotation( Space.WORLD ), "transform has world rotation:\n" + world );
		}
	}

	/**
	 *
	 */
	private function aScaling( expected:Bool, local:IMatrix44, world:IMatrix44 ):Void
	{
		if( expected )
		{
			aTrue( transform.hasScaling( Space.LOCAL ), "transform has no local scaling:\n" + local );
			aTrue( transform.hasScaling( Space.WORLD ), "transform has no world scaling:\n" + world );
		}
		else
		{
			aFalse( transform.hasScaling( Space.LOCAL ), "transform has local scaling:\n" + local );
			aFalse( transform.hasScaling( Space.WORLD ), "transform has world scaling:\n" + world );
		}
	}
}
