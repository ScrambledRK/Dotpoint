package at.dotpoint.http.service;

import at.dotpoint.utils.ApplicationInfo;

/**
 *
 */
class DebugService extends RestService
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?settings:ResponseSettings )
	{
		super( settings );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function doHealthcheck( ):Void
	{
		this.respondData( new ApplicationInfo() );
	}
}
