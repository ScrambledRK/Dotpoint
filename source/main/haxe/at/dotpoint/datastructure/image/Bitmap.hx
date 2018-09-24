package at.dotpoint.datastructure.image;

import haxe.crypto.Base64;
import haxe.io.Bytes;

#if js
typedef TImage = js.html.Image;
#else
typedef TImage = haxe.io.Bytes;
#end

/**
 *
 */
abstract Bitmap(TImage) from TImage to TImage
{
    public var width(get,never):Int;
    public var height(get,never):Int;

    //
    inline public function new( instance:TImage )
    {
        this = instance;
    }

    /**
     *
     */
    inline private function get_width( ):Int
    {
        #if js
            return this.width ;
        #else
            return 0;
        #end
    }

    /**
     *
     */
    inline private function get_height( ):Int
    {
        #if js
            return this.width ;
        #else
            return 0;
        #end
    }

}
