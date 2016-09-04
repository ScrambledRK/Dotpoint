package at.dotpoint.unit;

import haxe.unit.TestCase;

/**
 * 2016-08-15
 * @author RK
 */
class TestCaseHelper
{

	/**
	 *
	 */
	public static function aTrue( test:TestCase, b:Bool, msg:String = "", ?c : PosInfos ) : Void
	{
		test.currentTest.done = true;

		if (b != true)
		{
			test.currentTest.success = false;
			test.currentTest.error   = "expected true but was false: " + msg;
			test.currentTest.posInfos = c;

			throw test.currentTest;
		}
	}

	/**
	 *
	 */
	public static function aFalse( test:TestCase, b:Bool, msg:String = "", ?c : PosInfos ) : Void
	{
		test.currentTest.done = true;

		if (b == true)
		{
			test.currentTest.success = false;
			test.currentTest.error   = "expected false but was true: " + msg;
			test.currentTest.posInfos = c;

			throw test.currentTest;
		}
	}

	/**
	 *
	 */
	public static function aEquals<T>( test:TestCase, expected:T , actual:T, msg:String = "", ?c : PosInfos ):Void
	{
		test.currentTest.done = true;

		if (actual != expected)
		{
			test.currentTest.success = false;
			test.currentTest.error   = "expected '" + expected + "' but was '" + actual + "': " + msg;
			test.currentTest.posInfos = c;

			throw test.currentTest;
		}
	}
}
