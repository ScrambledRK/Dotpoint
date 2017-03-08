package at.dotpoint.gis.loader;

import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.gis.shape.ShapeIndexRepository;
import at.dotpoint.gis.shape.ShapeRecordRepository;
import at.dotpoint.gis.shape.ShapeRepository;
import at.dotpoint.gis.shape.signature.ShapeSignatureHeader;
import at.dotpoint.gis.shape.signature.ShapeSignatureIndex;
import at.dotpoint.gis.shape.signature.ShapeSignatureRecords;
import at.dotpoint.gis.shape.signature.ShapeTypesIndex;
import at.dotpoint.gis.shape.signature.ShapeTypesRecord;
import at.dotpoint.gis.shape.signature.records.AShapeRecordSignature;
import at.dotpoint.gis.shape.signature.records.ComponentsMultiPatch;
import at.dotpoint.gis.shape.signature.records.ComponentsMultiPoint;
import at.dotpoint.gis.shape.signature.records.ComponentsPoly;
import at.dotpoint.loader.processor.ADataProcessor;
import at.dotpoint.loader.processor.IDataProcessor;
import haxe.io.Bytes;
import haxe.io.BytesBuffer;
import haxe.io.BytesInput;

/**
 * ...
 * @author RK
 */
class ShapeParser extends ADataProcessor implements IDataProcessor<Bytes,ShapeRepository>
{

	/**
	 *
	 */
	public var result(default, null):ShapeRepository;
	
	// ---------- //
	
	private var bytesRecord:BytesInput;
	private var bytesIndex:BytesBuffer;
	
	private var signatureRecord:ShapeSignatureRecords;
	private var signatureIndex:ShapeSignatureIndex;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	request
	 */
	public function start( input:Bytes ):Void
	{
		this.setStatus( StatusEvent.STARTED );		
		
		// -------------------------- //
		
		this.setup( input );
		
		//
		var position:Int = signature.header.getSizeTotal( 1 );
		
		while( position < data.length )
			position = this.parse( position );
		
		//
		this.finalize();	
			
		// -------------------------- //
		
		this.setStatus( StatusEvent.COMPLETE );
	}
	
	//
	private function setup( input:Bytes ):Void
	{
		this.bytesRecord = new BytesInput( input );
		this.bytesIndex = new BytesBuffer();
		
		//
		var header:ShapeSignatureHeader = new ShapeSignatureHeader();
		
		this.signatureRecord = new ShapeSignatureRecords( header );
		this.signatureIndex = new ShapeSignatureIndex( header, true );
	}
	
	//
	private function finalize():Void
	{
		var dataIndex:BytesInput = new BytesInput( this.bytesIndex.getBytes() );
		
		var index:ShapeIndexRepository = new ShapeIndexRepository( dataIndex, this.signatureIndex );
		var record:ShapeRecordRepository = new ShapeRecordRepository( this.bytesRecord, this.signatureRecord );
		
		this.result = new ShapeRepository( index, record );
	}
	
	//
	private function parse( position:Int ):Int
	{
		position = this.parseRecord( position );	// stays on the same position
		position = this.parseIndex( position );		// actually returns the next position
		
		return position;
	}
	
	// ************************************************************************ //
	// INDEX
	// ************************************************************************ //
	
	//
	private function parseIndex( position:Int ):Int 
	{		
		var offset:Int = this.getIndexOffset( position );
		var length:Int = this.getIndexLength( position );
		var type:Int = this.getIndexShapeType( position );
		
		//
		this.bytesIndex.addInt32( offset );
		this.bytesIndex.addInt32( length );
		
		if( this.signatureIndex.shape != null )
			this.bytesIndex.addInt32( type );
		
		//
		return position + length;
	}
	
	//
	private function getIndexOffset( index:Int ):Int
	{
		return index;
	}
	
	//
	private function getIndexLength( index:Int ):Int
	{
		this.bytesRecord.position = index + 4;
		this.bytesRecord.bigEndian = true;
		
		return this.bytesRecord.readInt32();
	}	
	
