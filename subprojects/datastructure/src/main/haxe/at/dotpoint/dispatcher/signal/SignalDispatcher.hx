package at.dotpoint.dispatcher.signal;

import haxe.ds.Vector;

#if openfl
	private typedef InternalList<T> = Array<T>;
#else
	private typedef InternalList<T> = Vector<T>;
#end

/**
 * ...
 * @author RK
 */
class SignalDispatcher<TData:Dynamic,TListener:Dynamic> implements IDispatcher<TData,TListener>
{

	/**
	 *
	 */
	private var listener:InternalList<TData->Void>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?size:Int = 1 )
	{
        #if openfl
            this.listener = new Array<TData->Void>();
        #else
            this.listener = new Vector<TData->Void>( size );
        #end
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 *
	 * @param	event
	 *
	 */
	public function dispatch( event:TData ):Bool
	{
		for( i in 0...this.listener.length )
		{
			this.listener[i]( event );
		}

		return true;
	}

	/**
	 *
	 * @param	type
	 * @param	call
	 */
	public function addListener( type:TListener, call:TData->Void ):Void
	{
        for( j in 0...this.listener.length )
        {
            if( this.listener[j] == null )
            {
                this.listener[j] = call;
                return;
            }
        }
	}

	/**
	 *
	 * @param	type
	 * @param	call
	 */
	public function removeListener( type:TListener, call:TData->Void ):Void
	{
        for( j in 0...this.listener.length )
        {
            if( this.listener[j] == call )
            {
                this.listener[j] = null;
                return;
            }
        }
	}

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function hasListener( type:TListener ):Bool
	{
        for( j in 0...this.listener.length )
        {
            if( this.listener[j] != null )
                return true;
        }

        return false;
	}

	/**
	 *
	 *
	 *
	 */
	public function clearListeners():Void
	{
        for( j in 0...this.listener.length )
            this.listener[j] = null;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	public function toString():String
	{
		return "[" + Type.getClassName( Type.getClass(this) ) + "]";
	}
}