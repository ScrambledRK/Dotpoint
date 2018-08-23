package at.dotpoint.gis.shape;

import at.dotpoint.datastructure.bytes.IByteRepository;
import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.gis.shape.signature.ShapeSignatureRecords;
import at.dotpoint.gis.shape.signature.ShapeTypesRecord;
import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector2;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.geometry.primitive.cube.Cube;
import at.dotpoint.spatial.geometry.primitive.cube.ICube;
import haxe.ds.Vector;
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

	// ************************************************************************ //
	// IByteRepository
	// ************************************************************************ //	
	
	//
	public function getIndex( position:Int ):Int
	{
		this.data.bigEndian = true;
		this.data.position = position; 		// [index], length, type
		
		return this.data.readInt32() - 1; 	// 1 based for some reason
	}
	
	//
	public function getType( position:Int ):Int
	{
		this.data.bigEndian = false;
		this.data.position = position + 8; 	// index, length, [type]
		
		return this.data.readInt32();
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function getPoint( position:Int, record:Int ):IVector3
	{
		var shape:Int = this.getType( position );
		
		//
		this.data.bigEndian = false;
		this.data.position = position + this.signature.getEntryIndex( record, 0 );
		
		//
		var output:IVector3 = new Vector3();	
			output.x = this.data.readDouble();
			output.y = this.data.readDouble();
			
		if( ShapeTypesRecord.is4D( shape ) )	
			output.z = this.data.readDouble();		
			
		if( ShapeTypesRecord.is3D( shape ) )	
			output.w = this.data.readDouble();		
		
		//
		return output;
	}
	
	//
	public function getBoundingBox( position:Int, record:Int ):ICube
	{
		var shape:Int = -1;											// irrelevant for header
		var component:Int = 5;										// header box
		var signature:IByteSignature = this.signature.header;		// header
		
		//
		if( position >= 0 && record >= 0 )
		{
			shape = this.getType( position );
			component = ShapeComponentType.getComponentType( shape, ShapeComponentType.BOX );
			signature = this.signature;
		}
		else
		{
			position = 0;
		}
		
		//
		this.data.bigEndian = false;
		this.data.position = position + signature.getEntryIndex( record, component );
		
		//
		var output:ICube = new Cube();
		
		var min:IVector3 = output.getMin();
			min.x = this.data.readDouble();
			min.y = this.data.readDouble();
			
		var max:IVector3 = output.getMax();
			max.x = this.data.readDouble();
			max.y = this.data.readDouble();	
			
		//
		if( ShapeTypesRecord.is3D( shape ) )
		{
			component = ShapeComponentType.getComponentType( shape, ShapeComponentType.M_RANGE );
			this.data.position = position + signature.getEntryIndex( record, component );			
			
			min.w = this.data.readDouble();			
			max.w = this.data.readDouble();			
		}	
		
		//
		if( ShapeTypesRecord.is4D( shape ) )
		{
			component = ShapeComponentType.getComponentType( shape, ShapeComponentType.Z_RANGE );
			this.data.position = position + signature.getEntryIndex( record, component );			
			
			min.z = this.data.readDouble();			
			max.z = this.data.readDouble();			
		}	
		
		//
		output.setMin( min );
		output.setMax( max );
		
		//
		return output;
	}
	
	//
	public function getPointList( position:Int, record:Int ):Vector<IVector3>
	{
		var shape:Int = this.getType( position );
		var component:Int = ShapeComponentType.getComponentType( shape, ShapeComponentType.POINTS );
		
		var size:Int = this.signature.records[record].entries[component];
		
		//
		this.data.bigEndian = false;
		this.data.position = position + this.signature.getEntryIndex( record, component );
		
		//
		var output:Vector<IVector3> = new Vector<IVector3>( size );
		
		for( j in 0...output.length )
		{
			var point:IVector3 = new Vector3();
				point.x = this.data.readDouble();
				point.y = this.data.readDouble();
				
			output[j] = point;	
		}
		
		//
		if( ShapeTypesRecord.is3D( shape ) )
		{
			component = ShapeComponentType.getComponentType( shape, ShapeComponentType.M_ARRAY );
			this.data.position = position + this.signature.getEntryIndex( record, component );
			
			for( j in 0...output.length )
				output[j].w = this.data.readDouble();			
		}
		
		//
		if( ShapeTypesRecord.is4D( shape ) )
		{
			component = ShapeComponentType.getComponentType( shape, ShapeComponentType.Z_ARRAY );
			this.data.position = position + this.signature.getEntryIndex( record, component );
			
			for( j in 0...output.length )
				output[j].z = this.data.readDouble();			
		}
		
		//
		return output;
	}
}