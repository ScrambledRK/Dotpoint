package at.dotpoint.datastructure.bytes;
import haxe.io.Bytes;

/**
 * ...
 * @author RK
 */
interface IByteCollection<TType:EnumValue,TRepository:IByteRepository<TType,Dynamic>> 
{
	//
	public function hasData( type:TType ):Bool;
	
	/**
	 * store this byte collection with its internal data representation into the given byte repository 
	 * 
	 * @param	repository target to store the internal data of the given type into
	 * @param	type kind of data to store
	 * @param 	index position to write the data to, may need to use internal information and not provided one
	 */
	public function writeBytes( repository:TRepository, type:TType, index:Int = -1 ):Void;
	
	/**
	 * use the given bytes repository data to store its values into this byte collection internal data representation  
	 * 
	 * @param	repository source to read the internal data of the given type from
	 * @param	type kind of data to store
	 * @param 	index position to write the data to, may need to use internal information and not provided one
	 */
	public function readBytes( repository:TRepository, type:TType, index:Int = -1 ):Void;
}