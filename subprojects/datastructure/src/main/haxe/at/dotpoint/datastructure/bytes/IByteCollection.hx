package at.dotpoint.datastructure.bytes;
import haxe.io.Bytes;

/**
 * ...
 * @author RK
 */
interface IByteCollection<TType:EnumValue> 
{
	/**
	 * store this byte collection with its internal data representation into the given byte buffer 
	 * using the given signature and type in order to figure out how to save it. use the static
	 * ByteOperations methods to help you out.
	 * 
	 * @param	data target to store the internal data of the given type into
	 * @param	signature layout information how to store the data
	 * @param	type kind of data to store
	 */
	public function writeBytes( data:Bytes, signature:IByteSignature<TType>, type:TType ):Void;
	
	/**
	 * use the given bytes data to store its values into this byte collection internal data representation 
	 * using the given signature and type in order to figure out how to save it. use the static
	 * ByteOperations methods to help you out.
	 * 
	 * @param	data source to read the internal data of the given type from
	 * @param	signature layout information how to store the data
	 * @param	type kind of data to store
	 */
	public function readBytes( data:Bytes, signature:IByteSignature<TType>, type:TType ):Void;
}