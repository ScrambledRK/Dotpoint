package at.dotpoint.datastructure.image;

import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.processor.DataRequest;
import at.dotpoint.processor.IDataProcess;
import at.dotpoint.processor.loader.BinaryLoader;
import at.dotpoint.processor.parser.AsyncCallbackParser;
import at.dotpoint.processor.parser.CallbackParser;
import at.dotpoint.remote.http.header.MimeType;
import at.dotpoint.remote.http.Request;
import haxe.crypto.Base64;
import haxe.io.Bytes;

#if js
import at.dotpoint.processor.loader.AHTTPLoader;
#end

/**
 *
 */
class ImageRequest extends DataRequest<Request,Bytes,Bitmap>
{

    //
    public function new( input:Request, ?proxy:IEventDispatcher, ratio:Float = 0.5, weight:Float = 1 )
    {
        super( input, proxy, ratio, weight );
    }

    //
    override private function getLoader( ):IDataProcess<Request,Bytes>
    {
        return new BinaryLoader();
    }

    //
    override private function getParser( ):IDataProcess<Bytes,Bitmap>
    {
        #if js
        var parse = function( data:Bytes, callback:Bitmap->Void ):Void
        {
            var loader:AHTTPLoader<Bytes> = cast this.loader;
            var type:MimeType = loader.response.contentType.type;

            var result = new js.html.Image();
                result.onload = function() {
                    callback( result );
                }

            result.src = 'data:$type;base64,' + Base64.encode( data );
        }

        return new AsyncCallbackParser<Bytes,Bitmap>( parse );
        #else
        var parse = function( data:Bytes ):Bitmap
        {
            return new Bitmap( data );
        }

        return new CallbackParser<Bytes,Bitmap>( parse );
        #end
    }

}
