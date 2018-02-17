package at.dotpoint.gis.shape.records;

import at.dotpoint.datastructure.bytes.IByteRepresentation;

/**
 * ...
 * @author RK
 */
class ARecordRepresentation implements IByteRepresentation<ShapeRecordRepository> 
{

	/** byte pos in repository */
	public var position:Int;	
	
	public var index:Int;
	public var type:Int;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	//
	public function new( position:Int = -1 ) 
	{
		//
		this.clear( position );
	}
	
	//
	public function clear( position:Int = -1 ):Void
	{
		this.position = position;
		
		this.index = -1;
		this.type = -1;
	}
	
	// ************************************************************************ //
	// IByteRepresentation
	// ************************************************************************ //

	/**
	 * store this byte collection with its internal data representation into the given byte repository 
	 * be horrible careful, you can easily destroy the whole repository!
	 * 
	 * @param	repository target to store the internal data into
	 */
	public function writeBytes( repository:ShapeRecordRepository ):Void
	{		
		throw "no writing allowed";
	}

	/**
	 * use the given bytes repository data to store its values into this byte collection internal data representation  
	 * be horrible careful, you can easily destroy the whole repository!
	 * 
	 * @param	repository source to read the internal data from
	 */
	public function readBytes( repository:ShapeRecordRepository ):Void
	{		
		if( this.position < 0 )
			throw "must know byte position prior to reading from record repository";
		
		//
		this.clear( this.position );
			
		//
		this.index = repository.getIndex( this.position );
		this.type = repository.getType( this.position );
	}
	
	// ************************************************************************ //
	// etc
	// ************************************************************************ //
	
	//
	public function toString():String
	{
		return "[Record:" + this.index + "]";
	}
}