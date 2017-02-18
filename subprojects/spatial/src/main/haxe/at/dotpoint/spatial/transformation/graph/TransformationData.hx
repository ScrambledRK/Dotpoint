package at.dotpoint.spatial.transformation.graph;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.datastructure.bytes.ByteSignature;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.datastructure.graph.IGraphRepository;
import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.validation.IValidationTable;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.transformation.graph.DataType;
import haxe.ds.Vector;
import haxe.io.Bytes;

/**
 * keeps data internally consistent. e.g. a component (say rotation quaternion) updates,
 * the matrix will be updated as well and vice versa. does not know anything about a 
 * transformation hierarchy (scene graph) - this is for the graph itself to do ...
 * 
 * @author RK
 */
class TransformationData implements IGraphRepository<DataType>
{
	
	private var repository:TransformationRepository;
	private var validation:TransformationValidation;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( numEntries:Int )
	{
		this.repository = new TransformationRepository( numEntries );
		this.validation = new TransformationValidation( numEntries );
	}
	
	// ************************************************************************ //
	// read/write
	// ************************************************************************ //
	
	/**
	 * 
	 * @param	index
	 * @param	type
	 * @param	value
	 * @return
	 */
	public function setValues( index:Int, type:DataType, value:ITensor ):ITensor
	{		
		this.invalidate( index, type );		
		this.repository.writeTensor( index, type, value );
		
		return value;
	}	
	
	/**
	 * 
	 * @param	index
	 * @param	type
	 * @param	output
	 * @return
	 */
	public function getValues( index:Int, type:DataType, output:ITensor ):ITensor
	{
		this.validate( index, type, output );		
		this.repository.readTensor( index, type, output );
		
		return output;
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	private function invalidate( index:Int, type:DataType )
	{
		if( type != DataType.TRANSLATION )
			this.validation.invalidate( index, type != DataType.MATRIX ? DataType.MATRIX : DataType.TRANSLATION );		
	}
	
	//
	private function validate( index:Int, type:DataType, output:ITensor )
	{
		if( this.validation.isInvalid( index, type ) )
		{
			var rotation:IQuaternion = new Quaternion();
			var matrix:IMatrix44 = new Matrix44();
			var scale:IVector3 = new Vector3();
			
			//
			if( type == DataType.MATRIX )
			{
				trace("update matrix by components" );
				
				//
				this.repository.readTensor( index, DataType.ROTATION, rotation );
				this.repository.readTensor( index, DataType.SCALE, scale );
				
				MathTransformation.setRotation( matrix, rotation );
				MathTransformation.setScale( matrix, scale );
				
				this.repository.writeTensor( index, type, matrix );
			}
			else
			{
				trace("update components by matrix; requested component: " + type );
				
				//
				this.repository.readTensor( index, DataType.MATRIX, matrix );
				
				MathTransformation.getRotation( matrix, rotation );
				MathTransformation.getScale( matrix, scale );
				
				this.repository.writeTensor( index, DataType.ROTATION, rotation  );
				this.repository.writeTensor( index, DataType.SCALE, scale );	
			}
			
		}
	}
	
}

/**
 * ...
 * @author RK
 */
class TransformationSignature implements IByteSignature<DataType> 
{

	private var translation:ByteFormat 	= new ByteFormat( ByteType.FLOAT, 3 );	
	private var rotation:ByteFormat 	= new ByteFormat( ByteType.FLOAT, 4 );		
	private var scale:ByteFormat 		= new ByteFormat( ByteType.FLOAT, 3 );		
	private var matrix:ByteFormat 		= new ByteFormat( ByteType.FLOAT, 16 );	

	//
	public function new(){}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function getFormat( type:DataType ):ByteFormat
	{
		switch( type )
		{
			case DataType.TRANSLATION: 	return this.translation;
			case DataType.ROTATION: 	return this.rotation;
			case DataType.SCALE: 		return this.scale;
			case DataType.MATRIX: 		return this.matrix;
		}
	}
	
	//
	public function getStepSizeType( type:DataType ):Int 
	{
		switch( type )
		{
			case DataType.TRANSLATION: 	return 7 * 8 + 12 * 8;		// translation in matrix 41-43
			case DataType.ROTATION: 	return 0;
			case DataType.SCALE: 		return 4 * 8;
			case DataType.MATRIX: 		return 7 * 8;
		}
	}
	
	//
	public function getStepSizeEntry( type:DataType ):Int 
	{
		return (4 + 3 + 16) * 8;
	}
	
	//
	public function getSizeTotal( numEntries:Int ):Int
	{
		return (4 + 3 + 16) * 8 * numEntries;
	}
	
}

/**
 * ...
 * @author RK
 */
class TransformationValidation implements IValidationTable<DataType> 
{

	//
	private var status:Vector<Bool>;	
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( numEntries:Int ) 
	{
		this.status = new Vector<Bool>( numEntries * 2 );
	}	
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
		
	//
	inline private function getIndex( index:Int, type:DataType ):Int
	{
		return index * 2 + (type == DataType.MATRIX ? 0 : 1);
	}
	
	//
	inline public function isInvalid( index:Int, type:DataType ):Bool	
	{
		return this.status[ this.getIndex( index, type ) ];		
	}
	
	//
	inline public function isValid( index, type:DataType ):Bool
	{
		return !this.isInvalid( index, type );
	}
	
	//
	inline public function invalidate( index:Int, type:DataType ):Void
	{
		this.status[ this.getIndex( index, type ) ] = true;		
	}	
	
	//
	inline public function validate( index:Int, type:DataType ):Void
	{
		this.status[ this.getIndex( index, type ) ] = false;
	}
	
}

/**
 * ...
 * @author RK
 */
class TransformationRepository extends ByteRepository<DataType,TransformationSignature>
{

	//
	public function new( numEntries:Int ) 
	{
		super( new TransformationSignature(), numEntries );
	}
	
}