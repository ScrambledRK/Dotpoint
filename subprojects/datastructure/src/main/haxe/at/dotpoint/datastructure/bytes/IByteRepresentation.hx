package at.dotpoint.datastructure.bytes;

/**
 * ...
 * @author RK
 */
interface IByteRepresentation<TRepository:IByteRepository<Dynamic>>
{
	/**
	 * store this byte collection with its internal data representation into the given byte repository
	 * be horrible careful, you can easily destroy the whole repository!
	 *
	 * @param	repository target to store the internal data into
	 */
	public function writeBytes( repository:TRepository ):Void;

	/**
	 * use the given bytes repository data to store its values into this byte collection internal data representation
	 * be horrible careful, you can easily destroy the whole repository!
	 *
	 * @param	repository source to read the internal data from
	 */
	public function readBytes( repository:TRepository ):Void;
}