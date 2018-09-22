package at.dotpoint.remote.module;

import js.html.svg.StyleElement;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.processor.batch.ParallelProcessor;
import at.dotpoint.processor.IDataProcess;
import at.dotpoint.processor.loader.StringLoader;
import at.dotpoint.processor.task.ABatchTask;
import at.dotpoint.remote.http.Request;
import js.html.DivElement;

/**
 * 
 */
class ModuleRequest extends ABatchTask implements IDataProcess<Request,ModuleData>
{

    public var input:Request;
    public var result:ModuleData;

    //
    public function new( ?request:Request, ?proxy:IEventDispatcher, weight:Float = 1 )
    {
        super( proxy, weight );

        this.processor = new ParallelProcessor();
        this.input = request;
    }

    // ************************************************************************ //
    // ITask
    // ************************************************************************ //

    //
    override private function initialize( ):Void
    {
        super.initialize( );

        //
        this.result = new ModuleData();

        this.processor.tasks.push( this.getStyleRequest() );
        this.processor.tasks.push( this.getHtmlRequest() );
    }

    // ************************************************************************ //
    // HTML
    // ************************************************************************ //

    //
    private function getHtmlRequest():IDataProcess<Request,String>
    {
        var url = this.replaceExtension( "html" );

        var request = this.getHtmlLoader();
            request.input = this.input.clone();
            request.input.url = url;

        //
        var onComplete = function( event:StatusEvent ):Void {
            this.result.content = request.result;
        }

        request.addListener( StatusEvent.COMPLETE, onComplete );

        //
        return request;
    }

    //
    private function getHtmlLoader():IDataProcess<Request,String>
    {
        return new StringLoader();
    }

    // ************************************************************************ //
    // Style
    // ************************************************************************ //

    //
    private function getStyleRequest( ):IDataProcess<Request,String>
    {
        var url = this.replaceExtension( "css" );

        var request = this.getStyleLoader();
            request.input = this.input.clone();
            request.input.url = url;

        //
        var onComplete = function( event:StatusEvent ):Void {
            this.result.style = request.result;
        }

        request.addListener( StatusEvent.COMPLETE, onComplete );

        //
        return request;
    }

    //
    private function getStyleLoader():IDataProcess<Request,String>
    {
        return new StringLoader();
    }

    // ************************************************************************ //
    // Helper
    // ************************************************************************ //

    //
    private function replaceExtension( extension:String ):String
    {
        var url = this.input.url;
            url = url.substring( 0, url.lastIndexOf( "." ) + 1 );
            url = url + extension;

        return url;
    }

}