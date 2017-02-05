package at.dotpoint.datastructure.graph;
import haxe.io.Bytes;

/**
 * @author RK
 */
interface IGraphContainer<TStructure:EnumValue,TRepository:EnumValue>
{
	public function getRelations( key:Int, type:TStructure ):Iterator<Int>;
	public function getRepository( type:TRepository ):IGraphRepository<TRepository>;
}