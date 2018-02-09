package at.dotpoint.datastructure.bytes;
import haxe.ds.Vector;
import haxe.io.Bytes;

/**
 * @author RK
 */
interface IByteRepository<TSignature:IByteSignature> 
{
	public var signature(default, null):TSignature;
}