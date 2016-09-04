package at.dotpoint.controls.keyboard;

/**
 * ...
 * @author RK
 */
class AKeyboardInput implements IKeyboardInput
{

	/**
	 *
	 */
	private var keyStatusMap:Map<Int,KeyStatus>;

	/**
	 *
	 */
	public var isInitialized(default, null):Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		this.isInitialized = false;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 * @param	keyCode
	 * @return
	 */
	public function isKeyDown( keyCode:Int ):Bool
	{
		if( this.keyStatusMap.exists( keyCode ) )
		{
			var status:KeyStatus = this.getKeyStatus( keyCode );

			if( status == KeyStatus.DOWN || status == KeyStatus.REPEAT )
				return true;
		}

		return false;
	}

	/**
	 *
	 * @param	keyCode
	 * @return
	 */
	public function getKeyStatus( keyCode:Int ):KeyStatus
	{
		if( this.keyStatusMap.exists( keyCode ) )
			return this.keyStatusMap.get( keyCode );

		return KeyStatus.UP;
	}

	/**
	 *
	 * @param	keyCode
	 * @param	KeyStatus
	 */
	public function setKeyStatus( keyCode:Int, status:KeyStatus ):Void
	{
		this.keyStatusMap.set( keyCode, status );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	public function initialize():Void
	{
		if( this.isInitialized )
			this.clear();

		this.keyStatusMap = new Map<Int,KeyStatus>();
		this.isInitialized = true;
	}

	/**
	 *
	 */
	public function clear():Void
	{
		this.keyStatusMap = null;
		this.isInitialized = false;
	}
}