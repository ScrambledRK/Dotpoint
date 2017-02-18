package at.dotpoint.datastructure.bytes;

/**
 * @author RK
 */
interface IByteSignature<T:EnumValue>
{
	//
	public function getFormat( type:T ):ByteFormat;

	//
	public function getStride( type:T ):Int;	
	
	//
	public function getSizeTotal():Int;
}