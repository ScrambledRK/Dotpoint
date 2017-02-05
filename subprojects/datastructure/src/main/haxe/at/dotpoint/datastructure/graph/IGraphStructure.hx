package at.dotpoint.datastructure.graph;

/**
 * @author RK
 */
interface IGraphStructure
{
	public function getConnections( key:Int ):Iterator<Int>;
}