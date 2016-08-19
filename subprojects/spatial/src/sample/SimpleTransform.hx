package ;

import haxe.at.dotpoint.spatial.transform.LazyTransform;
import haxe.at.dotpoint.spatial.transform.ITransform;

/**
 * 2016-08-12
 * @author RK
 */
class SimpleTransform
{
    /**
	 *
	 */
	private static var instance:SimpleTransform;

    // ************************************************************************ //
    // Constructor
    // ************************************************************************ //

    //
    static public function main()
    {
        SimpleTransform.instance = new SimpleTransform();
    }

    //
    public function new( )
    {
        this.init();
    }

    // ************************************************************************ //
    // Methods
    // ************************************************************************ //

    /**
	 *
	 */
    private function init():Void
    {
		var transform:ITransform = new LazyTransform();
			transform.position.x = 10;

		trace( transform.getMatrix() );
    }
}
