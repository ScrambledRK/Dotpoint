package at.dotpoint.datastructure.bytes;

/**
 * describes where and how each byte format data is stored (yet does not store the data itself) and can be used
 * to easily store and access the data some place else. it holds ByteFormat objects and some context information
 * such as the stride where the data can be found in the context of the data structure it is stored in 
 * (e.g. there are several float values before this entry so there is an offset of x * float size bits)
 * 
 * use this in conjunction with a byte repository for maximum thrills n giggls.
 * 
 * @author RK
 */
interface IByteSignature<T:Dynamic>
{
	/**
	 * @param	type identifier associated with the requested ByteFormat
	 * @return	byte storage information for a "value-unit"
	 */
	public function getFormat( type:T ):ByteFormat;
	
	/**
	 * calculates the total number of bytes required to store the signature in respect
	 * to the given number of entries. the size may depend on the internal byte layout
	 * the signature has and might even disregard the given number of entries in case
	 * it is irrelevant.
	 * 
	 * @param	numEntries number of data entries one wants to store
	 * @return  size in bytes required to store all entries
	 */
	public function getSizeTotal( numEntries:Int ):Int;
	
	/**
	 * calculates the byte position of the given entry index and requested "value-unit" type.
	 * this calculation depends a lot on the internal byte layout and byte formats set.
	 * 
	 * @param	index entry index requested (not type of "value-unit" (byte format))
	 * @param	type byte format / value-unit requested. e.g. POSITION
	 * @return	byte position the requested entry + type must be located
	 */
	public function getEntryIndex( index:Int, type:T ):Int;
}