package haxe.at.dotpoint.display.renderable.material.data;

import haxe.at.dotpoint.display.renderable.register.RegisterSignature;


/**
 * @author RK
 */
class MaterialSignature extends RegisterSignature
{

	/**
	 *
	 */
	public var numTextures:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

    public function new( numRegisters:Int, numTextures:Int )
    {
	    super( numRegisters );
	    this.numTextures = numTextures;
    }

}
