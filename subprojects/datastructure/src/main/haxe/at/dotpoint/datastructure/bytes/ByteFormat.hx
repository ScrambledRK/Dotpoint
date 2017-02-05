package at.dotpoint.datastructure.bytes;
import haxe.io.Bytes;

/**
 * @author RK
 */
class ByteFormat 
{	
	public var type(default,null):ByteType;
	public var length(default,null):Int;
	public var stride(default, null):Int;	
	public var size(default,null):Int;
	
	public function new( type:ByteType, length:Int, stride:Int )
	{
		this.type = type;
		this.length = length;
		this.stride = stride;
		this.size = this.getSize();
	}	
	
	private function getSize():Int
	{
		switch( this.type )
		{
			case ByteType.INT:		return 4;
			case ByteType.FLOAT:	return 8;
		}
	}
}