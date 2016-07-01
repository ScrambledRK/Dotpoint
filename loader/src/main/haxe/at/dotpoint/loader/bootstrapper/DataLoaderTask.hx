package haxe.at.dotpoint.loader.bootstrapper;

import haxe.at.dotpoint.bootstrapper.BootstrapperTask;
import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.DataRequest;
import haxe.at.dotpoint.loader.URLRequest;

/**
 * ...
 * @author RK
 */
@:access(haxe.at.dotpoint.bootstrapper.Bootstrapper)
//
class DataLoaderTask extends BootstrapperTask<Dynamic>
{

	/**
	 *
	 */
	public static var ID:String = "dataRequests";

	/**
	 *
	 */
	private var loader:DataQueueLoader;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?config:Dynamic = null )
	{
		super( config );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	public override function execute():Void
	{
		super.execute();

		// -------------- //

		this.loader = new DataQueueLoader( this.bootstrapper, true );
		this.loader.addListener( StatusEvent.COMPLETE, this.onQueueComplete );
		this.loader.start( this.parseRequests() );
	}

	/**
	 *
	 * @return
	 */
	private function parseRequests():Array<DataRequest>
	{
		var result:Array<DataRequest> 	= new Array<DataRequest>();
		var requests:Array<Dynamic> 	= cast this.config.requests;

		// --------------- //

		for( data in requests )
		{
			var url:String = data.url;

			if( url.charAt(0) == "/" )
				url = this.getBaseURL() + url;

			result.push( new DataRequest( new URLRequest( url ) ) );
		}

		// --------------- //

		return result;
	}

	/**
	 *
	 * @return
	 */
	private function getBaseURL():String
	{
		return this.bootstrapper.request.url.substring( 0, this.bootstrapper.request.url.lastIndexOf( "/" ) );
	}

	/**
	 *
	 */
	private function onQueueComplete( event:Event ):Void
	{
		this.loader.removeListener( StatusEvent.COMPLETE, this.onQueueComplete );
		this.loader = null;

		this.clear();
	}
}