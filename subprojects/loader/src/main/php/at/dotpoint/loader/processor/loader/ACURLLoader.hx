package php.at.dotpoint.loader.processor.loader;

import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.processor.ADataProcessor;
import haxe.at.dotpoint.loader.URLRequest;

/**
 * ...
 * @author RK
 */
class ACURLLoader extends ADataProcessor
{

	private var curl_result:Dynamic;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	request
	 */
	public function start( request:URLRequest ):Void
	{
		this.setStatus( StatusEvent.STARTED );

		// ------------------- //

		request = request.clone();

		var url:String = request.url;
		var ch:Dynamic = null;

		if( request.data != null )
		{
			var vars:Dynamic = request.data; //StringTools.urlEncode( cast( request.data, String ) );

			if( request.method == URLRequestMethod.POST )
			{
				ch = untyped __php__("curl_init ($url)");
				untyped __php__("curl_setopt( $ch, CURLOPT_POST, 1)");
				untyped __php__("curl_setopt( $ch, CURLOPT_POSTFIELDS, $vars)");
			}
			else
			{
				url += "?" + vars;

				ch = untyped __php__("curl_init ($url)");
				untyped __php__("curl_setopt( $ch, CURLOPT_HTTPGET, 1)");
			}
		}
		else
		{
			ch = untyped __php__("curl_init ($url)");
		}

		untyped __php__("curl_setopt( $ch, CURLOPT_HEADER, 0)");
		untyped __php__("curl_setopt( $ch, CURLOPT_RETURNTRANSFER, 1)");
		untyped __php__("curl_setopt( $ch, CURLOPT_BINARYTRANSFER, 1)");

		this.curl_result = untyped __php__("curl_exec( $ch );");
		untyped __php__("curl_close ($ch)");

		if( this.curl_result != false )
		{
			this.onComplete(null);
		}
		else
		{
			this.onError( new ErrorEvent( ErrorEvent.ERROR, "curl_exec error: " + this.curl_result ) );
		}
	}

}