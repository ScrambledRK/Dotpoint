package at.dotpoint.template;

import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.ProgressEvent;
import at.dotpoint.processor.AsyncProcessor;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.loader.ADataProcess;
import haxe.Template;

//
class TemplateParser extends ADataProcess<String, String>
{

	//
	private var context:Dynamic;
	private var macros:Dynamic;

	//
	private var children:Array<TemplateRequest>;
	private var loader:AsyncProcessor;

	/**
	 *
	 */
	public function new( context:Dynamic, ?macros:Dynamic, ?proxy:IEventDispatcher )
	{
		super( proxy );

		this.context = context;
		this.macros = macros;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function addChild( template:TemplateRequest ):Void
	{
		if( this.isProcessing )
			throw "cannot alter processing parser";

		if( this.children == null )
			this.children = new Array<TemplateRequest>();

		this.children.push( template );
	}

	//
	public function setContext( context:Dynamic ):Void
	{
		if( this.isProcessing )
			throw "cannot alter processing parser";

		this.context = context;
	}

	//
	public function setMacros( macros:Dynamic ):Void
	{
		if( this.isProcessing )
			throw "cannot alter processing parser";

		this.macros = macros;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	override public function start( ):Void
	{
		super.start();

		//
		this.setStatus( StatusEvent.STARTED, true );

		if( this.children != null && this.children.length > 0 )
		{
			this.loader = new AsyncProcessor();
			this.loader.addStatusListener( this.onComplete, this.onProgress, this.onError );

			for( template in this.children )
				this.loader.tasks.push( template );

			this.loader.start();
		}
		else
		{
			this.finalize();
		}
	}

	//
	override public function stop( ):Void
	{
		super.stop();
		this.clear();

		this.setStatus( StatusEvent.STOPPED, true );
	}

	//
	override public function clear( ):Void
	{
		if( this.loader != null )
		{
			this.loader.clearListener();
			this.loader = null;
		}
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function onComplete( event:StatusEvent ):Void
	{
		this.clear();
		this.finalize();
	}

	//
	private function onProgress( event:ProgressEvent ):Void
	{
		this.dispatch( event.type, event );
	}

	//
	private function onError( event:ErrorEvent ):Void
	{
		if( this.hasListener( event.type ) )
			this.dispatch( event.type, event );

		this.clear();
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function finalize():Void
	{
		try
		{
			this.result = new Template( this.input ).execute( this.context, this.macros );
		}
		catch( error:Dynamic )
		{
			this.error( error );
			return;
		}

		this.setStatus( StatusEvent.COMPLETE, true );
	}
}
