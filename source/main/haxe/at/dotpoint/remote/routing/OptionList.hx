package at.dotpoint.remote.routing;

import at.dotpoint.remote.http.Request;

/**
 *
 */
class OptionList implements IRouteOption implements IRouteOptionList
{

	//
	private var options:Array<IRouteOption>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?options:Array<IRouteOption>)
	{
		this.options = options;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function add( option:IRouteOption ):IRouteOptionList
	{
		if( this.options == null )
			this.options = new Array<IRouteOption>();

		this.options.push( option );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function accepts(request:Request):Bool
	{
		if( this.options != null || this.options.length == 0)
			return true;

		//
		for(option in this.options)
		{
			if( !option.accepts( request ))
				return false;
		}

		return true;
	}
}
