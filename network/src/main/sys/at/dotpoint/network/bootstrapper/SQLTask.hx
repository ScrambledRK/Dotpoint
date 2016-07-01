package sys.at.dotpoint.network.bootstrapper;

import haxe.at.dotpoint.bootstrapper.BootstrapperTask;
import sys.db.Connection;
import sys.db.Mysql;


/**
 * ...
 * @author RK
 */
class SQLTask extends BootstrapperTask
{


	/**
	 *
	 */
	public var connection:Connection;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?config:Dynamic = null )
	{
		super( config );
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //


	override public function execute():Void
	{
		try
		{
			this.connection = Mysql.connect( this.config );

			if( this.connection == null )
				throw "could not connect to MySQL DB";
		}
		catch( error:Dynamic )
		{
			throw error;
		}

		super.execute();
		this.clear();
	}

}

