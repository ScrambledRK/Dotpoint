package at.dotpoint.gis.shape;

import at.dotpoint.datastructure.bytes.IByteRepository;
import at.dotpoint.gis.shape.signature.ShapeSignatureRecords;
import haxe.io.BytesInput;

/**
 * ...
 * @author RK
 */
class ShapeRecordRepository implements IByteRepository<ShapeSignatureRecords> 
{

	public var signature(default, null):ShapeSignatureRecords;
	public var data(default, null):BytesInput;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	//
	public function new( data:BytesInput, signature:ShapeSignatureRecords ) 
	{
		this.data = data;
		this.signature = signature;
	}
	
}