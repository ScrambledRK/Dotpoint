package at.dotpoint.template;

import at.dotpoint.processor.batch.SerialProcessor;
import at.dotpoint.processor.ADataProcess;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.ProgressEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import haxe.Template;

//
class TemplateParser extends ADataProcess<String, String>
{

	//
	private var context:Dynamic;
	private var macros:Dynamic;

	//
	private var children:Array<TemplateRequest>;
	private var loader:SerialProcessor;

	/**
	 *
	 */
	public function new( ?context:Dynamic, ?macros:Dynamic, ?proxy:IEventDispatcher )
	{
		super( proxy );

		this.setContext( context );
		this.setMacros( macros );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function addChild( template:TemplateRequest ):Void
	{
		if( this.isProcessing )
			throw "cannot alter processing parser";

		if( template == null )
			throw "template must not be null";

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

		//
		if( this.macros == null )
		{
			this.macros = this;
			return;
		}

		//
		if( this.macros.getTemplate != this.getTemplate )
			throw "macro context is not allowed to define 'getTemplate'";

		this.macros.getTemplate = this.getTemplate;
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
			this.loader = new SerialProcessor();
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

	//
	private function getTemplate( resolve:String->Dynamic, url:String ):String
	{
		if( this.children == null || this.children.length == 0 )
			throw 'no child templates set, could not find template $url';

		//
		for( template in this.children )
		{
			if( template.input.url != url )
				continue;

			return template.result;
		}

		throw 'could not find template $url';
	}
}
