package at.dotpoint.dispatcher;

import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.ProgressEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;

/**
 *
 */
class StatusPromise
{
    public var onComplete:StatusEvent->Void;
    public var onProgress:ProgressEvent->Void;
    public var onError:ErrorEvent->Void;

    //
    public function new( ?complete:StatusEvent->Void, ?progress:ProgressEvent->Void, ?error:ErrorEvent->Void ):Void
    {
        if( complete != null )
            this.onComplete = complete;

        if( progress != null )
            this.onProgress = progress;

        if( error != null )
            this.onError = error;
    }

    //
    private function complete( event:StatusEvent ):Void
    {
        if( this.onComplete != null )
            this.onComplete( event );
    }

    //
    private function progress( event:ProgressEvent ):Void
    {
        if( this.onProgress != null )
            this.onProgress( event );
    }

    //
    private function error( event:ErrorEvent ):Void
    {
        if( this.onError != null )
            this.onError( event );
    }
}
