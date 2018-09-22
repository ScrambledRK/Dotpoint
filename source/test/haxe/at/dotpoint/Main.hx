package at.dotpoint;

import utest.ui.Report;

/**
 * ...
 * @author RK
 */
class Main {

	/**
	 * 
	 */
	static function main()
	{
		var runner = new utest.Runner();
		//	runner.addCase( new MathTest() );

		Report.create(runner);

		runner.run();
	}

}