	//
	private function getIndexShapeType( index:Int ):Int
	{
		this.bytesRecord.position = index + 8;
		this.bytesRecord.bigEndian = true;
		
		return this.bytesRecord.readInt32();
	}
	
	// ************************************************************************ //
	// RECORD
	// ************************************************************************ //
	
	//
	private function parseRecord( position:Int ):Int
	{
		var type:Int = this.getIndexShapeType( position );
		var signature:AShapeRecordSignature = ShapeTypesRecord.createSignature( type );
		
		//
		var entries:Array<Entry> = this.getEntries( type );
		
		if( entries != null )
			this.setEntries( signature, entries, position );
		
		//
		this.signatureRecord.records.push( signature );	
			
		//
		return index;
	}
	
	//
	private function setEntries( signature:AShapeRecordSignature, entries:Array<Entry>, position:Int ):Void
	{
		for( entry in entries )
		{
			var value:Int = this.getEntryValue( position, entry.source );
			
			for( target in entry.targets )
				signature.entries[ target ] = value;
		}
	}
	
	//
	private function getEntryValue( position:Int, offset:Int ):Int
	{
		this.bytesRecord.position = position + offset;
		this.bytesRecord.bigEndian = false;
		
		return this.bytesRecord.readInt32();
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	/**
	 * where to get the number of entries from (source) and what ByteFormats require
	 * the number of entries to function correctly (e.g. an array of points, or parts ...)
	 */
	private function getEntries( type:Int ):Array<Entry>
	{
		switch( type )
		{
			//
			case ShapeTypesRecord.MULTIPOINT:			
				return [ 
					new Entry( 36, [ ComponentsMultiPoint.POINTS ] ) 
				];
			
			//
			case ShapeTypesRecord.MULTIPOINT_M:			
				return [ 
					new Entry( 36, [ ComponentsMultiPoint.POINTS, ComponentsMultiPoint.M_ARRAY ] ) 
				];	
				
			//
			case ShapeTypesRecord.MULTIPOINT_Z:			
				return [ 
					new Entry( 36, [ ComponentsMultiPoint.POINTS, ComponentsMultiPoint.M_ARRAY, ComponentsMultiPoint.Z_ARRAY ] ) 
				];	
				
			//	
			case ShapeTypesRecord.POLYLINE, ShapeTypesRecord.POLYGON:	
				return [ 
					new Entry( 36, [ ComponentsPoly.PARTS ] ),
					new Entry( 40, [ ComponentsPoly.POINTS ] )
				];
				
			//	
			case ShapeTypesRecord.POLYLINE_M, ShapeTypesRecord.POLYGON_M:	
				return [ 
					new Entry( 36, [ ComponentsPoly.PARTS ] ),
					new Entry( 40, [ ComponentsPoly.POINTS, ComponentsPoly.M_ARRAY ] )
				];	
				
			//	
			case ShapeTypesRecord.POLYLINE_Z, ShapeTypesRecord.POLYGON_Z:	
				return [ 
					new Entry( 36, [ ComponentsPoly.PARTS ] ),
					new Entry( 40, [ ComponentsPoly.POINTS, ComponentsPoly.M_ARRAY, ComponentsPoly.Z_ARRAY ] )
				];	

			//	
			case ShapeTypesRecord.MULTIPATCH:	
				return [ 
					new Entry( 36, [ ComponentsMultiPatch.PARTS, ComponentsMultiPatch.PART_TYPES ] ),
					new Entry( 40, [ ComponentsMultiPatch.POINTS, ComponentsMultiPatch.M_ARRAY, ComponentsMultiPatch.Z_ARRAY ] )
				];
			
			default:
				return null;
		}
	}
}

//
class Entry
{
	public var source:Int;
	public var targets:Array<Int>;
	
	public function new( source:Int, targets:Array<Int> )
	{
		this.source = source;
		this.targets = targets;
	}
}