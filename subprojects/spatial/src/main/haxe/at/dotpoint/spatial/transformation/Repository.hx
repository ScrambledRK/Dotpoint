package at.dotpoint.spatial.transformation;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.graph.IGraphRepository;
import at.dotpoint.math.tensor.ITensor;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import haxe.io.Bytes;

/**
 * ...
 * @author RK
 */
class Repository implements IGraphRepository<DataType>
{
	//
	private var bytes:Bytes;

	// ------------ //
	
	private static var translation:ByteFormat 	= new ByteFormat( ByteType.FLOAT, 3, 0 );
	private static var rotation:ByteFormat 		= new ByteFormat( ByteType.FLOAT, 4, 3 );
	private static var scale:ByteFormat 		= new ByteFormat( ByteType.FLOAT, 3, 7 );
	private static var matrix:ByteFormat 		= new ByteFormat( ByteType.FLOAT, 16, 10 );
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( numEntries:Int )
	{
		this.bytes = Bytes.alloc( numEntries * this.getTotalByteSize() );
	}

	// ************************************************************************ //
	// IGraphRepository
	// ************************************************************************ //

	//
	inline public function getByteFormat( type:DataType ):ByteFormat
	{
		switch ( type )
		{
			case DataType.TRANSLATION:	return translation;		// already instances, for proper inlining
			case DataType.ROTATION:		return rotation;		// doesn'T work with constructor inlining
			case DataType.SCALE:		return scale;
			case DataType.MATRIX:		return matrix;
		}
	}

	//
	inline private function getTotalByteSize():Int
	{
		return (3 + 4 + 3 + 16) * 8;
	}
	
	// ************************************************************************ //
	// Bytes
	// ************************************************************************ //
	
	//
	inline private function setValues( index:Int, value:ITensor, type:DataType ):Void
	{		
		var format:ByteFormat = this.getByteFormat( type );
		var start:Int = index * this.getTotalByteSize() + format.stride;
			
		for( i in 0...format.length )		
			this.bytes.setDouble( start + i * format.size, value.getByIndex( i ) );	
		
	}
	
	//
	inline private function getValues( index:Int, output:ITensor, type:DataType ):Void
	{
		var format:ByteFormat = this.getByteFormat( type );
		var start:Int = index * this.getTotalByteSize() + format.stride;
			
		for( i in 0...format.length )		
			output.setByIndex( i, bytes.getDouble( start + i * format.size ) );			
	}

	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	/**
	 * TRANSLATION
	 *
	 * @param	node
	 * @param	value
	 */
	public function setTranslation( index:Int, value:IVector3 ):Void
	{
		this.setValues( index, value, DataType.TRANSLATION );
	}

	//
	public function getTranslation( index:Int, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		//
		this.getValues( index, output, DataType.TRANSLATION );

		//
		return output;
	}

	/**
	 * ROTATION
	 *
	 * @param	node
	 * @param	value
	 */
	public function setRotation( index:Int, value:IQuaternion ):Void
	{
		this.setValues( index, value, DataType.ROTATION );
	}

	//
	public function getRotation( index:Int, ?output:IQuaternion ):IQuaternion
	{
		if ( output == null )
			output = new Quaternion();

		//
		this.getValues( index, output, DataType.ROTATION );

		//
		return output;
	}

	/**
	 * SCALING
	 *
	 * @param	node
	 * @param	value
	 */
	public function setScaling( index:Int, value:IVector3 ):Void
	{
		this.setValues( index, value, DataType.SCALE );
	}

	//
	public function getScaling( index:Int, ?output:IVector3 ):IVector3
	{
		if ( output == null )
			output = new Vector3();

		//
		this.getValues( index, output, DataType.SCALE );

		//
		return output;
	}

	/**
	 * MATRIX
	 *
	 * @param	node
	 * @param	value
	 */
	public function setMatrix( index:Int, value:IMatrix44 ):Void
	{
		this.setValues( index, value, DataType.MATRIX );
	}

	//
	public function getMatrix( index:Int, ?output:IMatrix44 ):IMatrix44
	{
		if ( output == null )
			output = new Matrix44();

		//
		this.getValues( index, output, DataType.MATRIX );

		//
		return output;
	}

}