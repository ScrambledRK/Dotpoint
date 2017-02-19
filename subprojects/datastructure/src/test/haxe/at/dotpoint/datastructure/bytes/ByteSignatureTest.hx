package at.dotpoint.datastructure.bytes;

import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class ByteSignatureTest extends TestCase 
{

	//
	private function createSignature( layout:ByteLayoutType ):ByteSignature<TestEnum>
	{
		var instance:ByteSignature<TestEnum> = new ByteSignature( 3, layout );
			instance.setFormat( TestEnum.B, new ByteFormat( ByteType.INT, 3 ), 2 );
			instance.setFormat( TestEnum.C, new ByteFormat( ByteType.INT, 2 ), 1 );
		
		return instance;
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function testGetSetFormat():Void
	{
		var instance:ByteSignature<TestEnum> = new ByteSignature( 3 );
			
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
		var instance:ByteSignature<TestEnum> = this.createSignature( ByteLayoutType.BLOCKED );
			
		// ------------------- //
		
		var expected:Int = 8 * ByteFormat.getSize( ByteType.INT );	// blocked only format entry num relevant!
		var result:Int = instance.getSizeTotal( 2 );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
	//
	public function testGetSizeTotalInterleaved():Void
	{
		var instance:ByteSignature<TestEnum> = this.createSignature( ByteLayoutType.INTERLEAVED );
			
		// ------------------- //
		
		var expected:Int = 2 * 5 * ByteFormat.getSize( ByteType.INT );	// interleaved format entry num irrelevant!
		var result:Int = instance.getSizeTotal( 2 );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
	//
	public function testGetStepSizeEntryBlocked():Void
	{
		var instance:ByteSignature<TestEnum> = this.createSignature( ByteLayoutType.BLOCKED );
			
		// ------------------- //
		
		var expected:Int = 2 * ByteFormat.getSize( ByteType.INT );	// already clusterd in a block, so only within a block
		var result:Int = instance.getStepSizeEntry( TestEnum.C );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
	//
	public function testGetStepSizeEntryInterleaved():Void
	{
		var instance:ByteSignature<TestEnum> = this.createSignature( ByteLayoutType.INTERLEAVED );
			
		// ------------------- //
		
		var expected:Int = 5 * ByteFormat.getSize( ByteType.INT );	// jump over entry block (size of all types)
		var result:Int = instance.getStepSizeEntry( TestEnum.C );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
	//
	public function testGetStepSizeTypeBlocked():Void
	{
		var instance:ByteSignature<TestEnum> = this.createSignature( ByteLayoutType.BLOCKED );
			
		// ------------------- //
		
		var expected:Int = 3 * 2 * ByteFormat.getSize( ByteType.INT );	// jump over all previous blocked type entries
		var result:Int = instance.getStepSizeType( TestEnum.C );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
	//
	public function testGetStepSizeTypeInterleaved():Void
	{
		var instance:ByteSignature<TestEnum> = this.createSignature( ByteLayoutType.INTERLEAVED );
			
		// ------------------- //
		
		var expected:Int = 3 * ByteFormat.getSize( ByteType.INT );	// jump within an entry block to the specific type
		var result:Int = instance.getStepSizeType( TestEnum.C );
		
		// ------------------- //
		
		assertEquals( expected, result );
	}
	
}

enum TestEnum
{
	A;
	B;
	C;
}