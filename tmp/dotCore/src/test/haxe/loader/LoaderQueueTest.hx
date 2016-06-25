package haxe.loader;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.DataQueueLoader;
import haxe.at.dotpoint.loader.DataRequest;
import haxe.at.dotpoint.loader.event.DataLoaderEvent;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;

/**
 * ...
 * @author RK
 */
class LoaderQueueTest
{

	private var loader:DataQueueLoader;
	private var path_prefix:String;
	
	private var count:Int;
	
	// ************************************************************************ //
	// CONSTRUCTOR
	// ************************************************************************ //	
	
	public function new() 
	{
		
	}
	
	@Before
    public function setup():Void
    {
		this.count = 0;
		
        #if munit_server 
			this.path_prefix = "";
		#else
			this.path_prefix = "../res/test/";
		#end
    }

    @After
    public function tearDown():Void
    {
		if( this.loader != null && this.loader.isProcessing )
			this.loader.stop();
		
		this.loader = null;
    }
	
	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //	
	
	/**
	 * 
	 * @param	async
	 */
	@AsyncTest
	public function loadQueue( async:AsyncFactory ):Void
	{
		var completeHandler:Dynamic = async.createHandler( this, this.onComplete, 1000 );
		
		this.loader = new DataQueueLoader();
		this.loader.addListener( StatusEvent.COMPLETE, completeHandler );
		this.loader.addListener( DataLoaderEvent.ITEM_COMPLETE, this.onItem );
		
		var list:Array<DataRequest> = new Array<DataRequest>();
			list[0] = DataRequest.createFromURL( this.path_prefix + "text.txt" );
		//	list[1] = DataRequest.createFromURL( this.path_prefix + "image.jpg" );
			list[1] = DataRequest.createFromURL( this.path_prefix + "sound.mp3" );
			
		this.loader.start( list );
	}
	
	private function onItem( event:Event ):Void
	{
		var item:DataLoaderEvent = cast event;
		
		//trace( item.request );
		//trace( item.result );
		
		Assert.isNotNull( item.result );
		
		this.count++;
	}
	
	private function onComplete( event:Event ):Void
	{
		Assert.isNotNull( this.loader );
		Assert.isTrue( this.count == 2 );
	}
}