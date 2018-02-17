package at.dotpoint.processor.task;

import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.ProgressEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;

/**
 *
 */
class AQueueTask extends ATask
{
	//
	private var processor:AsyncProcessor;

	private var time:Float;
	private var step:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?proxy:IEventDispatcher, ?weight:Float )
	{
		super( proxy, weight );

		//
		this.step = 0;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	override public function start( ):Void
	{
		super.start( );

		//
		this.initialize( );
		this.execute( );
	}

	//
	override public function stop( ):Void
	{
		super.stop( );

		//
		if( this.processor == null )
			return;

		if( this.processor.isProcessing )
			this.processor.stop( );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function initialize( ):Void
	{
		this.createProcessor( );
	}

	//
	private function execute( ):Void
	{
		if( this.processor == null || this.processor.tasks == null )
			throw "must initialize processor for task execution";

		this.processor.start( );
	}

	//
	private function finalize( ):Void
	{
		this.removeProcessor( );
	}

	// ************************************************************************ //
	// Processor
	// ************************************************************************ //

	//
	private function createProcessor( ):Void
	{
		if( this.processor != null )
			return;

		this.processor = new AsyncProcessor( this );
		this.processor.addListener( StatusEvent.STARTED, this.onStatus );
		this.processor.addListener( StatusEvent.STOPPED, this.onStatus );
		this.processor.addListener( StatusEvent.COMPLETE, this.onStatus );
		this.processor.addListener( ProgressEvent.PROGRESS, this.onProgress );
		this.processor.addListener( ErrorEvent.ERROR, this.onError );

		if( this.processor.tasks == null )
			this.processor.tasks = new Array<ITask>();
	}

	//
	private function removeProcessor( ):Void
	{
		if( this.processor == null )
			return;

		if( this.processor.isProcessing )
			this.processor.stop( );

		this.processor.removeListener( StatusEvent.STARTED, this.onStatus );
		this.processor.removeListener( StatusEvent.STOPPED, this.onStatus );
		this.processor.removeListener( StatusEvent.COMPLETE, this.onStatus );
		this.processor.removeListener( ProgressEvent.PROGRESS, this.onProgress );
		this.processor.removeListener( ErrorEvent.ERROR, this.onError );
		this.processor = null;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function onStatus( event:StatusEvent ):Void
	{
		switch( event.type )
		{
			case StatusEvent.STOPPED:
				this.removeProcessor();

			case StatusEvent.COMPLETE:
				this.finalize();
		}

		this.setStatus( event.type, true );
	}

	//
	private function onProgress( event:ProgressEvent ):Void
	{
		this.dispatch( event.type, event );
	}

	//
	private function onError( event:ProgressEvent ):Void
	{
		this.dispatch( event.type, event );
	}
}
