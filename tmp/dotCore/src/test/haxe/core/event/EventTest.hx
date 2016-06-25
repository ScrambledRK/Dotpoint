package haxe.core.event;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.EventDispatcher;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;
import massive.munit.Assert;


/**
 * ...
 * @author RK
 */
class EventTest
{
	
	private var dispatcher:IEventDispatcher;
	
	private var current:Event;
	private var num:Int;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new() {		
	}
	
	// ------------------------------------------------------------------ //
	// ------------------------------------------------------------------ //
	
	/**
	 * This will run before every test
	 */
	@Before
	public function construct():Void
	{
		this.dispatcher = new EventDispatcher();
		
		this.current = null;
		this.num = 0;		
	}
	
	/**
	 * This will run after every test
	 */
	@After
	public function destruct():Void
	{
		this.dispatcher = null;
	}
	
	// ************************************************************************ //
	// TESTS
	// ************************************************************************ //	
	
	/**
	 * 
	 */
	@Test
	public function checkEventObject():Void
	{
		var event:Event = new Event( StatusEvent.COMPLETE );
		
		this.dispatcher.addListener( StatusEvent.COMPLETE, this.onEvent );
		this.dispatcher.dispatch( event );
		
		Assert.areSame( this.current, event );
		Assert.areSame( this.dispatcher, event.target );
		
		// -------------- //
		
		this.dispatcher.dispatch( event );
		
		Assert.areSame( this.current, event ); //flash clones when redispatched
		Assert.areSame( this.dispatcher, event.target );
		
		// -------------- //
		
		this.dispatcher.dispatch( new Event( StatusEvent.COMPLETE ) );
		
		Assert.areNotSame( this.current, event );
		Assert.areSame( this.dispatcher, event.target );
	}
	
	/**
	 * 
	 */
	@Test
	public function checkDispatchCount():Void
	{
		var event:Event = new Event( StatusEvent.COMPLETE );
		
		this.dispatcher.addListener( StatusEvent.COMPLETE, this.onEvent );		
		this.dispatcher.dispatch( event );
		this.dispatcher.dispatch( event );
		
		Assert.isTrue( this.num == 2 );
		
		this.dispatcher.dispatch( event );
		
		Assert.isTrue( this.num == 3 );		
	}
	
	/**
	 * 
	 */
	@Test
	public function checkListenerCount():Void
	{
		var event:Event = new Event( StatusEvent.COMPLETE );
		
		this.dispatcher.addListener( StatusEvent.COMPLETE, this.onEvent );		
		this.dispatcher.addListener( StatusEvent.COMPLETE, this.onEvent );		
		this.dispatcher.dispatch( event );
		
		Assert.isTrue( this.num == 1 );
		
		// -------------- //
		
		this.dispatcher.addListener( StatusEvent.COMPLETE, this.onEvent );		
		this.dispatcher.dispatch( event );
		
		Assert.isTrue( this.num == 2 );
		
		// -------------- //
		
		this.dispatcher.removeListener( StatusEvent.COMPLETE, this.onEvent );	
		this.dispatcher.dispatch( event );
		
		Assert.isTrue( this.num == 2 );	
		
		// -------------- //
		
		this.dispatcher.removeListener( StatusEvent.COMPLETE, this.onEvent );	
		this.dispatcher.dispatch( event );
		
		Assert.isTrue( this.num == 2 );	
	}
	
	/**
	 * 
	 */
	@Test
	public function checkMultipleEvents():Void
	{
		var e1:Event = new Event( StatusEvent.COMPLETE );
		var e2:Event = new Event( StatusEvent.STARTED );
		var e3:Event = new Event( StatusEvent.STOPPED );
		
		this.dispatcher.addListener( StatusEvent.COMPLETE, 	this.onEvent );		
		this.dispatcher.addListener( StatusEvent.STARTED, 	this.onEvent );		
		this.dispatcher.addListener( StatusEvent.STOPPED, 	this.onEvent );	
		
		// -------------- //
		
		this.dispatcher.dispatch( e1 );
		
		Assert.isTrue( this.num == 1 );
		Assert.isTrue( this.current.type == StatusEvent.COMPLETE );
		
		// -------------- //
		
		this.dispatcher.dispatch( e2 );
		
		Assert.isTrue( this.num == 2 );
		Assert.isTrue( this.current.type == StatusEvent.STARTED );	
		
		// -------------- //
		
		this.dispatcher.dispatch( e3 );
		
		Assert.isTrue( this.num == 3 );
		Assert.isTrue( this.current.type == StatusEvent.STOPPED );
		
		// -------------- //
		// -------------- //
		
		this.dispatcher.addListener( StatusEvent.COMPLETE, this.onResetEvent );	
		this.dispatcher.removeListener( StatusEvent.COMPLETE, this.onEvent );					
		
		this.dispatcher.dispatch( e1 );		
		
		Assert.isTrue( this.num == 0 );		
		Assert.isTrue( this.current == null );	
	}
	
	/**
	 * 
	 * @param	event
	 */
	private function onEvent( event:Event ):Void
	{
		this.current = event;
		this.num++;
	}
	
	/**
	 * 
	 * @param	event
	 */
	private function onResetEvent( event:Event ):Void
	{
		this.current = null;
		this.num = 0;
	}
}