package haxe.at.dotpoint.display.renderable.mesh.data;

import haxe.at.dotpoint.display.renderable.register.RegisterSignature;

/**
 * 13.03.15
 * @author RK
 */
class MeshSignature extends RegisterSignature
{

	/**
	 *
	 */
	public var numVertices:Int;

	/**
	 *
	 */
	public var numTriangles:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

    public function new( numRegisters:Int, numVertices:Int, numTriangles:Int )
    {
	    super( numRegisters );

	    this.numVertices  = numVertices;
	    this.numTriangles = numTriangles;
    }

}
