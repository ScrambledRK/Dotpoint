package at.dotpoint.spatial.transformation.local;

import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.spatial.transformation.local.TransformationType;

/**
 * ...
 * @author RK
 */
class TransformationSignature implements IByteSignature 
{
	
	//
	public function new()
	{
		//;
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	/**
	 * @param	type identifier associated with the requested ByteFormat
	 * @return 	number of components the byte format consists of
	 */
	public function getNumValues( type:Int ):Int
	{
		return TransformationType.getByteFormat( type ).numValues;
	}
	
	/**
	 * @param	type identifier associated with the requested ByteFormat
	 * @return	size in bytes of a single component of the byte format
	 */	
	public function getSizeValue( type:Int ):Int
	{
		return TransformationType.getByteFormat( type ).sizeValue;
	}	
	
	/**
	 * calculates the total number of bytes required to store the signature in respect
	 * to the given number of entries. the size may depend on the internal byte layout
	 * the signature has and might even disregard the given number of entries in case
	 * it is irrelevant.
	 * 
	 * @param	numEntries number of data entries one wants to store
	 * @return  size in bytes required to store all entries
	 */
	public function getSizeTotal( numEntries:Int ):Int
	{
		return (4 + 3 + 16) * 8 * numEntries;
	}
	
	/**
	 * calculates the byte position of the given entry index and requested "value-unit" type.
	 * this calculation depends a lot on the internal byte layout and byte formats set.
	 * 
	 * @param	index entry index requested (not type of "value-unit" (byte format))
	 * @param	type byte format / value-unit requested. e.g. POSITION
	 * @return	byte position the requested entry + type must be located
	 */
	public function getEntryIndex( index:Int, type:Int ):Int
	{
		return index * this.getStepSizeEntry( type ) + this.getStepSizeType( type );
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	private function getStepSizeType( type:Int ):Int 
	{
		switch( type )
		{
			case TransformationType.TRANSLATION: 	return 7 * 8 + 12 * 8;		// translation in matrix 41-43
			case TransformationType.ROTATION: 		return 0;
			case TransformationType.SCALE: 			return 4 * 8;
			case TransformationType.MATRIX: 		return 7 * 8;
		}
		
		return -1;
	}
	
	//
	private function getStepSizeEntry( type:Int ):Int 
	{
		return (4 + 3 + 16) * 8;
	}
}