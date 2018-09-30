package at.dotpoint.datastructure.iterator;

import at.dotpoint.datastructure.graph.TreeTraversal;

/**
 *
 */
class DynamicTreeIterator<T> implements IResetIterator<T>
{

    public var item(default,null):T;
    public var type(default,null):TreeTraversal;

    private var stack:Array<T>;

    // ************************************************************************ //
    // Constructor
    // ************************************************************************ //

    public function new( item:T, ?type:TreeTraversal, ?collector:T->Iterator<T> )
    {
        this.item = item;
        this.type = type != null ? type : TreeTraversal.DEPTH_FIRST;

        if( collector != null )
            this.getChildren = collector;

        this.reset();
    }

    //
    public function clone():IResetIterator<T>
    {
        var result = new DynamicTreeIterator<T>( this.item );
            result.stack = this.stack;

        return result;
    }

    // ************************************************************************ //
    // Methods
    // ************************************************************************ //

    //
    public function reset():Void
    {
        if( this.stack == null || this.stack.length > 0 )
            this.stack = new Array<T>();

        //
        var children = this.getChildren( this.item );

        if( children != null )
        {
            for( child in children )
                this.stack.unshift( child );
        }
    }

    //
    public function hasNext():Bool
    {
        return this.stack.length > 0;
    }

    //
    public function next():T
    {
        var result = this.stack.pop();
        var children = this.getChildren( result );

        //trace("!",result);

        if( children != null )
        {
            switch( type )
            {
                case TreeTraversal.DEPTH_FIRST:
                    {
                        for( child in children )
                            this.stack.push( child );
                    }

                case TreeTraversal.BREATH_FIRST:
                    {
                        for( child in children )
                            this.stack.unshift( child );
                    }

                case TreeTraversal.IMMEDIATE_ONLY:
                    return result;
            }
        }

        return result;
    }

    // ------------------------------------------------------------------------ //
    // ------------------------------------------------------------------------ //

    //
    dynamic public function getChildren( item:T ):Iterator<T>
    {
        try
        {
            var iterable:Iterable<T> = cast Reflect.field( item, "children" );

            if( iterable != null )
                return iterable.iterator();

            return null;
        }
        catch( error:Dynamic )
        {
            return null;
        }
    }
}
