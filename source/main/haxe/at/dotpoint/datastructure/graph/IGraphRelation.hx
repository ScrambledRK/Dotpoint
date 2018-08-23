package at.dotpoint.datastructure.graph;

/**
 *
 */
interface IGraphRelation extends IGraphIndex
{

	//
	public function getNodeIndices( type:Int ):Null<Iterable<Int>>;

}
