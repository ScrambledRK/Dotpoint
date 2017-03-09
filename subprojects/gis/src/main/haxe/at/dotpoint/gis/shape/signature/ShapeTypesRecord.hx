package at.dotpoint.gis.shape.signature;
import at.dotpoint.gis.shape.signature.records.AShapeRecordSignature;
import at.dotpoint.gis.shape.signature.records.ComponentsMultiPatch;
import at.dotpoint.gis.shape.signature.records.ComponentsMultiPoint;
import at.dotpoint.gis.shape.signature.records.ComponentsPoly;
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
			
			case POINT_M:		return new ShapePoint3Signature();
			case POLYLINE_M:	return new ShapePoly3Signature();
			case POLYGON_M:		return new ShapePoly3Signature();
			case MULTIPOINT_M:	return new ShapeMultiPoint3Signature();
			
			case POINT_Z:		return new ShapePoint4Signature();
			case POLYLINE_Z:	return new ShapePoly4Signature();
			case POLYGON_Z:		return new ShapePoly4Signature();
			case MULTIPOINT_Z:	return new ShapeMultiPoint4Signature();
			
			case MULTIPATCH:	return new ShapeMultiPatchSignature();
			
			default:
				return null;
		}
	}
	
	//
	public static function isPoint( type:Int ):Bool
	{
		switch( type )
		{
			case 	ShapeTypesRecord.NULL, 
					ShapeTypesRecord.POINT, 
					ShapeTypesRecord.POINT_M, 
					ShapeTypesRecord.POINT_Z:
			{							
				return true;
			}			
		}
		
		return false;
	}
	
	//
	public static function is3D( type:Int ):Bool
	{
		switch( type )
		{			
			case 	POINT_Z, POLYLINE_Z, POLYGON_Z, MULTIPOINT_Z,					
					POINT_M, POLYLINE_M, POLYGON_M, MULTIPOINT_M,					
					MULTIPATCH:
			{							
				return true;
			}
		}
		
		return false;
	}
	
	//
	public static function is4D( type:Int ):Bool
	{
		switch( type )
		{			
			case 	POINT_Z, POLYLINE_Z, POLYGON_Z, MULTIPOINT_Z,					
					MULTIPATCH:
			{							
				return true;
			}
		}
		
		return false;
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

//
class ShapeComponentType
{
	public static var BOX(default, never):Int 			= 0;
	public static var NUM_PARTS(default, never):Int 	= 1;
	public static var NUM_POINTS(default, never):Int 	= 2;
	public static var PARTS(default, never):Int 		= 3;	
	public static var PART_TYPES(default, never):Int 	= 4;	
	public static var POINTS(default, never):Int 		= 5;
	public static var Z_RANGE(default, never):Int 		= 6;
	public static var Z_ARRAY(default, never):Int 		= 7;
	public static var M_RANGE(default, never):Int 		= 8;
	public static var M_ARRAY(default, never):Int 		= 9;	
	
	//
	public static function getComponentType( shape:Int, component:Int ):Int
	{
		switch( shape )
		{
			//
			case 	ShapeTypesRecord.NULL, 
					ShapeTypesRecord.POINT, 
					ShapeTypesRecord.POINT_M, 
					ShapeTypesRecord.POINT_Z:
			{							
				return -1;
			}
			
			//
			case 	ShapeTypesRecord.POLYLINE, 
					ShapeTypesRecord.POLYLINE_Z, 
					ShapeTypesRecord.POLYLINE_M, 
					ShapeTypesRecord.POLYGON, 
					ShapeTypesRecord.POLYGON_Z, 
					ShapeTypesRecord.POLYGON_M:
			{							
				switch( component )
				{
					case BOX:			return ComponentsPoly.BOX;
					case M_ARRAY:		return ComponentsPoly.M_ARRAY;
					case M_RANGE:		return ComponentsPoly.M_RANGE;
					case NUM_PARTS:		return ComponentsPoly.NUM_PARTS;
					case NUM_POINTS:	return ComponentsPoly.NUM_POINTS;
					case PARTS:			return ComponentsPoly.PARTS;
					case POINTS:		return ComponentsPoly.POINTS;
					case Z_ARRAY:		return ComponentsPoly.Z_ARRAY;
					case Z_RANGE:		return ComponentsPoly.Z_RANGE;
				}
			}
			
			//
			case 	ShapeTypesRecord.MULTIPOINT, 
					ShapeTypesRecord.MULTIPOINT_Z, 
					ShapeTypesRecord.MULTIPOINT_M:
			{							
				switch( component )
				{
					case BOX:			return ComponentsMultiPoint.BOX;
					case M_ARRAY:		return ComponentsMultiPoint.M_ARRAY;
					case M_RANGE:		return ComponentsMultiPoint.M_RANGE;
					case NUM_POINTS:	return ComponentsMultiPoint.NUM_POINTS;
					case POINTS:		return ComponentsMultiPoint.POINTS;
					case Z_ARRAY:		return ComponentsMultiPoint.Z_ARRAY;
					case Z_RANGE:		return ComponentsMultiPoint.Z_RANGE;
				}
			}
			
			//
			case ShapeTypesRecord.MULTIPATCH:
			{							
				switch( component )
				{
					case BOX:			return ComponentsMultiPatch.BOX;
					case M_ARRAY:		return ComponentsMultiPatch.M_ARRAY;
					case M_RANGE:		return ComponentsMultiPatch.M_RANGE;
					case NUM_PARTS:		return ComponentsMultiPatch.NUM_PARTS;
					case NUM_POINTS:	return ComponentsMultiPatch.NUM_POINTS;
					case PARTS:			return ComponentsMultiPatch.PARTS;
					case PART_TYPES:	return ComponentsMultiPatch.PART_TYPES;
					case POINTS:		return ComponentsMultiPatch.POINTS;
					case Z_ARRAY:		return ComponentsMultiPatch.Z_ARRAY;
					case Z_RANGE:		return ComponentsMultiPatch.Z_RANGE;
				}
			}
		}
		
		return -1;
	}
}