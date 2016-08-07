package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXINTELSwapEvent")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/INTEL/swap_event.txt">GLX_INTEL_swap_event</a> extension.
 * 
 * <p>This extension adds a new event type, {@link #GLX_BUFFER_SWAP_COMPLETE_INTEL_MASK BUFFER_SWAP_COMPLETE_INTEL_MASK}, which is sent to the client via the X11 event stream and
 * selected/consumed by the normal GLX event mask mechanisms, to indicate when a previously queued swap has completed.</p>
 * 
 * <p>Requires {@link GLX13 GLX 1.3}.</p>
 */
extern class GLXINTELSwapEvent 
{
/** Accepted by the {@code mask} parameter of {@link GLX13#glXSelectEvent SelectEvent} and returned in the {@code mask} parameter of {@link GLX13#glXGetSelectedEvent GetSelectedEvent}.  */
	inline static public var GLX_BUFFER_SWAP_COMPLETE_INTEL_MASK:Int = 67108864;
/** Returned in the {@code event_type} field of a "swap complete" event.  */
	inline static public var GLX_EXCHANGE_COMPLETE_INTEL:Int = 33152;
/** Returned in the {@code event_type} field of a "swap complete" event.  */
	inline static public var GLX_COPY_COMPLETE_INTEL:Int = 33153;
/** Returned in the {@code event_type} field of a "swap complete" event.  */
	inline static public var GLX_FLIP_COMPLETE_INTEL:Int = 33154;

}
