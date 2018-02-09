package at.dotpoint.datastructure.bytes;

import haxe.ds.Vector;
import haxe.io.Bytes;

/**
 * ...
 * @author RK
 */
class ByteRepository<TSignature:IByteSignature> implements IByteRepository<TSignature>
{

	/** where and how the data is stored */
	public var signature(default, null):TSignature;
	
	/** actual data storage */
	public var data(default, null):Bytes;
	
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
	public function writeTensor( index:Int, type:Int, value:ITensor ):Void
	{		
		ByteOperations.writeTensor( this.data, this.signature, index, type, value );
	}
	
	//
	public function readTensor( index:Int, type:Int, output:ITensor ):Void
	{
		ByteOperations.readTensor( this.data, this.signature, index, type, output );
	}
	
	//
	public function writeInteger( index:Int, type:Int, value:Vector<Int>, offset:Int = 0 ):Void
	{
		ByteOperations.writeInteger( this.data, this.signature, index, type, value, offset );
	}
	
	//
	public function readInteger( index:Int, type:Int, output:Vector<Int>, offset:Int = 0 ):Void
	{
		ByteOperations.readInteger( this.data, this.signature, index, type, output, offset );
	}
}