package at.dotpoint.datastructure.bytes;

import haxe.ds.Vector;
import haxe.io.Bytes;

/**
 * ...
 * @author RK
 */
class ByteRepository<TType:EnumValue,TSignature:IByteSignature<TType>> implements IByteRepository<TType,TSignature>
{

	/** where and how the data is stored */
	public var signature(default, null):TSignature;
	
	/** actual data storage */
	private var data:Bytes;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	/**
	 * 
	 * @param	signature describing the byte layout for each indiviual sub-data
	 * @param	numEntries like array.length, how many entries it should store
	 */
	public function new( signature:TSignature, numEntries:Int ) 
	{
		this.data = Bytes.alloc( signature.getSizeTotal( numEntries ) );
		this.signature = signature;
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function writeTensor( index:Int, type:TType, value:ITensor ):Void
	{		
		var format:ByteFormat = this.signature.getFormat( type );
		var start:Int = this.signature.getEntryIndex( index, type );
		
		//
		for( i in 0...format.numValues )		
			this.data.setDouble( start + i * format.sizeValue, value.getByIndex( i ) );	
	}
	
	//
	public function readTensor( index:Int, type:TType, output:ITensor ):Void
	{
		var format:ByteFormat = this.signature.getFormat( type );
		var start:Int = this.signature.getEntryIndex( index, type );
		
		//
		for( i in 0...format.numValues )		
			output.setByIndex( i, data.getDouble( start + i * format.sizeValue ) );	
	}
	
	//
	public function writeInteger( index:Int, type:TType, value:Vector<Int>, offset:Int = 0 ):Void
	{
		var format:ByteFormat = this.signature.getFormat( type );
		var start:Int = this.signature.getEntryIndex( index, type );
		
		//
		for( i in 0...format.numValues )		
			this.data.setInt32( start + i * format.sizeValue, value[ offset + i ] );	
	}
	
	//
	public function readInteger( index:Int, type:TType, output:Vector<Int>, offset:Int = 0 ):Void
	{
		var format:ByteFormat = this.signature.getFormat( type );
		var start:Int = this.signature.getEntryIndex( index, type );
		
		//
		for( i in 0...format.numValues )		
			output[ offset + i ] = data.getInt32( start + i * format.sizeValue );	
	}
}