package at.dotpoint.datastructure.bytes;

/**
 * ...
 * @author RK
 */
class ByteHeader 
{
	public var start(default, default):Int;
	public var length(default, default):Int;
	
	//
	public function new( start:Int, length:Int ) 
	{
		this.start = start;
		this.length = length;
	}
	
}