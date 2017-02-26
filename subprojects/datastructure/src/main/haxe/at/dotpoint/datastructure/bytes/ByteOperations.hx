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
		var start:Int 	= signature.getEntryIndex( index, type );		
		var length:Int 	= signature.getNumValues( type );
		var size:Int 	= signature.getSizeValue( type );
		
		//
		for( i in 0...length )		
			data.setDouble( start + i * size, value.getByIndex( i ) );	
	}
	
	//
	inline public static function readTensor<TType:Dynamic>( data:Bytes, signature:IByteSignature<TType>, 
		index:Int, type:TType, output:ITensor ):Void
	{
		var start:Int 	= signature.getEntryIndex( index, type );		
		var length:Int 	= signature.getNumValues( type );
		var size:Int 	= signature.getSizeValue( type );
		
		//
		for( i in 0...length )		
			output.setByIndex( i, data.getDouble( start + i * size ) );	
	}
	
	//
	inline public static function writeInteger<TType:Dynamic>( data:Bytes, signature:IByteSignature<TType>, 
		index:Int, type:TType, value:Vector<Int>, offset:Int = 0 ):Void
	{
		var start:Int 	= signature.getEntryIndex( index, type );		
		var length:Int 	= signature.getNumValues( type );
		var size:Int 	= signature.getSizeValue( type );
		
		//
		for( i in 0...length )			
			data.setInt32( start + i * size, value[ offset + i ] );	
	}
	
	//
	inline public static function readInteger<TType:Dynamic>( data:Bytes, signature:IByteSignature<TType>, 
		index:Int, type:TType, output:Vector<Int>, offset:Int = 0 ):Void
	{
		var start:Int 	= signature.getEntryIndex( index, type );		
		var length:Int 	= signature.getNumValues( type );
		var size:Int 	= signature.getSizeValue( type );
		
		//
		for( i in 0...length )		
			output[ offset + i ] = data.getInt32( start + i * size );	
	}
	
}