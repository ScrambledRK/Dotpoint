package at.dotpoint.gis.shape;

import at.dotpoint.datastructure.bytes.IByteRepository;
import at.dotpoint.gis.shape.signature.ShapeSignatureIndex;
import at.dotpoint.gis.shape.signature.ShapeTypesIndex;
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

	// ************************************************************************ //
	// IByteRepository
	// ************************************************************************ //		
	
	//
	public function getPosition( record:Int ):Int
	{
		this.data.position = this.signature.getEntryIndex( record, ShapeTypesIndex.RECORD );
		this.data.bigEndian = false; // this.signature.record.isBigEndian;
		
		return this.data.readInt32();
	}
}