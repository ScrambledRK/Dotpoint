package at.dotpoint.datastructure;

import haxe.ds.StringMap;

/**
 * generates a unique integer and stores debug information
 */
class HashId
{

    //
    private static var count(default,null):Int = 0;

    public static function generate():Int
    {
        return count++;
    }

//    macro public static function generate():haxe.macro.Expr.ExprOf<Int> {
//        #if !display
//            return macro $v{count++};
//        #else
//            return macro $v{0};
//        #end
//    }

    #if debug
        private static var categories:StringMap<HashIdCategory> = new StringMap<HashIdCategory>();

        //
        public static function register( category:String, hash:String, value ):Void
        {
            var table:HashIdCategory = categories.get( category );

            if( table == null )
            {
                table = new HashIdCategory();
                categories.set( category, table );
            }

            table.get( hash );
        }

        //
        public static function trace( id:Int ):String
        {
            for( category in categories.keys() )
            {
                var hash = categories.get( category ).trace( id );

                if( hash != null )
                    return '$category.$hash';
            }

            return "unknown.unknown";
        }
    #end
}

#if debug
    //
    class HashIdCategory extends StringMap<Int>
    {
        //
        public function new( )
        {
            super();
        }

        //
        public function trace( id:Int ):String
        {
            for( hash in this.keys() )
            {
                if( this.get( hash ) == id )
                    return hash;
            }

            return null;
        }
    }
#end