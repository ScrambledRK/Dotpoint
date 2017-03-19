package at.dotpoint.spatial.transformation.world;

import at.dotpoint.datastructure.graph.IGraphStructure;

/**
 * ...
 * @author RK
 */
class TransformationRelation implements IGraphStructure<RelationType> 
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new( size:Int ) 
	{
		
	}
	
	// ************************************************************************ //
	// IGraphStructure
	// ************************************************************************ //	
	
	//
	public function getConnections( key:Int ):Iterator<Int> 
	{
		return null;
	}
	
}