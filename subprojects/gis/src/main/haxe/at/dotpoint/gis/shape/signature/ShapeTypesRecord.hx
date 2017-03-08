package at.dotpoint.gis.shape.signature;
import at.dotpoint.gis.shape.signature.records.AShapeRecordSignature;
import at.dotpoint.gis.shape.signature.records.ShapeMultiPatchSignature;
import at.dotpoint.gis.shape.signature.records.ShapeMultiPoint2Signature;
import at.dotpoint.gis.shape.signature.records.ShapeMultiPoint3Signature;
import at.dotpoint.gis.shape.signature.records.ShapeMultiPoint4Signature;
import at.dotpoint.gis.shape.signature.records.ShapeNullSignature;
import at.dotpoint.gis.shape.signature.records.ShapePoint2Signature;
import at.dotpoint.gis.shape.signature.records.ShapePoint3Signature;
import at.dotpoint.gis.shape.signature.records.ShapePoint4Signature;
import at.dotpoint.gis.shape.signature.records.ShapePoly2Signature;
import at.dotpoint.gis.shape.signature.records.ShapePoly3Signature;
import at.dotpoint.gis.shape.signature.records.ShapePoly4Signature;

/**
 * ...
 * @author RK
 */
class ShapeTypesRecord 
{
	public static var NULL(default, never):Int 			= 0;
	
	public static var POINT(default, never):Int 		= 1;
	public static var POLYLINE(default, never):Int 		= 3;
	public static var POLYGON(default, never):Int 		= 5;
	public static var MULTIPOINT(default, never):Int 	= 8;
	
	public static var POINT_Z(default, never):Int 		= 11;
	public static var POLYLINE_Z(default, never):Int 	= 13;
	public static var POLYGON_Z(default, never):Int 	= 15;
	public static var MULTIPOINT_Z(default, never):Int 	= 18;
	
	public static var POINT_M(default, never):Int 		= 21;
	public static var POLYLINE_M(default, never):Int 	= 23;
	public static var POLYGON_M(default, never):Int 	= 25;
	public static var MULTIPOINT_M(default, never):Int 	= 28;
	
	public static var MULTIPATCH(default, never):Int 	= 31;
	
	// --------------------------------------------------- //
	// --------------------------------------------------- //
	
	//
	public static function getTypesSize():Int
	{
		return 32;
	}
	
	//
	public static function createSignature( type:Int ):AShapeRecordSignature
	{
		switch( type )
		{
			case NULL:			return new ShapeNullSignature();
			
			case POINT:			return new ShapePoint2Signature();
			case POLYLINE:		return new ShapePoly2Signature();
			case POLYGON:		return new ShapePoly2Signature();
			case MULTIPOINT:	return new ShapeMultiPoint2Signature();
			
			case POINT_Z:		return new ShapePoint3Signature();
			case POLYLINE_Z:	return new ShapePoly3Signature();
			case POLYGON_Z:		return new ShapePoly3Signature();
			case MULTIPOINT_Z:	return new ShapeMultiPoint3Signature();
			
			case POINT_M:		return new ShapePoint4Signature();
			case POLYLINE_M:	return new ShapePoly4Signature();
			case POLYGON_M:		return new ShapePoly4Signature();
			case MULTIPOINT_M:	return new ShapeMultiPoint4Signature();
			
			case MULTIPATCH:	return new ShapeMultiPatchSignature();
			
			default:
				return null;
		}
	}
}

//
class ShapePartType
{
	public static var TRIANGLE_STRIP(default, never):Int 	= 0;
	public static var TRIANGLE_FAN(default, never):Int 		= 1;
	public static var OUTER_RING(default, never):Int 		= 2;
	public static var INNER_RING(default, never):Int 		= 3;	
	public static var FIRST_RING(default, never):Int 		= 4;	
	public static var LAST_RING(default, never):Int 		= 5;	
}