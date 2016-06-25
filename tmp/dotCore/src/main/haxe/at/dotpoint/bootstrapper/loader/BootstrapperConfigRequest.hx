package haxe.at.dotpoint.bootstrapper.loader;

import haxe.at.dotpoint.core.processor.ITaskFactory;
import haxe.at.dotpoint.loader.DataRequest;
import haxe.at.dotpoint.loader.format.StringFormat;
import haxe.at.dotpoint.loader.URLRequest;

/**
 * ...
 * @author RK
 */
class BootstrapperConfigRequest extends DataRequest
{

	/**
	 *
	 */
	public var factory(get,set):ITaskFactory;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( request:URLRequest, ?factory:ITaskFactory )
	{
		super( request, null );

		this.loader = StringFormat.instance.createLoader( null );
		this.parser = new BootstrapperConfigParser( factory );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function get_factory():ITaskFactory
	{
		return cast( this.parser, BootstrapperConfigParser ).factory;
	}

	/**
	 *
	 * @return
	 */
	private function set_factory( value:ITaskFactory ):ITaskFactory
	{
		return cast( this.parser, BootstrapperConfigParser ).factory = value;
	}

}