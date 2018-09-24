package at.dotpoint.processor.parser;

import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;

//
class AsyncCallbackParser<TInput, TResult> extends ADataProcess<TInput, TResult>
{

    //
    public var callback:TInput->(TResult->Void)->Void;

    //
    public function new( ?proxy:IEventDispatcher, ?callback:TInput->(TResult->Void)->Void )
    {
        super( proxy );

        //
        this.callback = callback;
    }

    // ************************************************************************ //
    // Methods
    // ************************************************************************ //

    //
    override public function start( ):Void
    {
        this.setStatus( StatusEvent.STARTED, true );

        try
        {
            this.callback( this.input, this.onComplete );
        }
        catch( error:Dynamic )
        {
            this.error( error );
        }
    }

    //
    override public function stop( ):Void
    {
        this.setStatus( StatusEvent.STOPPED, true );
    }

    //
    private function onComplete( result:TResult ):Void
    {
        this.result = result;
        this.setStatus( StatusEvent.COMPLETE, true );
    }
}
