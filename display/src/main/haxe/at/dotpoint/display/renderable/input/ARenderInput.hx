package haxe.at.dotpoint.display.renderable.input;
import haxe.at.dotpoint.display.renderable.register.RegisterSignature;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;

/**
 * ...
 * @author RK
 */
class ARenderInput implements IRenderInput
{

	/**
	 * returns a current list of RegisterTypes used
	 */
	public var signature(get, null):RegisterSignature;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{

	}

	// ************************************************************************ //
	// Signature
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function get_signature():RegisterSignature
	{
		if( this.signature == null )
			this.signature = this.calculateSignature();

		return this.signature;
	}

	/**
	 * returns a current list of RegisterTypes used, number of (unique) vertices and triangles
	 */
	private function calculateSignature():RegisterSignature
	{
		return new RegisterSignature(0);
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function getRegisterData( type:RegisterType ):Array<Float>
	{
		throw "must override abstract method";
		return null;
	}
}