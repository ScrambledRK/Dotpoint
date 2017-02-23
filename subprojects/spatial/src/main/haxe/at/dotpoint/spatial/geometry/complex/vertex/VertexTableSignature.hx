package at.dotpoint.spatial.geometry.complex.vertex;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteSignature;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.spatial.geometry.complex.MeshSignature;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class VertexTableSignature extends ByteSignature<VertexType>
{	
	//
	public function new( signature:MeshSignature )
	{
		var layout:ByteLayoutType = this.getLayoutType( signature );
		
		//
		super( new Vector<VertexType>( signature.size ), layout );
		
		//
		switch( layout )
		{
			case ByteLayoutType.INTERLEAVED:
			{
				var format:ByteFormat = new ByteFormat( ByteType.INT, 1 );
		
				for( j in 0...signature.size )
					this.setFormat( VertexType.createByIndex(j), format, 1 );	
			}
			
			case ByteLayoutType.BLOCKED:
			{
				var format:ByteFormat = new ByteFormat( ByteType.INT, 0 );
		
				for( j in 0...signature.size )
					this.setFormat( VertexType.createByIndex(j), format, 0 );	
			}
		}		
	}
	
	//
	inline private function getLayoutType( signature:MeshSignature ):ByteLayoutType
	{
		var layout:ByteLayoutType = ByteLayoutType.BLOCKED;
		
		if( signature.layout == ByteLayoutType.BLOCKED )
			layout = ByteLayoutType.INTERLEAVED;
			
		return layout;
	}
}