package at.dotpoint.dispatcher.lazy;

class LazyComponent
{

	/**
	 * valid? invalid? currently validating?
	 */
	public var status:LazyStatus;

	// -------------- //

	/**
	 * inform all depending components that this one changed
	 */
	public var onUpdate:Void->Void;

	/**
	 * validate this currently invalid component
	 */
	public var onValidate:Void->Void;

	/**
	 * only dispatchUpdate if there are interessted components
	 */
	public var allowDispatchUpdate:Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?onUpdate:Void->Void, ?onValidate:Void->Void )
	{
		if( onUpdate != null ) this.onUpdate = onUpdate;
		else this.setDefaultOnUpdate();

		if( onValidate != null ) this.onValidate = onValidate;
		else this.setDefaultOnValidate();

		// ------------- //

		this.allowDispatchUpdate = true;
		this.status = LazyStatus.VALID;
	}

	// ************************************************************************ //
	// Lazy
	// ************************************************************************ //

	/**
	 *
	 */
	inline public function dispatchUpdate():Void
	{
		if( this.allowDispatchUpdate )
			this.onUpdate();
	}

	/**
	 *
	 */
	inline public function validate():Void
	{
		if( this.status == LazyStatus.INVALID )
			this.onValidate();
	}

	/**
	 *
	 */
	private function invalidate():Void
	{
		this.status = LazyStatus.INVALID;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	public function setDefaultOnUpdate():Void
	{
		this.onUpdate = function()
		{
			this.allowDispatchUpdate = false;
			this.status = LazyStatus.INVALID;
		};
	}

	/**
	 *
	 */
	public function setDefaultOnValidate():Void
	{
		this.onValidate = function()
		{
			this.allowDispatchUpdate = true;
			this.status = LazyStatus.VALID;
		};
	}
}
