package at.dotpoint;

import utest.ui.Report;
import at.dotpoint.math.tensor.Vector3Test;
import at.dotpoint.math.tensor.Vector2Test;

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
			runner.addCase( new Vector2Test() );
			runner.addCase( new Vector3Test() );

		Report.create(runner);

		runner.run();
	}

}