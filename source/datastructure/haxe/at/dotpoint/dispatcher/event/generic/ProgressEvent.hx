package at.dotpoint.dispatcher.event.generic;

//
class ProgressEvent extends Event
{

    @:isVar public static var PROGRESS(default,never):String = "ProgressEvent.progress";

    // ------------------------------ //

    //
    public var current:Float;
    public var total:Float;

	//
	public var label:String;

    // ************************************************************************ //
    // Constructor
    // ************************************************************************ //

    //
    public function new( ?type:String )
    {
        if( type == null )
            type = ProgressEvent.PROGRESS;

		//
        super( type );

        this.current = 0;
        this.total = 0;
    }

    // ************************************************************************ //
    // Methodes
    // ************************************************************************ //

	//
    public function getRatio():Float
    {
        return this.total == 0 ? 0 : (this.current / this.total);
    }

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	override public function toString( ):String
	{
		return "[Event:" + this.type + ";" + this.current + "/" + this.total + "]";
	}
}