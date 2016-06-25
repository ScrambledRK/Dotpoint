package haxe.at.dotpoint.loader;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.generic.ErrorEvent;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;
import haxe.at.dotpoint.loader.event.DataLoaderEvent;
import haxe.at.dotpoint.loader.processor.ADataProcessor.ABasicDataProcessor;
import haxe.at.dotpoint.loader.processor.IDataProcessor.IBasicDataProcessor;

/**
 * ...
 * @author RK
 */
class DataQueueLoader extends ABasicDataProcessor implements IBasicDataProcessor<Iterable<DataRequest>>
{

	private var iterator:Iterator<DataRequest>;
	private var current:DataRequest;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?proxy:IEventDispatcher, ?isEmptyDelegator:Bool = false  )
	{
		super( proxy, isEmptyDelegator );
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	list
	 */
	public function start( list:Iterable<DataRequest> ):Void
	{
		this.iterator = list.iterator();

		this.next();

		this.setStatus( StatusEvent.STARTED );
	}

	/**
	 *
	 * @param	event
	 */
	private function next():Void
	{
		this.closeCurrentRequest();

		// --------------- //

		if( this.iterator.hasNext() )
		{
			this.current = this.iterator.next();
			this.addRequestListener( this.current );

			this.current.load();

			this.dispatchRequestEvent( DataLoaderEvent.ITEM_STARTED );
		}
		else
		{
			this.onComplete(null);
		}
	}

	// --------------------------------------------- //
	// --------------------------------------------- //

	/**
	 * shut down anything and get rid of tangling references
	 */
	override private function close():Void
	{
		this.closeCurrentRequest();
		this.iterator = null;
	}

	/**
	 *
	 */
	private function closeCurrentRequest():Void
	{
		if( this.current != null )
		{
			if( this.current.isProcessing )
				this.current.stop();

			this.removeRequestListener( this.current );
			this.current == null;
		}
	}

	// ************************************************************************ //
	// Events
	// ************************************************************************ //

	/**
	 *
	 * @param	request
	 */
	private function addRequestListener( request:DataRequest ):Void
	{
		request.addListener( StatusEvent.COMPLETE, 	this.onRequestComplete );
		request.addListener( StatusEvent.STOPPED, 	this.onRequestError );
		request.addListener( ErrorEvent.ERROR, 		this.onRequestError );
	}

	/**
	 *
	 * @param	request
	 */
	private function removeRequestListener( request:DataRequest ):Void
	{
		request.removeListener( StatusEvent.COMPLETE, 	this.onRequestComplete );
		request.removeListener( StatusEvent.STOPPED, 	this.onRequestError );
		request.removeListener( ErrorEvent.ERROR, 		this.onRequestError );
	}

	/**
	 *
	 * @param	type
	 */
	private function dispatchRequestEvent( type:String ):Void
	{
		if( this.hasListener( type ) )
		{
			var devent:DataLoaderEvent = new DataLoaderEvent( type );
				devent.request = this.current;

			this.dispatch( devent );
		}
	}

	// --------------------------------------------- //
	// --------------------------------------------- //

	/**
	 *
	 */
	private function onRequestComplete( event:Event ):Void
	{
		this.dispatchRequestEvent( DataLoaderEvent.ITEM_COMPLETE );
		this.next();
	}

	/**
	 *
	 */
	private function onRequestError( event:Event ):Void
	{
		if( this.hasListener( event.type ) )
			this.dispatch( event );

		if( this.isProcessing )
			this.stop();
	}
}