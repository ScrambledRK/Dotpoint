package at.dotpoint.datastructure.bytes;

import haxe.ds.Vector;
import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class ByteSignatureTest extends TestCase 
{

	//
	private function createSignature( layout:ByteLayoutType ):ByteSignature
	{
		var instance:ByteSignature = new ByteSignature( 3, layout );
			instance.setFormat( TestEnum.B, new ByteFormat( ByteType.INT, 3 ), 2 );
			instance.setFormat( TestEnum.C, new ByteFormat( ByteType.INT, 2 ), 1 );
		
		return instance;
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function testGetSetFormat():Void
	{
		var instance:ByteSignature = this.createSignature( ByteLayoutType.BLOCKED );
			
		// ------------------- //
		
		var input:ByteFormat = new ByteFormat( ByteType.INT, 3 );
		var expected = input;
		
		instance.setFormat( TestEnum.B, input );		
		var result:ByteFormat = instance.getFormat( TestEnum.B );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
	//
	public function testGetSizeTotalBlocked():Void
	{
		var instance:ByteSignature = this.createSignature( ByteLayoutType.BLOCKED );
			
		// ------------------- //
		
		var expected:Int = 8 * ByteFormat.getSize( ByteType.INT );	// blocked only format entry num relevant!
		var result:Int = instance.getSizeTotal( 2 );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
	//
	public function testGetSizeTotalInterleaved():Void
	{
		var instance:ByteSignature = this.createSignature( ByteLayoutType.INTERLEAVED );
			
		// ------------------- //
		
		var expected:Int = 2 * 5 * ByteFormat.getSize( ByteType.INT );	// interleaved format entry num irrelevant!
		var result:Int = instance.getSizeTotal( 2 );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
	
	
}

class TestEnum
{
	public static var A:Int = 0;
	public static var B:Int = 1;
	public static var C:Int = 2;
}