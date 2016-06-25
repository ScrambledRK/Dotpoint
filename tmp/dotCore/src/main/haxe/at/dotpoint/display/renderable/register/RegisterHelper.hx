package haxe.at.dotpoint.display.renderable.register;

import haxe.at.dotpoint.display.renderable.register.type.RegisterFormat;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;
import haxe.at.dotpoint.logger.Log;
import haxe.at.dotpoint.math.vector.Matrix33;
import haxe.at.dotpoint.math.vector.Matrix44;
import haxe.at.dotpoint.math.vector.Vector2;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 * 13.03.15
 * @author RK
 */
#if !macro
@:build( haxe.at.dotpoint.display.renderable.register.macro.MacroRegisterHelper.build("res/main/register.cfg") )
#end
//
class RegisterHelper
{

	/**
	 *
	 * @param	typeID
	 * @return
	 */
	public static function getTypeByID( typeID:String ):Null<RegisterType>
	{
		#if !macro
		if( typeID == RegisterHelper.V_NORMAL.ID )
			return RegisterHelper.V_NORMAL;

		if( typeID == RegisterHelper.V_POSITION.ID )
			return RegisterHelper.V_POSITION;

		if( typeID == RegisterHelper.V_UV_COORDINATES.ID )
			return RegisterHelper.V_UV_COORDINATES;

		if( typeID == RegisterHelper.V_COLOR.ID )
			return RegisterHelper.V_COLOR;

		if( typeID == RegisterHelper.E_MODEL2WORLD_TRANSFORM.ID )
			return RegisterHelper.E_MODEL2WORLD_TRANSFORM;

		if( typeID == RegisterHelper.W_WORLD2CAMERA_TRANSFORM.ID )
			return RegisterHelper.W_WORLD2CAMERA_TRANSFORM;

		if( typeID == RegisterHelper.M_TEXTURE_DIFFUSE.ID )
			return RegisterHelper.M_TEXTURE_DIFFUSE;

		if( typeID == RegisterHelper.V_SIGN.ID )
			return RegisterHelper.V_SIGN;

		if( typeID == RegisterHelper.V_DIRECTION.ID )
			return RegisterHelper.V_DIRECTION;

		if( typeID == RegisterHelper.W_CAMERA_POSITION.ID )
			return RegisterHelper.W_CAMERA_POSITION;
		#end


		Log.warn( "unknown RegisterType.ID: " + typeID + " " + Log.getCallstack( 3, " " ) );

		return null;
	}

	/**
	 *
	 * @param	typeID
	 * @return
	 */
	public static function getTypeByIndex( typeIndex:Int ):Null<RegisterType>
	{
		return null;
	}

	// ************************************************************************ //
	// RegisterFormat:
	// ************************************************************************ //

	/**
	 *
	 * @param	signature
	 * @return
	 */
	public static function getSignatureSize( signature:RegisterSignature ):Int
	{
		var total:Int = 0;

		for( j in 0...signature.numRegisters )
		{
			var register:RegisterType = signature.getRegisterTypeByIndex( j );
			var size:Int = RegisterHelper.getFormatSize( register.format );

			total += size;
		}

		return total;
	}

	/**
	 * used to calculate the size (number of bits) checking the type
	 * e.g.: Float3 = 3; Int = 1; etc
	 *
	 * @param	format
	 * @return
	 */
	public static function getFormatSize( format:RegisterFormat ):Int
	{
		switch( format )
		{
			case RegisterFormat.TINT: 		    return 1;
			case RegisterFormat.TNULL: 	        return 1;
			case RegisterFormat.TBOOL: 	        return 1;
			case RegisterFormat.TFLOAT_1: 	    return 1;
			case RegisterFormat.TFLOAT_2: 	    return 2;
			case RegisterFormat.TFLOAT_3: 	    return 3;
			case RegisterFormat.TFLOAT_4: 	    return 4;
			case RegisterFormat.TMATRIX_33:     return 9;
			case RegisterFormat.TMATRIX_44:     return 16;

			case RegisterFormat.TTexture:
				return 0;

			case RegisterFormat.TArray( type, length ):
				return RegisterHelper.getFormatSize( type ) * length;

			case RegisterFormat.TObject( fields ):
			{
				var current:Int = 0;

				for ( type in fields )
					current += RegisterHelper.getFormatSize( type );

				return current;
			}
		}

		return 0;
	}

	/**
	 *
	 */
	public static function getRegisterFormat( instance:Dynamic ):RegisterFormat
	{
		if( instance == null )              return RegisterFormat.TNULL;

		// ------------------------- //

		if( Std.is( instance, Int ) )       return RegisterFormat.TINT;
		if( Std.is( instance, Bool ) )      return RegisterFormat.TBOOL;
		if( Std.is( instance, Float ) )     return RegisterFormat.TFLOAT_1;
		if( Std.is( instance, Vector2 ) )   return RegisterFormat.TFLOAT_2;
		if( Std.is( instance, Vector3 ) )   return RegisterFormat.TFLOAT_4;
		if( Std.is( instance, Matrix33 ) )  return RegisterFormat.TMATRIX_33;
		if( Std.is( instance, Matrix44 ) )  return RegisterFormat.TMATRIX_44;

		// ------------------------- //

	/*	if( Std.is( instance, Iterable ) || Std.is( instance, Iterator ) )
		{
			var type:RegisterFormat = RegisterFormat.TObject;
			var length:Int = 0;

			if( Std.is( instance, Array ) )
			{
				length = cast( instance, Array<Dynamic> ).length;
			}
			else if( Std.is( instance, Vector ) )
			{
				length = cast( instance, Vector<Dynamic> ).length;
			}
			else
			{
				var iterator:Iterator<Dynamic> = null;

				if( Std.is( instance, Iterable ) )
					iterator = cast( instance, Iterable<Dynamic> ).iterator();

				if( Std.is( instance, Iterable ) )
					iterator = cast( instance, Iterator<Dynamic> );

				for( value in iterator )
					length++
			}

			return RegisterFormat.TARRAY( RegisterFormat.TObject, length );
		}*/

		// ------------------------- //

		throw "getRegisterFormat() -> RegisterFormat.TObject not supported";

		return null;
	}
}
