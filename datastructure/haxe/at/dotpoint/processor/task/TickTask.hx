package at.dotpoint.processor.task;

import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.ProgressEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.utils.Delay;
import haxe.Timer;

/**
 *
 */
class TickTask extends ATask
{
	//
	private var time:Float;
	private var step:Int;

	//
	public var onInitialize:Float->Bool;
	public var onExecute:Float->Bool;
	public var onFinalize:Float->Bool;

	//
	public var onProgress:Int->Float->ProgressEvent;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?proxy:IEventDispatcher, ?weight:Float,
						 ?init:Float->Bool, ?exe:Float->Bool, ?final:Float->Bool )
	{
		super( proxy, weight );

		//
		this.step = 0;

		this.onInitialize = init;
		this.onExecute = exe;
		this.onFinalize = final;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	override public function start( ):Void
	{
		super.start( );

		//
		this.setStatus( StatusEvent.STARTED );
		this.tick( );
	}

	//
	override public function stop( ):Void
	{
		super.stop( );

		//
		this.setStatus( StatusEvent.STOPPED );
	}

	//
	private function tick( ):Void
	{
		if( !this.isProcessing )
			return;

		//
		this.progress( this.step, this.time = Timer.stamp( ) );

		//
		if( this.step == 0 )
		{
			while( true )
			{
				if( !this.isProcessing )
					return;

				if( this.initialize( ) )
					break;

				//
				if( Delay.interrupt( this.time, this.tick ) )
					return;
			}

			this.step++;
		}

		//
		if( this.step == 1 )
		{
			while( true )
			{
				if( !this.isProcessing )
					return;

				if( this.execute( ) )
					break;

				//
				if( Delay.interrupt( this.time, this.tick ) )
					return;
			}

			this.step++;
		}

		//
		if( this.step == 2 )
		{
			while( true )
			{
				if( !this.isProcessing )
					return;

				if( this.finalize( ) )
					break;

				//
				if( Delay.interrupt( this.time, this.tick ) )
					return;
			}

			//
			this.setStatus( StatusEvent.COMPLETE );
		}
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function initialize( ):Bool
	{
		if( this.onInitialize == null )
			return true;

		return this.onInitialize( this.time );
	}

	//
	private function execute( ):Bool
	{
		if( this.onExecute == null )
			return true;

		return this.onExecute( this.time );
	}

	//
	private function finalize( ):Bool
	{
		if( this.onFinalize == null )
			return true;

		return this.onFinalize( this.time );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function progress( step:Int, time:Float ):Void
	{
		if( this.onProgress == null )
			return;

		//
		var event:ProgressEvent = this.onProgress( step, time );

		if( event != null )
			this.dispatch( event.type, event );
	}
}
