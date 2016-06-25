package haxe.loader;

import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.DataRequest;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;

/**
 * ...
 * @author RK
 */
class LoaderTest
{

	private var loader:DataRequest;
	private var path_prefix:String;
	
	
	// ************************************************************************ //
	// CONSTRUCTOR
	// ************************************************************************ //	
	
	public function new() 
	{
		
	}
	
	@Before
    public function setup():Void
    {
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
	 */
	@Test
	public function testSetup():Void
	{
		this.loader = DataRequest.createFromURL( this.path_prefix + "image.jpg" );
		
		Assert.isNotNull( this.loader );
	}
	
	// ---------------------------------------------------------- //
	// ---------------------------------------------------------- //
	// Loading
	
	@AsyncTest
	public function loadText( async:AsyncFactory ):Void
	{
		var resultHandler:Dynamic = async.createHandler( this, this.onComplete, 1000 );
		
		this.loader = DataRequest.createFromURL( this.path_prefix + "text.txt" );
		this.loader.load( resultHandler );
	}
	
	//@AsyncTest
	public function loadImage( async:AsyncFactory ):Void
	{
		var resultHandler:Dynamic = async.createHandler( this, this.onComplete, 1000 );
		
		this.loader = DataRequest.createFromURL( this.path_prefix + "image.jpg" );
		this.loader.load( resultHandler );
	}
	
	@AsyncTest
	public function loadSound( async:AsyncFactory ):Void
	{
		var resultHandler:Dynamic = async.createHandler( this, this.onComplete, 1000 );
		
		this.loader = DataRequest.createFromURL( this.path_prefix + "sound.mp3" );
		this.loader.load( resultHandler );
	}
	
	// ---------------------------------------------------------- //
	// ---------------------------------------------------------- //
	
	private function onComplete( event:StatusEvent ):Void
	{
		Assert.isNotNull( this.loader.result );
	}
}