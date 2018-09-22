package at.dotpoint.remote.module;

import js.html.DOMElement;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.StatusPromise;
import js.html.DivElement;
import js.html.svg.StyleElement;
import at.dotpoint.remote.http.Request;
import at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 * 
 */
class Module
{

    //
    public var container:DOMElement;    // TODO: abstract for appendChild( myModule )?

    //
    private var request:Request;
    private var loader:ModuleRequest;

    //
    public function new( container:DOMElement, request:Request )
    {
        this.container = container;
        this.request = request;
    }

    // ************************************************************************ //
    // Methods
    // ************************************************************************ //

    //
    public function load( ?onComplete:StatusEvent->Void ):StatusPromise
    {
        var promise = new StatusPromise();
            promise.onComplete = onComplete;

        this.loader = this.createModuleLoader( request );
        this.loader.addStatusPromise( promise );
        this.loader.start();

        return promise;
    }

    //
    private function createModuleLoader( input:Request ):ModuleRequest
    {
        var request = new ModuleRequest( input );
            request.addStatusListener( this.onComplete );

        return request;
    }

    //<link rel="stylesheet" href="initial.css">
    private function onComplete( event:StatusEvent ):Void
    {
        var style = js.Browser.document.createStyleElement();
            style.innerText = this.loader.result.style;
            style.type = "text/css";

        js.Browser.document.head.appendChild( style );
        this.container.innerHTML = this.loader.result.content;

        this.loader.clear();
        this.loader = null;
    }
}
