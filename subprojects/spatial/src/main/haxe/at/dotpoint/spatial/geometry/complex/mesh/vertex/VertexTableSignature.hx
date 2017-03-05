package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteSignature;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.spatial.geometry.complex.mesh.MeshSignature;

/**
 * ...
 * @author RK
 */
class VertexTableSignature extends ByteSignature
{	
	//
	public function new( signature:VertexSignature )
	{
		super( signature.size, this.getLayoutType( signature ) );
		
		//
		switch( this.layout )
		{
			case ByteLayoutType.INTERLEAVED:
			{
				var format:ByteFormat = new ByteFormat( ByteType.INT, 1 );
		
				for( j in 0...signature.size )
				{
					if( signature.entries[j] > 0 )
						this.setFormat( j, format, 1 );	
				}					
			}
			
			case ByteLayoutType.BLOCKED:
			{
				var format:ByteFormat = new ByteFormat( ByteType.INT, 0 );
		
				for( j in 0...signature.size )					
				{
					if( signature.entries[j] > 0 )
						this.setFormat( j, format, 0 );
				}
			}
		}		
	}
	
	//
	inline private function getLayoutType( signature:VertexSignature ):ByteLayoutType
	{
		var layout:ByteLayoutType = ByteLayoutType.BLOCKED;
		
		if( signature.layout == ByteLayoutType.BLOCKED )
			layout = ByteLayoutType.INTERLEAVED;
			
		return layout;
	}
}