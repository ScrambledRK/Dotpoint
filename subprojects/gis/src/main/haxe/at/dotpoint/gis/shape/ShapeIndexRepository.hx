package at.dotpoint.gis.shape;

import at.dotpoint.datastructure.bytes.IByteRepository;
import at.dotpoint.gis.shape.signature.ShapeSignatureIndex;
import haxe.io.BytesInput;

/**
 * ...
 * @author RK
 */
class ShapeIndexRepository implements IByteRepository<ShapeSignatureIndex>
{

	public var signature(default, null):ShapeSignatureIndex;
	public var data(default, null):BytesInput;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( data:BytesInput, signature:ShapeSignatureIndex )
	{
		this.data = data;
		this.signature = signature;
	}

}