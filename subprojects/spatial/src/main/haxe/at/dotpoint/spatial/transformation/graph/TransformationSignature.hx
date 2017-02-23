package at.dotpoint.spatial.transformation.graph;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.spatial.transformation.graph.TransformationType.TransformationTypeHelper;

/**
 * ...
 * @author RK
 */
class TransformationSignature implements IByteSignature<TransformationType> 
{
	//
	public var size(default, null):Int;
	
	//
	public function new()
	{
		this.size = 4;
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	inline public function getFormat( type:TransformationType ):ByteFormat
	{
		return TransformationTypeHelper.getByteFormat( type );
	}
	
	//
	public function getStepSizeType( type:TransformationType ):Int 
	{
		switch( type )
		{
			case TransformationType.TRANSLATION: 	return 7 * 8 + 12 * 8;		// translation in matrix 41-43
			case TransformationType.ROTATION: 	return 0;
			case TransformationType.SCALE: 		return 4 * 8;
			case TransformationType.MATRIX: 		return 7 * 8;
		}
	}
	
	//
	public function getStepSizeEntry( type:TransformationType ):Int 
	{
		return (4 + 3 + 16) * 8;
	}
	
	//
	public function getSizeTotal( numEntries:Int ):Int
	{
		return (4 + 3 + 16) * 8 * numEntries;
	}
	
	//
	public function getEntryIndex( index:Int, type:TransformationType ):Int
	{
		return index * this.getStepSizeEntry( type ) + this.getStepSizeType( type );
	}
}