package at.dotpoint.datastructure.graph;

/**
 *
 */
interface IGraphRepository
{

	//
	public function getNode( type:Int, index:Int ):Null<IGraphNode>;
	public function setNode( node:IGraphNode ):Int;

	//
	public function getRelation( type:Int, index:Int ):Null<IGraphRelation>;
	public function setRelation( relation:IGraphRelation ):Int;

}
