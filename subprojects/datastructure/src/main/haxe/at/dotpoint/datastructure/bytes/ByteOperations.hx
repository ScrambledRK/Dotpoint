package at.dotpoint.datastructure.bytes;
import haxe.ds.Vector;
import haxe.io.Bytes;

/**
 * ...
 * @author RK
 */
class ByteOperations 
{

	//
	inline public static function writeTensor<TType:Dynamic>( data:Bytes, signature:IByteSignature<TType>, 
		index:Int, type:TType, value:ITensor ):Void
	{				
		var format:ByteFormat = signature.getFormat( type );
		var start:Int = signature.getEntryIndex( index, type );
		
		//
		for( i in 0...format.numValues )		
			data.setDouble( start + i * format.sizeValue, value.getByIndex( i ) );	
	}
	
	//
	inline public static function readTensor<TType:Dynamic>( data:Bytes, signature:IByteSignature<TType>, 
		index:Int, type:TType, output:ITensor ):Void
	{
		var format:ByteFormat = signature.getFormat( type );
		var start:Int = signature.getEntryIndex( index, type );
		
		//
		for( i in 0...format.numValues )		
			output.setByIndex( i, data.getDouble( start + i * format.sizeValue ) );	
	}
	
	//
	inline public static function writeInteger<TType:Dynamic>( data:Bytes, signature:IByteSignature<TType>, 
		index:Int, type:TType, value:Vector<Int>, offset:Int = 0 ):Void
	{
		var format:ByteFormat = signature.getFormat( type );
		var start:Int = signature.getEntryIndex( index, type );
		
		//
		for( i in 0...format.numValues )		
			data.setInt32( start + i * format.sizeValue, value[ offset + i ] );	
	}
	
	//
	inline public static function readInteger<TType:Dynamic>( data:Bytes, signature:IByteSignature<TType>, 
		index:Int, type:TType, output:Vector<Int>, offset:Int = 0 ):Void
	{
		var format:ByteFormat = signature.getFormat( type );
		var start:Int = signature.getEntryIndex( index, type );
		
		//
		for( i in 0...format.numValues )		
			output[ offset + i ] = data.getInt32( start + i * format.sizeValue );	
	}
	
}