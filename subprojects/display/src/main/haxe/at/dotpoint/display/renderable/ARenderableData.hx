package haxe.at.dotpoint.display.renderable;
import haxe.at.dotpoint.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.display.renderable.register.RegisterSignature;

/**
 * ...
 * @author RK
 */
class ARenderableData<TSignature:RegisterSignature>
{

	/**
	 *
	 */
	public var name:String;

	/**
	 * status whether or not mesh data has changed (relavant for IRenderData Objects)
	 */
	public var lazyStatus:LazyStatus;

	/**
	 * returns a current list of RegisterTypes used
	 */
	@:isVar public var signature(get, null):TSignature;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?name:String )
	{
		this.name = name;
		this.lazyStatus = LazyStatus.INVALID;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function get_signature():TSignature
	{
		if( this.signature == null || this.lazyStatus == LazyStatus.INVALID )
			this.signature = this.calculateSignature();

		return this.signature;
	}

	/**
	 * returns a current list of RegisterTypes used, number of (unique) vertices and triangles
	 */
	private function calculateSignature():TSignature
	{
		throw "must override method";
		return null;
	}
}