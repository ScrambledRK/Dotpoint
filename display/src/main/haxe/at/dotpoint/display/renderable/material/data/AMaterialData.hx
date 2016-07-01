package haxe.at.dotpoint.display.renderable.material.data;
import haxe.at.dotpoint.core.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.display.renderable.ARenderableData;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;

/**
 * ...
 * @author RK
 */
class AMaterialData extends ARenderableData<MaterialSignature> implements IMaterialData
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?name:String )
    {
		super( name );
	}

	// ************************************************************************ //
	// Signature
	// ************************************************************************ //

	/**
	 *
	 */
	public function getRegisterData( type:RegisterType ):Array<Float>
	{
		throw "must override method";
		return null;
	}
}