package at.dotpoint.datastructure.bytes;

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
		var start:Int = index * this.signature.getStepSizeEntry( type ) + this.signature.getStepSizeType( type );
		
		//
		for( i in 0...format.numValues )		
			this.data.setDouble( start + i * format.sizeValue, value.getByIndex( i ) );	
	}
	
	//
	public function readTensor( index:Int, type:TType, output:ITensor ):Void
	{
		var format:ByteFormat = this.signature.getFormat( type );
		var start:Int = index * this.signature.getStepSizeEntry( type ) + this.signature.getStepSizeType( type );
		
		//
		for( i in 0...format.numValues )		
			output.setByIndex( i, data.getDouble( start + i * format.sizeValue ) );	
	}
}