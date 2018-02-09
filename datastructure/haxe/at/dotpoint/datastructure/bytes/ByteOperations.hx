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
	inline public static function writeTensor( data:Bytes, signature:IByteSignature, 
		index:Int, type:Int, value:ITensor ):Void
	{			
		var start:Int 	= signature.getEntryIndex( index, type );		
		var length:Int 	= signature.getNumValues( type );
		var size:Int 	= signature.getSizeValue( type );
		
		//
		for( i in 0...length )		
			data.setDouble( start + i * size, value.getByIndex( i ) );	
	}
	
	//
	inline public static function readTensor( data:Bytes, signature:IByteSignature, 
		index:Int, type:Int, output:ITensor ):Void
	{
		var start:Int 	= signature.getEntryIndex( index, type );		
		var length:Int 	= signature.getNumValues( type );
		var size:Int 	= signature.getSizeValue( type );
		
		//
		for( i in 0...length )		
			output.setByIndex( i, data.getDouble( start + i * size ) );	
	}
	
	//
	inline public static function writeInteger( data:Bytes, signature:IByteSignature, 
		index:Int, type:Int, value:Vector<Int>, offset:Int = 0 ):Void
	{
		var start:Int 	= signature.getEntryIndex( index, type );		
		var length:Int 	= signature.getNumValues( type );
		var size:Int 	= signature.getSizeValue( type );
		
		//
		for( i in 0...length )			
			data.setInt32( start + i * size, value[ offset + i ] );	
	}
	
	//
	inline public static function readInteger( data:Bytes, signature:IByteSignature, 
		index:Int, type:Int, output:Vector<Int>, offset:Int = 0 ):Void
	{
		var start:Int 	= signature.getEntryIndex( index, type );		
		var length:Int 	= signature.getNumValues( type );
		var size:Int 	= signature.getSizeValue( type );
		
		//
		for( i in 0...length )		
			output[ offset + i ] = data.getInt32( start + i * size );	
	}
	
}