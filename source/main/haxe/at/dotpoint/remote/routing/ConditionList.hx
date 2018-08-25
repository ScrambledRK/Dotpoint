package at.dotpoint.remote.routing;

import at.dotpoint.remote.http.Request;

/**
 *
 */
class ConditionList implements IRouteCondition implements IRouteConditionList
{

	//
	private var options:Array<IRouteCondition>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function ConditionList( ?options:Array<IRouteCondition>)
	{
		this.options = options;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function add( option:IRouteCondition ):IRouteConditionList
	{
		if( this.options == null )
			this.options = new Array<IRouteCondition>();

		this.options.push( option );

		//
		return this;
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
