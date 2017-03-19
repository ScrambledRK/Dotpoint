package at.dotpoint.spatial.transformation.local;

import at.dotpoint.datastructure.bytes.IByteRepresentation;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.vector.IVector3;


/**
 * @author RK
 */
interface ITransformation extends IByteRepresentation<TransformationCollection>
{
	//
	public var index:Int;

	//
	public var translation:IVector3;
	public var rotation:IQuaternion;
	public var scale:IVector3;

	//
	public function getMatrix( ?output:IMatrix44 ):IMatrix44;
	public function setMatrix( value:IMatrix44 ):Void;

	//
	public function hasRotation():Bool;
	public function hasScaling():Bool;
}