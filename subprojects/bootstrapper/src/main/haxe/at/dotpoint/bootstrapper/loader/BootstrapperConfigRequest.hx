package at.dotpoint.bootstrapper.loader;

import at.dotpoint.processor.ITaskFactory;
import at.dotpoint.loader.DataRequest;
import at.dotpoint.loader.format.StringFormat;
import at.dotpoint.loader.URLRequest;

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