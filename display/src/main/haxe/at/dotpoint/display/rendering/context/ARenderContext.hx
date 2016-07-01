package haxe.at.dotpoint.display.rendering.context;
import haxe.at.dotpoint.core.dispatcher.event.EventDispatcher;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;


/**
 * ...
 * @author RK
 */
class ARenderContext<TViewport:RenderViewport,TSettings:RenderSettings> extends EventDispatcher
{

	/**
	 *
	 */
	private var viewport:TViewport;

	/**
	 *
	 */
	private var settings:TSettings;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	/**
	 * width/height of the screen in pixel
	 */
	public function getViewport():TViewport
	{
		return this.viewport;
	}

	/**
	 * fps, backgroundcolor etc
	 */
	public function getSettings():TSettings
	{
		return this.settings;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	public function initialize( onComplete:StatusEvent->Void ):Void
	{
		if( onComplete != null )
			this.addListener( StatusEvent.COMPLETE, cast onComplete );
	}

	/**
	 *
	 */
	private function onInitComplete():Void
	{
		this.dispatch( new StatusEvent( StatusEvent.COMPLETE ) );
	}
}