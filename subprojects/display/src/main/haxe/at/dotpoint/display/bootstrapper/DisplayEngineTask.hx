package haxe.at.dotpoint.display.bootstrapper;

import haxe.at.dotpoint.bootstrapper.BootstrapperTask;
import haxe.at.dotpoint.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.display.IDisplayEngine;

/**
 * ...
 * @author RK
 */
class DisplayEngineTask extends BootstrapperTask<Dynamic>
{

	/**
	 *
	 */
	@:isVar public static var ID(default,never):String = "displayEngine";

	/**
	 *
	 */
	public var displayEngine:IDisplayEngine;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?config:Dynamic = null, ?displayEngine:IDisplayEngine )
	{
		super( DisplayEngineTask.ID, config );

		this.displayEngine = displayEngine;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	override public function execute():Void
	{
		super.execute();

		if( this.displayEngine == null )
			throw "must set IDisplayEngine";

		// -------------------------- //

		if( this.config != null )
		{
			this.displayEngine.initialize( this.onComplete );
		}
	}

	/**
	 *
	 * @param	event
	 */
	private function onComplete( event:StatusEvent ):Void
	{
		this.clear();
	}

}