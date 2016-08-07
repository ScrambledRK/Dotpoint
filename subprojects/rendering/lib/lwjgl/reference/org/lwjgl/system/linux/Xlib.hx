package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.Xlib")
@:final
/** Native bindings to Xlib.h.  */
extern class Xlib 
{
/** Boolean values  */
	inline static public var True:Int = 1;
/** Boolean values  */
	inline static public var False:Int = 0;
/** Event queue modes.  */
	inline static public var QueuedAlready:Int = 0;
/** Event queue modes.  */
	inline static public var QueuedAfterReading:Int = 1;
/** Event queue modes.  */
	inline static public var QueuedAfterFlush:Int = 2;
/** JNI method for {@link #XUngrabPointer}  */
	static public function nXUngrabPointer(display:haxe.Int64,time:haxe.Int64):Int;
/** JNI method for {@link #XRaiseWindow}  */
	static public function nXRaiseWindow(display:haxe.Int64,w:haxe.Int64):Int;
/** JNI method for {@link #XFreeCursor}  */
	static public function nXFreeCursor(display:haxe.Int64,cursor:haxe.Int64):Int;
/** JNI method for {@link #XDisplayHeightMM}  */
	static public function nXDisplayHeightMM(display:haxe.Int64,screen_number:Int):Int;
/** JNI method for {@link #XDefaultDepth}  */
	static public function nXDefaultDepth(display:haxe.Int64,screen_number:Int):Int;
/** JNI method for {@link #XInternAtom}  */
	static public function nXInternAtom(display:haxe.Int64,atom_name:haxe.Int64,only_if_exists:Int):haxe.Int64;
/**
 * Creates an unmapped subwindow for a specified parent window, returns the window ID of the created window, and causes the X server to generate a
 * {@code CreateNotify }event. The created window is placed on top in the stacking order with respect to siblings.
 * 
 * <p>The coordinate system has the X axis horizontal and the Y axis vertical with the origin [0, 0] at the upper-left corner. Coordinates are integral, in
 * terms of pixels, and coincide with pixel centers. Each window and pixmap has its own coordinate system. For a window, the origin is inside the border at
 * the inside, upper-left corner.</p>
 * 
 * <p>The x and y coordinates are the top-left outside corner of the window's borders and are relative to the inside of the parent window's borders.</p>
 * 
 * <p>The width and height are the created window's inside dimensions and do not include the created window's borders.</p>
 *
 * @param display      the connection to the X server
 * @param parent       the parent window
 * @param x            the window x-coordinate
 * @param y            the window y-coordinate
 * @param width        the window width
 * @param height       the window height
 * @param border_width the border width
 * @param depth        the window's depth. A depth of {@link X#GrabSuccess} means the depth is taken from the parent.
 * @param windowClass  the created window's class. One of:<br>{@link X#InputOutput}, {@link X#InputOnly}, {@link X#CopyFromParent}
 * @param visual       the visual type. A visual of {@link X#GrabSuccess} means the visual type is taken from the parent.
 * @param valuemask    which window attributes are defined in the attributes argument. This mask is the bitwise inclusive OR of the valid attribute mask bits. If
 *                     {@code valuemask} is zero, the attributes are ignored and are not referenced.
 * @param attributes   the structure from which the values (as specified by the value mask) are to be taken
 */
	static public function XCreateWindow(display:haxe.Int64,parent:haxe.Int64,x:Int,y:Int,width:Int,height:Int,border_width:Int,depth:Int,windowClass:Int,visual:java.nio.ByteBuffer,valuemask:haxe.Int64,attributes:java.nio.ByteBuffer):haxe.Int64;
/**
 * Searches the event queue and then any events available on the server connection for the first event that matches the specified type. If it finds a
 * match, {@code XCheckTypedEvent()} removes that event, copies it into the specified {@link XEvent} structure, and returns {@link #True}. The other events
 * in the queue are not discarded. If the event is not available, {@code XCheckTypedEvent()} returns {@link #False}, and the output buffer will have been
 * flushed.
 *
 * @param display      the connection to the X server
 * @param event_type   the event type to be compared
 * @param event_return the matched event's associated {@link XEvent} structure
 */
	static public function XCheckTypedEvent(display:haxe.Int64,event_type:Int,event_return:java.nio.ByteBuffer):Int;
/**
 * Fills the specified rectangle as if a four-point FillPolygon protocol request were specified for each rectangle.
 *
 * @param display the connection to the X server
 * @param d       the drawable
 * @param gc      the GC
 * @param x       the x-coordinate
 * @param y       the y-coordinate
 * @param width   the rectangle width
 * @param height  the rectangle height
 */
	static public function XFillRectangle(display:haxe.Int64,d:haxe.Int64,gc:haxe.Int64,x:Int,y:Int,width:Int,height:Int):Int;
/** JNI method for {@link #XDisplayWidthMM}  */
	static public function nXDisplayWidthMM(display:haxe.Int64,screen_number:Int):Int;
/** JNI method for {@link #XDefineCursor}  */
	static public function nXDefineCursor(display:haxe.Int64,w:haxe.Int64,cursor:haxe.Int64):Int;
/**
 * Free in-memory data that was created by an Xlib function.
 *
 * @param data the data that is to be freed
 */
/** PointerBuffer version of: {@link #XFree}  */
	static public function XFree(data:org.lwjgl.PointerBuffer):Int;
	@:overload(function (data:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #XDisplayWidth}  */
	static public function nXDisplayWidth(display:haxe.Int64,screen_number:Int):Int;
/** JNI method for {@link #XQueryExtension}  */
	static public function nXQueryExtension(display:haxe.Int64,name:haxe.Int64,major_opcode_return:haxe.Int64,first_event_return:haxe.Int64,first_error_return:haxe.Int64):Int;
/** JNI method for {@link #XGetEventData}  */
	static public function nXGetEventData(display:haxe.Int64,cookie:haxe.Int64):Int;
/**
 * Raises the specified window to the top of the stack so that no sibling window obscures it. If the windows are regarded as overlapping sheets of paper
 * stacked on a desk, then raising a window is analogous to moving the sheet to the top of the stack but leaving its x and y location on the desk constant.
 * Raising a mapped window may generate Expose events for the window and any mapped subwindows that were formerly obscured.
 *
 * @param display the connection to the X server
 * @param w       the window
 */
	static public function XRaiseWindow(display:haxe.Int64,w:haxe.Int64):Int;
/**
 * Translates a coordinate in one window to the coordinate space of another window.
 *
 * @param display       the connection to the X server
 * @param src_w         the source window
 * @param dest_w        the destination window
 * @param src_x         the x-coordinate within the source window
 * @param src_y         the y-coordinate within the source window
 * @param dest_x_return the x-coordinate within the destination window
 * @param dest_y_return the x-coordinate within the destination window
 * @param child_return  the child if the coordinates are contained in a mapped child of the destination window
 */
/** Alternative version of: {@link #XTranslateCoordinates}  */
	static public function XTranslateCoordinates(display:haxe.Int64,src_w:haxe.Int64,dest_w:haxe.Int64,src_x:Int,src_y:Int,dest_x_return:java.nio.IntBuffer,dest_y_return:java.nio.IntBuffer,child_return:org.lwjgl.PointerBuffer):Int;
	@:overload(function (display:haxe.Int64,src_w:haxe.Int64,dest_w:haxe.Int64,src_x:Int,src_y:Int,dest_x_return:java.nio.ByteBuffer,dest_y_return:java.nio.ByteBuffer,child_return:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #XScreenOfDisplay}  */
	static public function nXScreenOfDisplay(display:haxe.Int64,screen_number:Int):haxe.Int64;
/**
 * Sets the error handler that will be invoked when a X11 protocol error occurs. If {@code handler} is {@code NULL}, the default error handler is used. The action
 * of the default handlers is to print an explanatory message and exit.
 * 
 * <p>If the returned value is non-{@code NULL}, the new error handler must pass the error down to the previous error handler. Use {@link #XErrorHandler} to do that.</p>
 *
 * @param handler the program's supplied error handler.
 *
 * @return the previous error handler
 */
	static public function XSetErrorHandler(handler:org.lwjgl.system.linux.XErrorHandler):org.lwjgl.system.linux.XErrorHandler;
/**
 * Sends a {@code WM_CHANGE_STATE} {@code ClientMessage} event with a format of 32 and a first data element of {@code IconicState} and a window of {@code w}
 * to the root window of the specified screen with an event mask set to {@code SubstructureNotifyMask} | {@code SubstructureRedirectMask}. Window managers
 * may elect to receive this message and if the window is in its normal state, may treat it as a request to change the window's state from normal to
 * iconic. If the {@code WM_CHANGE_STATE} property cannot be interned, {@code XIconifyWindow()} does not send a message and returns a zero status. It
 * returns a nonzero status if the client message is sent successfully; otherwise, it returns a zero status.
 *
 * @param display       the connection to the X server
 * @param w             the window
 * @param screen_number the appropriate screen number on the host server
 */
	static public function XIconifyWindow(display:haxe.Int64,w:haxe.Int64,screen_number:Int):Int;
/**
 * Sets the window manager hints that include icon information and location, the initial state of the window, and whether the application relies on the
 * window manager to get keyboard input.
 *
 * @param display the connection to the X server
 * @param w       the window
 * @param hints   the {@link XWMHints} structure to be used
 */
	static public function XSetWMHints(display:haxe.Int64,w:haxe.Int64,hints:java.nio.ByteBuffer):Int;
/**
 * Retrieves a window property.
 *
 * @param display              the connection to the X server
 * @param w                    the window
 * @param property             the property name
 * @param long_offset          the offset in the specified property (in 32-bit quantities) where the data is to be retrieved
 * @param long_length          the length in 32-bit multiples of the data to be retrieved
 * @param delete               a Boolean value that determines whether the property is deleted
 * @param req_type             the atom identifier associated with the property type or {@link X#AnyPropertyType}.
 * @param actual_type_return   the atom identifier that defines the actual type of the property
 * @param actual_format_return the actual format of the property
 * @param nitems_return        the actual number of 8-bit, 16-bit, or 32-bit items stored in the {@code prop_return} data
 * @param bytes_after_return   the number of bytes remaining to be read in the property if a partial read was performed
 * @param prop_return          the data in the specified format
 */
/** Alternative version of: {@link #XGetWindowProperty}  */
	static public function XGetWindowProperty(display:haxe.Int64,w:haxe.Int64,property:haxe.Int64,long_offset:haxe.Int64,long_length:haxe.Int64,delete:Int,req_type:haxe.Int64,actual_type_return:org.lwjgl.PointerBuffer,actual_format_return:java.nio.IntBuffer,nitems_return:org.lwjgl.PointerBuffer,bytes_after_return:org.lwjgl.PointerBuffer,prop_return:org.lwjgl.PointerBuffer):Int;
	@:overload(function (display:haxe.Int64,w:haxe.Int64,property:haxe.Int64,long_offset:haxe.Int64,long_length:haxe.Int64,delete:Int,req_type:haxe.Int64,actual_type_return:java.nio.ByteBuffer,actual_format_return:java.nio.ByteBuffer,nitems_return:java.nio.ByteBuffer,bytes_after_return:java.nio.ByteBuffer,prop_return:java.nio.ByteBuffer):Int {})
/**
 * If a cursor is set, it will be used when the pointer is in the window. If the cursor is {@link X#None}, it is equivalent to {@link #XUndefineCursor}.
 *
 * @param display the connection to the X server
 * @param w       the window
 * @param cursor  the cursor that is to be displayed or {@link X#None}
 */
	static public function XDefineCursor(display:haxe.Int64,w:haxe.Int64,cursor:haxe.Int64):Int;
/** JNI method for {@link #XGetInputFocus}  */
	static public function nXGetInputFocus(display:haxe.Int64,focus_return:haxe.Int64,revert_to_return:haxe.Int64):Int;
/**
 * Returns the root window the pointer is logically on and the pointer coordinates relative to the root window's origin. If {@code XQueryPointer} returns
 * {@link #False}, the pointer is not on the same screen as the specified window, and {@code XQueryPointer} returns {@link X#None} to {@code child_return}
 * and zero to {@code win_x_return} and {@code win_y_return}. If {@code XQueryPointer} returns {@link #True}, the pointer coordinates returned to
 * {@code win_x_return} and {@code win_y_return} are relative to the origin of the specified window. In this case, {@code XQueryPointer} returns the child
 * that contains the pointer, if any, or else {@link X#None} to {@code child_return}.
 * 
 * <p>Returns the current logical state of the keyboard buttons and the modifier keys in {@code mask_return}. It sets {@code mask_return} to the bitwise
 * inclusive OR of one or more of the button or modifier key bitmasks to match the current state of the mouse buttons and the modifier keys.</p>
 *
 * @param display       the connection to the X server
 * @param w             the window
 * @param root_return   the root window that the pointer is in
 * @param child_return  the child window that the pointer is located in, if any
 * @param root_x_return the pointer x-coordinate relative to the root window's origin
 * @param root_y_return the pointer y-coordinate relative to the root window's origin
 * @param win_x_return  the pointer x-coordinate relative to the specified window
 * @param win_y_return  the pointer y-coordinate relative to the specified window
 * @param mask_return   the current state of the modifier keys and pointer buttons
 */
/** Alternative version of: {@link #XQueryPointer}  */
	static public function XQueryPointer(display:haxe.Int64,w:haxe.Int64,root_return:org.lwjgl.PointerBuffer,child_return:org.lwjgl.PointerBuffer,root_x_return:java.nio.IntBuffer,root_y_return:java.nio.IntBuffer,win_x_return:java.nio.IntBuffer,win_y_return:java.nio.IntBuffer,mask_return:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,w:haxe.Int64,root_return:java.nio.ByteBuffer,child_return:java.nio.ByteBuffer,root_x_return:java.nio.ByteBuffer,root_y_return:java.nio.ByteBuffer,win_x_return:java.nio.ByteBuffer,win_y_return:java.nio.ByteBuffer,mask_return:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #XCreateWindow}  */
	static public function nXCreateWindow(display:haxe.Int64,parent:haxe.Int64,x:Int,y:Int,width:Int,height:Int,border_width:Int,depth:Int,windowClass:Int,visual:haxe.Int64,valuemask:haxe.Int64,attributes:haxe.Int64):haxe.Int64;
/** JNI method for {@link #XRootWindow}  */
	static public function nXRootWindow(display:haxe.Int64,screen_number:Int):haxe.Int64;
/**
 * Returns an integer that describes the width of the screen in pixels.
 *
 * @param display       the connection to the X server
 * @param screen_number the appropriate screen number on the host server
 */
	static public function XDisplayWidth(display:haxe.Int64,screen_number:Int):Int;
/** JNI method for {@link #XDeleteProperty}  */
	static public function nXDeleteProperty(display:haxe.Int64,w:haxe.Int64,property:haxe.Int64):Int;
/**
 * First deletes the association between the pixmap ID and the pixmap. Then, the X server frees the pixmap storage when there are no references to it. The
 * pixmap should never be referenced again.
 *
 * @param display the connection to the X server
 * @param pixmap  the pixmap to free
 */
	static public function XFreePixmap(display:haxe.Int64,pixmap:haxe.Int64):Int;
/**
 * Deletes the specified property only if the property was defined on the specified window and causes the X server to generate a {@code PropertyNotify}
 * event on the window unless the property does not exist.
 *
 * @param display  the connection to the X server
 * @param w        the window
 * @param property the property atom
 */
	static public function XDeleteProperty(display:haxe.Int64,w:haxe.Int64,property:haxe.Int64):Int;
/**
 * Retrieves extra data from the specified cookie.
 *
 * @param display the connection to the X server
 * @param cookie  a pointer to a {@link XGenericEventCookie} structure.
 */
	static public function XGetEventData(display:haxe.Int64,cookie:java.nio.ByteBuffer):Int;
/** JNI method for {@link #XFreeEventData}  */
	static public function nXFreeEventData(display:haxe.Int64,cookie:haxe.Int64):Void;
/**
 * Changes the input focus and the last-focus-change time. It has no effect if the specified time is earlier than the current last-focus-change time or is
 * later than the current X server time. Otherwise, the last-focus-change time is set to the specified time ({@link X#CurrentTime} is replaced by the
 * current X server time). {@code XSetInputFocus} causes the X server to generate {@code FocusIn} and {@code FocusOut} events.
 * 
 * <p>Depending on the focus argument, the following occurs:
 * <ul>
 * <li>If focus is {@link X#None}, all keyboard events are discarded until a new focus window is set, and the {@code revert_to} argument is ignored.</li>
 * <li>If focus is a window, it becomes the keyboard's focus window. If a generated keyboard event would normally be reported to this window or one of its
 * inferiors, the event is reported as usual. Otherwise, the event is reported relative to the focus window.</li>
 * <li>If focus is {@link X#PointerRoot}, the focus window is dynamically taken to be the root window of whatever screen the pointer is on at each keyboard
 * event. In this case, the {@code revert_to} argument is ignored. The specified focus window must be viewable at the time {@code XSetInputFocus} is
 * called, or a {@link X#BadMatch} error results. If the focus window later becomes not viewable, the X server evaluates the revert_to argument to
 * determine the new focus window as follows:</li>
 * <li>If {@code revert_to} is {@link X#RevertToParent}, the focus reverts to the parent (or the closest viewable ancestor), and the new {@code revert_to}
 * value is taken to be {@link X#RevertToNone}.</li>
 * <li>If {@code revert_to} is {@link X#RevertToPointerRoot} or {@link X#RevertToNone}, the focus reverts to {@link X#PointerRoot} or {@link X#None},
 * respectively. When the focus reverts, the X server generates {@code FocusIn} and {@code FocusOut} events, but the last-focus-change time is not
 * affected.</li>
 * </ul></p>
 *
 * @param display   the connection to the X server
 * @param focus     the window, {@link X#PointerRoot} or {@link X#None}
 * @param revert_to where the input focus reverts to if the window becomes not viewable. One of:<br>{@link X#RevertToParent}, {@link X#RevertToPointerRoot}, {@link X#RevertToNone}
 * @param time      the time. You can pass either a timestamp or {@link X#CurrentTime}.
 */
	static public function XSetInputFocus(display:haxe.Int64,focus:haxe.Int64,revert_to:Int,time:haxe.Int64):Int;
/**
 * Copies the first event from the event queue into the specified {@link XEvent} structure and then removes it from the queue. If the event queue is empty,
 * {@code XNextEvent()} flushes the output buffer and blocks until an event is received.
 *
 * @param display      the connection to the X server
 * @param event_return a pointer to a {@link XEvent} structure that will receive the next event in the queue
 */
	static public function XNextEvent(display:haxe.Int64,event_return:java.nio.ByteBuffer):Int;
/**
 * Returns a connection number for the specified display. On a POSIX-conformant system, this is the file descriptor of the connection.
 *
 * @param display the connection to the X server
 */
	static public function XConnectionNumber(display:haxe.Int64):Int;
/** JNI method for {@link #XSetScreenSaver}  */
	static public function nXSetScreenSaver(display:haxe.Int64,timeout_return:Int,interval_return:Int,prefer_blanking_return:Int,allow_exposures_return:Int):Int;
/**
 * Frees the data associated with a cookie.
 *
 * @param display the connection to the X server
 * @param cookie  a pointer to a {@link XGenericEventCookie} structure.
 */
	static public function XFreeEventData(display:haxe.Int64,cookie:java.nio.ByteBuffer):Void;
/** JNI method for {@link #XTranslateCoordinates}  */
	static public function nXTranslateCoordinates(display:haxe.Int64,src_w:haxe.Int64,dest_w:haxe.Int64,src_x:Int,src_y:Int,dest_x_return:haxe.Int64,dest_y_return:haxe.Int64,child_return:haxe.Int64):Int;
/** JNI method for {@link #XDisplayHeight}  */
	static public function nXDisplayHeight(display:haxe.Int64,screen_number:Int):Int;
/**
 * Requests that the specified selection be converted to the specified target type.
 *
 * @param display   the connection to the X server
 * @param selection the selection atom
 * @param target    the target atom
 * @param property  the property name or {@link X#None}
 * @param requestor the requestor window
 * @param time      the time. You can pass either a timestamp or {@link X#CurrentTime}
 */
	static public function XConvertSelection(display:haxe.Int64,selection:haxe.Int64,target:haxe.Int64,property:haxe.Int64,requestor:haxe.Int64,time:haxe.Int64):Int;
/**
 * Returns an integer that describes the width of the screen in millimeters.
 *
 * @param display       the connection to the X server
 * @param screen_number the appropriate screen number on the host server
 */
	static public function XDisplayWidthMM(display:haxe.Int64,screen_number:Int):Int;
/** JNI method for {@link #XQueryPointer}  */
	static public function nXQueryPointer(display:haxe.Int64,w:haxe.Int64,root_return:haxe.Int64,child_return:haxe.Int64,root_x_return:haxe.Int64,root_y_return:haxe.Int64,win_x_return:haxe.Int64,win_y_return:haxe.Int64,mask_return:haxe.Int64):Int;
/**
 * Unmaps the specified window and causes the X server to generate an {@code UnmapNotify} event. If the specified window is already unmapped,
 * {@code XUnmapWindow()} has no effect. Normal exposure processing on formerly obscured windows is performed. Any child window will no longer be visible
 * until another map call is made on the parent. In other words, the subwindows are still mapped but are not visible until the parent is mapped. Unmapping
 * a window will generate {@code Expose} events on windows that were formerly obscured by it.
 *
 * @param display the connection to the X server
 * @param w       the window
 */
	static public function XUnmapWindow(display:haxe.Int64,w:haxe.Int64):Int;
/** JNI method for {@link #XFillRectangle}  */
	static public function nXFillRectangle(display:haxe.Int64,d:haxe.Int64,gc:haxe.Int64,x:Int,y:Int,width:Int,height:Int):Int;
/** JNI method for {@link #XGetWindowAttributes}  */
	static public function nXGetWindowAttributes(display:haxe.Int64,w:haxe.Int64,window_attributes_return:haxe.Int64):Int;
/**
 * Creates a pixmap of the width, height, and depth you specified and returns a pixmap ID that identifies it. It is valid to pass an {@link X#InputOnly}
 * window to the drawable argument. The width and height arguments must be nonzero, or a {@link X#BadValue} error results. The depth argument must be one
 * of the depths supported by the screen of the specified drawable, or a {@link X#BadValue} error results.
 *
 * @param display the connection to the X server
 * @param d       which screen the pixmap is created on
 * @param width   the pixmap width
 * @param height  the pixmap height
 * @param depth   the pixmap depth
 */
	static public function XCreatePixmap(display:haxe.Int64,d:haxe.Int64,width:Int,height:Int,depth:Int):haxe.Int64;
/** JNI method for {@link #XGetErrorText}  */
	static public function nXGetErrorText(display:haxe.Int64,code:Int,buffer_return:haxe.Int64,length:Int):Int;
/** JNI method for {@link #XBlackPixel}  */
	static public function nXBlackPixel(display:haxe.Int64,screen_number:Int):haxe.Int64;
/** JNI method for {@link #XFreeGC}  */
	static public function nXFreeGC(display:haxe.Int64,gc:haxe.Int64):Int;
/** JNI method for {@link #XFlush}  */
	static public function nXFlush(display:haxe.Int64):Int;
/**
 * Undoes the effect of a previous {@link #XDefineCursor} for this window. When the pointer is in the window, the parent's cursor will now be used. On the
 * root window, the default cursor is restored.
 *
 * @param display the connection to the X server
 * @param w       the window
 */
	static public function XUndefineCursor(display:haxe.Int64,w:haxe.Int64):Int;
/**
 * Returns a pointer to the default screen.
 *
 * @param display the connection to the X server
 */
	static public function XDefaultScreen(display:haxe.Int64):Int;
/** ByteBuffer version of: {@link #XChangeProperty}  */
/** IntBuffer version of: {@link #XChangeProperty}  */
/** ShortBuffer version of: {@link #XChangeProperty}  */
/**
 * Alters a property for the specified window and causes the X server to generate a {@code PropertyNotify} event on that window.
 *
 * @param display   the connection to the X server
 * @param w         the window
 * @param property  the property name
 * @param type      the type of the property
 * @param format    whether the data should be viewed as a list of 8-bit, 16-bit, or 32-bit quantities. One of:<br>8, 16, 32
 * @param mode      the mode of the operation. One of:<br>{@link X#PropModeReplace}, {@link X#PropModePrepend}, {@link X#PropModeAppend}
 * @param data      the property data
 * @param nelements the number of elements of the specified data format
 */
	static public function XChangeProperty(display:haxe.Int64,w:haxe.Int64,property:haxe.Int64,type:haxe.Int64,format:Int,mode:Int,data:java.nio.ByteBuffer,nelements:Int):Int;
	@:overload(function (display:haxe.Int64,w:haxe.Int64,property:haxe.Int64,type:haxe.Int64,format:Int,mode:Int,data:java.nio.ByteBuffer):Int {})
	@:overload(function (display:haxe.Int64,w:haxe.Int64,property:haxe.Int64,type:haxe.Int64,format:Int,mode:Int,data:java.nio.IntBuffer):Int {})
	@:overload(function (display:haxe.Int64,w:haxe.Int64,property:haxe.Int64,type:haxe.Int64,format:Int,mode:Int,data:java.nio.ShortBuffer):Int {})
/**
 * Initializes Xlib support for concurrent threads. This function must be the first Xlib function a multi-threaded program calls, and it must complete
 * before any other Xlib call is made. This function returns a nonzero status if initialization was successful; otherwise, it returns zero. On systems that
 * do not support threads, this function always returns zero.
 * 
 * <p>It is only necessary to call this function if multiple threads might use Xlib concurrently. If all calls to Xlib functions are protected by some other
 * access mechanism (for example, a mutual exclusion lock in a toolkit or through explicit client programming), Xlib thread initialization is not required.
 * It is recommended that single-threaded programs not call this function.</p>
 */
	static public function XInitThreads():Int;
/**
 * Sets the {@link XSizeHints} structure for the named property and the specified window.
 *
 * @param display  the connection to the X server
 * @param w        the window
 * @param hints    the {@link XSizeHints} structure to be used
 * @param property the property name
 */
	static public function XSetSizeHints(display:haxe.Int64,w:haxe.Int64,hints:java.nio.ByteBuffer,property:haxe.Int64):Int;
/** JNI method for {@link #XGetScreenSaver}  */
	static public function nXGetScreenSaver(display:haxe.Int64,timeout_return:haxe.Int64,interval_return:haxe.Int64,prefer_blanking_return:haxe.Int64,allow_exposures_return:haxe.Int64):Int;
/** JNI method for {@link #XSetInputFocus}  */
	static public function nXSetInputFocus(display:haxe.Int64,focus:haxe.Int64,revert_to:Int,time:haxe.Int64):Int;
/**
 * Closes the connection to the X server for the display specified in the Display structure and destroys all windows, resource IDs (Window, Font, Pixmap,
 * Colormap, Cursor, and GContext), or other resources that the client has created on this display, unless the close-down mode of the resource has been
 * changed (see {@link #XSetCloseDownMode}). Therefore, these windows, resource IDs, and other resources should never be referenced again or an error will
 * be generated. Before exiting, you should call {@code XCloseDisplay} explicitly so that any pending errors are reported as {@code XCloseDisplay} performs
 * a final {@code XSync} operation.
 *
 * @param display the connection to the X server
 */
	static public function XCloseDisplay(display:haxe.Int64):Int;
/** JNI method for {@link #XIconifyWindow}  */
	static public function nXIconifyWindow(display:haxe.Int64,w:haxe.Int64,screen_number:Int):Int;
/** JNI method for {@link #XMapRaised}  */
	static public function nXMapRaised(display:haxe.Int64,w:haxe.Int64):Int;
/** CharSequence version of: {@link #XInternAtom}  */
/**
 * Returns the atom identifier associated with the specified {@code atom_name} string.
 *
 * @param display        the connection to the X server
 * @param atom_name      the name associated with the atom you want returned
 * @param only_if_exists a Boolean value that indicates whether the atom must be created
 */
	static public function XInternAtom(display:haxe.Int64,atom_name:java.nio.ByteBuffer,only_if_exists:Int):haxe.Int64;
	@:overload(function (display:haxe.Int64,atom_name:java.lang.CharSequence,only_if_exists:Int):haxe.Int64 {})
/**
 * Actively grabs control of the pointer and returns {@link X#GrabSuccess} if the grab was successful. Further pointer events are reported only to the
 * grabbing client. {@code XGrabPointer} overrides any active pointer grab by this client. If {@code owner_events} is {@link #False}, all generated pointer
 * events are reported with respect to {@code grab_window} and are reported only if selected by {@code event_mask}. If owner_events is True and if a generated pointer event would normally be
 * reported to this client, it is reported as usual. Otherwise, the event is reported with respect to the grab_window and is reported only if selected by event_mask. For either value of owner_events, unreported events are discarded.
 *
 * @param display       the connection to the X server
 * @param grab_window   the grab window
 * @param owner_events  a Boolean value that indicates whether the pointer events are to be reported as usual or reported with respect to the grab window if selected by the
 *                      event mask
 * @param event_mask    which pointer events are reported to the client. The mask is the bitwise inclusive OR of the valid pointer event mask bits.
 * @param pointer_mode  further processing of pointer events. One of:<br>{@link X#GrabModeSync}, {@link X#GrabModeAsync}
 * @param keyboard_mode further processing of keyboard events. One of:<br>{@link X#GrabModeSync}, {@link X#GrabModeAsync}
 * @param confine_to    the window to confine the pointer in or {@link X#None}
 * @param cursor        the cursor that is to be displayed during the grab or {@link X#None}
 * @param time          the time. You can pass either a timestamp or {@link X#CurrentTime}
 */
	static public function XGrabPointer(display:haxe.Int64,grab_window:haxe.Int64,owner_events:Int,event_mask:Int,pointer_mode:Int,keyboard_mode:Int,confine_to:haxe.Int64,cursor:haxe.Int64,time:haxe.Int64):Int;
/**
 * Returns an integer that describes the height of the screen in pixels.
 *
 * @param display       the connection to the X server
 * @param screen_number the appropriate screen number on the host server
 */
	static public function XDisplayHeight(display:haxe.Int64,screen_number:Int):Int;
/** JNI method for {@link #XFreeColormap}  */
	static public function nXFreeColormap(display:haxe.Int64,colormap:haxe.Int64):Int;
/** Alternative version of: {@link #XSetWMProtocols}  */
/**
 * Replaces the {@code WM_PROTOCOLS} property on the specified window with the list of atoms specified by the protocols argument.
 *
 * @param display   the connection to the X server
 * @param w         the window
 * @param protocols the list of protocols
 * @param count     the number of protocols in the list
 */
	static public function XSetWMProtocols(display:haxe.Int64,w:haxe.Int64,protocols:java.nio.ByteBuffer,count:Int):Int;
	@:overload(function (display:haxe.Int64,w:haxe.Int64,protocols:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #XSendEvent}  */
	static public function nXSendEvent(display:haxe.Int64,w:haxe.Int64,propagate:Int,event_mask:haxe.Int64,event_send:haxe.Int64):Int;
/** JNI method for {@link #XMapWindow}  */
	static public function nXMapWindow(display:haxe.Int64,w:haxe.Int64):Int;
/** JNI method for {@link #XCheckTypedEvent}  */
	static public function nXCheckTypedEvent(display:haxe.Int64,event_type:Int,event_return:haxe.Int64):Int;
/**
 * Depending on the {@code valuemask}, uses the window attributes in the {@link #XSetWindowAttributes} structure to change the specified window attributes.
 *
 * @param display    the connection to the X server
 * @param w          the window
 * @param valuemask  specifies which window attributes are defined in the attributes argument. This mask is the bitwise inclusive OR of the valid attribute mask bits. If
 *                   valuemask is zero, the attributes are ignored and are not referenced. The values and restrictions are the same as for {@link #XCreateWindow}.
 * @param attributes the {@link #XSetWindowAttributes} structure from which the values (as specified by the value mask) are to be taken.
 */
	static public function XChangeWindowAttributes(display:haxe.Int64,w:haxe.Int64,valuemask:haxe.Int64,attributes:java.nio.ByteBuffer):Int;
/**
 * Replaces the size hints for the {@code WM_NORMAL_HINTS} property on the specified window. If the property does not already exist,
 * {@code XSetWMNormalHints()} sets the size hints for the {@code WM_NORMAL_HINTS} property on the specified window. The property is stored with a type of
 * {@code WM_SIZE_HINTS} and a format of 32.
 *
 * @param display the connection to the X server
 * @param w       the window
 * @param hints   the {@link XSizeHints} for the window in its normal state
 */
	static public function XSetWMNormalHints(display:haxe.Int64,w:haxe.Int64,hints:java.nio.ByteBuffer):Void;
/** JNI method for {@link #XFreePixmap}  */
	static public function nXFreePixmap(display:haxe.Int64,pixmap:haxe.Int64):Int;
/**
 * Deletes the association between the cursor resource ID and the specified cursor. The cursor storage is freed when no other resource references it. The
 * specified cursor ID should not be referred to again.
 *
 * @param display the connection to the X server
 * @param cursor  the cursor to free
 */
	static public function XFreeCursor(display:haxe.Int64,cursor:haxe.Int64):Int;
/**
 * Creates a cursor and returns the cursor ID associated with it.
 *
 * @param display          the connection to the X server
 * @param source           the shape of the source cursor
 * @param mask             the cursor's source bits to be displayed or {@link X#None}
 * @param foreground_color the RGB values for the foreground of the source
 * @param background_color the RGB values for the background of the source
 * @param x                the hotspot x-coordinate relative to the source's origin
 * @param y                the hotspot y-coordinate relative to the source's origin
 */
	static public function XCreatePixmapCursor(display:haxe.Int64,source:haxe.Int64,mask:haxe.Int64,foreground_color:java.nio.ByteBuffer,background_color:java.nio.ByteBuffer,x:Int,y:Int):haxe.Int64;
/**
 * Gets the current screen saver values.
 *
 * @param display                the connection to the X server
 * @param timeout_return         the timeout, in seconds, until the screen saver turns on
 * @param interval_return        the interval between screen saver invocations
 * @param prefer_blanking_return the current screen blanking preference
 * @param allow_exposures_return the current screen save control value
 */
/** Alternative version of: {@link #XGetScreenSaver}  */
	static public function XGetScreenSaver(display:haxe.Int64,timeout_return:java.nio.IntBuffer,interval_return:java.nio.IntBuffer,prefer_blanking_return:java.nio.IntBuffer,allow_exposures_return:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,timeout_return:java.nio.ByteBuffer,interval_return:java.nio.ByteBuffer,prefer_blanking_return:java.nio.ByteBuffer,allow_exposures_return:java.nio.ByteBuffer):Int {})
/**
 * Destroys the specified window as well as all of its subwindows and causes the X server to generate a {@code DestroyNotify} event for each window. The
 * window should never be referenced again. If the window specified by the {@code w} argument is mapped, it is unmapped automatically. The ordering of the
 * {@code DestroyNotify} events is such that for any given window being destroyed, {@code DestroyNotify} is generated on any inferiors of the window before
 * being generated on the window itself. The ordering among siblings and across subhierarchies is not otherwise constrained. If the window you specified is
 * a root window, no windows are destroyed. Destroying a mapped window will generate {@code Expose} events on other windows that were obscured by the
 * window being destroyed.
 *
 * @param display the connection to the X server
 * @param w       the window
 */
	static public function XDestroyWindow(display:haxe.Int64,w:haxe.Int64):Int;
/** JNI method for {@link #XSetErrorHandler}  */
	static public function nXSetErrorHandler(handler:haxe.Int64):haxe.Int64;
/** JNI method for {@link #XUnmapWindow}  */
	static public function nXUnmapWindow(display:haxe.Int64,w:haxe.Int64):Int;
/**
 * Sets the current screen saver values.
 *
 * @param display                the connection to the X server
 * @param timeout_return         the timeout, in seconds, until the screen saver turns on
 * @param interval_return        the interval between screen saver invocations
 * @param prefer_blanking_return the current screen blanking preference
 * @param allow_exposures_return the current screen save control value
 */
	static public function XSetScreenSaver(display:haxe.Int64,timeout_return:Int,interval_return:Int,prefer_blanking_return:Int,allow_exposures_return:Int):Int;
/** JNI method for {@link #XResizeWindow}  */
	static public function nXResizeWindow(display:haxe.Int64,w:haxe.Int64,width:Int,height:Int):Int;
/** JNI method for {@link #XConvertSelection}  */
	static public function nXConvertSelection(display:haxe.Int64,selection:haxe.Int64,target:haxe.Int64,property:haxe.Int64,requestor:haxe.Int64,time:haxe.Int64):Int;
/** JNI method for {@link #XFree}  */
	static public function nXFree(data:haxe.Int64):Int;
/**
 * Creates a colormap of the specified visual type for the screen on which the specified window resides and returns the colormap ID associated with it.
 * Note that the specified window is only used to determine the screen.
 *
 * @param display the connection to the X server
 * @param w       the window
 * @param visual  a visual type supported on the screen. If the visual type is not one supported by the screen, a {@code BadMatch} error results.
 * @param alloc   the colormap entries to be allocated. You can pass AllocNone or AllocAll.
 */
	static public function XCreateColormap(display:haxe.Int64,w:haxe.Int64,visual:java.nio.ByteBuffer,alloc:Int):haxe.Int64;
/** JNI method for {@link #XCreateColormap}  */
	static public function nXCreateColormap(display:haxe.Int64,w:haxe.Int64,visual:haxe.Int64,alloc:Int):haxe.Int64;
/**
 * Return a pointer to the indicated screen.
 *
 * @param display       the connection to the X server
 * @param screen_number the appropriate screen number on the host server
 */
	static public function XScreenOfDisplay(display:haxe.Int64,screen_number:Int):haxe.Int64;
/**
 * Identifies the destination window, determines which clients should receive the specified events, and ignores any active grabs. This function requires
 * you to pass an event mask. This function uses the {@code w} argument to identify the destination window as follows:
 * <ul>
 * <li>If {@code w} is {@link X#PointerWindow}, the destination window is the window that contains the pointer.</li>
 * <li>If {@code w} is {@link X#InputFocus} and if the focus window contains the pointer, the destination window is the window that contains the pointer;
 * otherwise, the destination window is the focus window.</li>
 * </ul>
 * 
 * <p>To determine which clients should receive the specified events, XSendEvent() uses the propagate argument as follows:
 * <ul>
 * <li>If {@code }event_mask is the empty set, the event is sent to the client that created the destination window. If that client no longer exists, no
 * event is sent.</li>
 * <li>If propagate is {@link #False}, the event is sent to every client selecting on destination any of the event types in the {@code event_mask} argument.</li>
 * <li>If propagate is {@link #True} and no clients have selected on destination any of the event types in event-mask, the destination is replaced with the
 * closest ancestor of destination for which some client has selected a type in event-mask and for which no intervening window has that type in its
 * do-not-propagate-mask. If no such window exists or if the window is an ancestor of the focus window and {@link X#InputFocus} was originally
 * specified as the destination, the event is not sent to any clients. Otherwise, the event is reported to every client selecting on the final
 * destination any of the types specified in {@code event_mask}.</li>
 * </ul></p>
 * 
 * <p>The event in the XEvent structure must be one of the core events or one of the events defined by an extension (or a BadValue error results) so that the X server can correctly byte-swap the contents as necessary. The contents of the event are otherwise unaltered and unchecked by the X server except to force send_event to True in the forwarded event and to set the serial number in the event correctly; therefore these fields and the display field are ignored by XSendEvent().</p>
 *
 * @param display    the connection to the X server
 * @param w          the window the event is to be sent to, or {@link X#PointerWindow}, or {@link X#InputFocus}
 * @param propagate  a Boolean value
 * @param event_mask the event mask
 * @param event_send the event that is to be sent
 */
	static public function XSendEvent(display:haxe.Int64,w:haxe.Int64,propagate:Int,event_mask:haxe.Int64,event_send:java.nio.ByteBuffer):Int;
/**
 * Returns an integer that describes the height of the screen in millimeters.
 *
 * @param display       the connection to the X server
 * @param screen_number the appropriate screen number on the host server
 */
	static public function XDisplayHeightMM(display:haxe.Int64,screen_number:Int):Int;
/**
 * Maps the window and all of its subwindows that have had map requests. Mapping a window that has an unmapped ancestor does not display the window but
 * marks it as eligible for display when the ancestor becomes mapped. Such a window is called unviewable. When all its ancestors are mapped, the window
 * becomes viewable and will be visible on the screen if it is not obscured by another window. This function has no effect if the window is already mapped.
 *
 * @param display the connection to the X server
 * @param w       the window
 */
	static public function XMapWindow(display:haxe.Int64,w:haxe.Int64):Int;
/**
 * Essentially is similar to {@link #XMapWindow} in that it maps the window and all of its subwindows that have had map requests. However, it also raises
 * the specified window to the top of the stack.
 *
 * @param display the connection to the X server
 * @param w       the window
 */
	static public function XMapRaised(display:haxe.Int64,w:haxe.Int64):Int;
/** JNI method for {@link #XSetWMHints}  */
	static public function nXSetWMHints(display:haxe.Int64,w:haxe.Int64,hints:haxe.Int64):Int;
/** JNI method for {@link #XMoveWindow}  */
	static public function nXMoveWindow(display:haxe.Int64,w:haxe.Int64,x:Int,y:Int):Int;
/**
 * Returns the current attributes for the specified window to an {@link XWindowAttributes} structure.
 *
 * @param display                  the connection to the X server
 * @param w                        the window
 * @param window_attributes_return a pointer to a {@link XWindowAttributes} structure
 */
	static public function XGetWindowAttributes(display:haxe.Int64,w:haxe.Int64,window_attributes_return:java.nio.ByteBuffer):Int;
/**
 * Creates a graphics context and returns a GC. The GC can be used with any destination drawable having the same root and depth as the specified drawable.
 * Use with other drawables results in a {@link X#BadMatch} error.
 *
 * @param display   
 * @param d         
 * @param valuemask 
 * @param values    
 */
	static public function XCreateGC(display:haxe.Int64,d:haxe.Int64,valuemask:haxe.Int64,values:java.nio.ByteBuffer):haxe.Int64;
/** JNI method for {@link #XWarpPointer}  */
	static public function nXWarpPointer(display:haxe.Int64,src_w:haxe.Int64,dest_w:haxe.Int64,src_x:Int,src_y:Int,src_width:Int,src_height:Int,dest_x:Int,dest_y:Int):Int;
/** JNI method for {@link #XCreatePixmap}  */
	static public function nXCreatePixmap(display:haxe.Int64,d:haxe.Int64,width:Int,height:Int,depth:Int):haxe.Int64;
/**
 * Flushes the output buffer. Most client applications need not use this function because the output buffer is automatically flushed as needed by calls to
 * {@link #XPending}, {@link #XNextEvent}, and {@link #XWindowEvent}. Events generated by the server may be enqueued into the library's event queue.
 *
 * @param display the connection to the X server
 */
	static public function XFlush(display:haxe.Int64):Int;
/** JNI method for {@link #XConnectionNumber}  */
	static public function nXConnectionNumber(display:haxe.Int64):Int;
/** JNI method for {@link #XDefaultScreen}  */
	static public function nXDefaultScreen(display:haxe.Int64):Int;
/** JNI method for {@link #XOpenDisplay}  */
	static public function nXOpenDisplay(display_name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #XGrabPointer}  */
	static public function nXGrabPointer(display:haxe.Int64,grab_window:haxe.Int64,owner_events:Int,event_mask:Int,pointer_mode:Int,keyboard_mode:Int,confine_to:haxe.Int64,cursor:haxe.Int64,time:haxe.Int64):Int;
/** CharSequence version of: {@link #XQueryExtension}  */
/** Alternative version of: {@link #XQueryExtension}  */
/**
 * Determines if the named extension is present. If the extension is not present, {@code XQueryExtension()} returns {@link #False}; otherwise, it returns
 * {@link #True}. If the extension is present, {@code XQueryExtension()} returns the major opcode for the extension to {@code major_opcode_return};
 * otherwise, it returns zero. Any minor opcode and the request formats are specific to the extension. If the extension involves additional event types,
 * {@code XQueryExtension()} returns the base event type code to {@code first_event_return}; otherwise, it returns zero. The format of the events is
 * specific to the extension. If the extension involves additional error codes, {@code XQueryExtension()} returns the base error code to
 * {@code first_error_return}; otherwise, it returns zero. The format of additional data in the errors is specific to the extension.
 *
 * @param display             the connection to the X server
 * @param name                the extension name
 * @param major_opcode_return returns the major opcode
 * @param first_event_return  returns the first event code, if any
 * @param first_error_return  returns the first error code, if any
 */
	static public function XQueryExtension(display:haxe.Int64,name:java.nio.ByteBuffer,major_opcode_return:java.nio.ByteBuffer,first_event_return:java.nio.ByteBuffer,first_error_return:java.nio.ByteBuffer):Int;
	@:overload(function (display:haxe.Int64,name:java.lang.CharSequence,major_opcode_return:java.nio.IntBuffer,first_event_return:java.nio.IntBuffer,first_error_return:java.nio.IntBuffer):Int {})
	@:overload(function (display:haxe.Int64,name:java.nio.ByteBuffer,major_opcode_return:java.nio.IntBuffer,first_event_return:java.nio.IntBuffer,first_error_return:java.nio.IntBuffer):Int {})
/** CharSequence version of: {@link #XOpenDisplay}  */
/**
 * Returns a Display structure that serves as the connection to the X server and that contains all the information about that X server. {@code XOpenDisplay}
 * connects your application to the X server through TCP or DECnet communications protocols, or through some local inter-process communication protocol.
 * If the hostname is a host machine name and a single colon (:) separates the hostname and display number, {@code XOpenDisplay} connects using TCP streams.
 * If the hostname is not specified, Xlib uses whatever it believes is the fastest transport. If the hostname is a host machine name and a double colon
 * (::) separates the hostname and display number, {@code XOpenDisplay} connects using DECnet. A single X server can support any or all of these transport
 * mechanisms simultaneously. A particular Xlib implementation can support many more of these transport mechanisms.
 *
 * @param display_name the hardware display name, which determines the display and communications domain to be used. On a POSIX-conformant system, if the
 *                     {@code display_name} is {@code NULL}, it defaults to the value of the DISPLAY environment variable.
 */
	static public function XOpenDisplay(display_name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (display_name:java.lang.CharSequence):haxe.Int64 {})
/**
 * changes the owner and last-change time for the specified selection and has no effect if the specified time is earlier than the current last-change time
 * of the specified selection or is later than the current X server time. Otherwise, the last-change time is set to the specified time, with {@link X#CurrentTime}
 * replaced by the current server time. If the owner window is specified as {@link X#None}, then the owner of the selection becomes {@link X#None} (that
 * is, no owner). Otherwise, the owner of the selection becomes the client executing the request.
 * 
 * <p>If the new owner (whether a client or {@link X#None}) is not the same as the current owner of the selection and the current owner is not {@link X#None},
 * the current owner is sent a {@code SelectionClear} event. If the client that is the owner of a selection is later terminated (that is, its connection is
 * closed) or if the owner window it has specified in the request is later destroyed, the owner of the selection automatically reverts to {@link X#None},
 * but the last-change time is not affected. The selection atom is uninterpreted by the X server. {@link #XGetSelectionOwner} returns the owner window,
 * which is reported in {@code SelectionRequest} and {@code SelectionClear} events. Selections are global to the X server.</p>
 *
 * @param display   the connection to the X server
 * @param selection the selection atom
 * @param owner     the owner of the specified selection atom. You can pass a window or {@link X#None}.
 * @param time      the time. You can pass either a timestamp or {@link X#CurrentTime}
 */
	static public function XSetSelectionOwner(display:haxe.Int64,selection:haxe.Int64,owner:haxe.Int64,time:haxe.Int64):Int;
/** JNI method for {@link #Xutf8SetWMProperties}  */
	static public function nXutf8SetWMProperties(display:haxe.Int64,w:haxe.Int64,window_name:haxe.Int64,icon_name:haxe.Int64,argv:haxe.Int64,argc:Int,normal_hints:haxe.Int64,wm_hints:haxe.Int64,class_hints:haxe.Int64):Void;
/** JNI method for {@link #XChangeProperty}  */
	static public function nXChangeProperty(display:haxe.Int64,w:haxe.Int64,property:haxe.Int64,type:haxe.Int64,format:Int,mode:Int,data:haxe.Int64,nelements:Int):Int;
/** JNI method for {@link #XNextEvent}  */
	static public function nXNextEvent(display:haxe.Int64,event_return:haxe.Int64):Int;
/**
 * Return the black pixel value for the specified screen.
 *
 * @param display       the connection to the X server
 * @param screen_number the appropriate screen number on the host server
 */
	static public function XBlackPixel(display:haxe.Int64,screen_number:Int):haxe.Int64;
/** JNI method for {@link #XDestroyWindow}  */
	static public function nXDestroyWindow(display:haxe.Int64,w:haxe.Int64):Int;
/**
 * Returns the focus window and the current focus state.
 *
 * @param display          the connection to the X server
 * @param focus_return     returns the focus window, {@link X#PointerRoot} or {@link X#None}
 * @param revert_to_return returns the current focus state
 */
/** Alternative version of: {@link #XGetInputFocus}  */
	static public function XGetInputFocus(display:haxe.Int64,focus_return:org.lwjgl.PointerBuffer,revert_to_return:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,focus_return:java.nio.ByteBuffer,revert_to_return:java.nio.ByteBuffer):Int {})
/**
 * Destroys the specified GC as well as all the associated storage.
 *
 * @param display the connection to the X server
 * @param gc      the GC to free
 */
	static public function XFreeGC(display:haxe.Int64,gc:haxe.Int64):Int;
/** JNI method for {@link #XCreatePixmapCursor}  */
	static public function nXCreatePixmapCursor(display:haxe.Int64,source:haxe.Int64,mask:haxe.Int64,foreground_color:haxe.Int64,background_color:haxe.Int64,x:Int,y:Int):haxe.Int64;
/**
 * Deletes the association between the {@code colormap} resource ID and the {@code colormap} and frees the {@code colormap} storage. However, this function
 * has no effect on the default colormap for a screen. If the specified {@code colormap} is an installed map for a screen, it is uninstalled. If the
 * specified {@code colormap} is defined as the {@code colormap} for a window, {@code XFreeColormap()} changes the colormap associated with the window to
 * {@link X#GrabSuccess} and generates a {@code ColormapNotify} event. X does not define the colors displayed for a window with a colormap of {@link X#GrabSuccess}.
 *
 * @param display  the connection to the X server
 * @param colormap the colormap to destroy
 */
	static public function XFreeColormap(display:haxe.Int64,colormap:haxe.Int64):Int;
/** JNI method for {@link #XSync}  */
	static public function nXSync(display:haxe.Int64,discard:Int):Int;
/** JNI method for {@link #XCreateGC}  */
	static public function nXCreateGC(display:haxe.Int64,d:haxe.Int64,valuemask:haxe.Int64,values:haxe.Int64):haxe.Int64;
/** JNI method for {@link #XPending}  */
	static public function nXPending(display:haxe.Int64):Int;
/** JNI method for {@link #XGetWindowProperty}  */
	static public function nXGetWindowProperty(display:haxe.Int64,w:haxe.Int64,property:haxe.Int64,long_offset:haxe.Int64,long_length:haxe.Int64,delete:Int,req_type:haxe.Int64,actual_type_return:haxe.Int64,actual_format_return:haxe.Int64,nitems_return:haxe.Int64,bytes_after_return:haxe.Int64,prop_return:haxe.Int64):Int;
/**
 * Returns the window ID associated with the window that currently owns the specified selection. If no selection was specified, the function returns the
 * constant {@link X#None}. If {@link X#None} is returned, there is no owner for the selection.
 *
 * @param display   the connection to the X server
 * @param selection the selection atom whose owner you want returned
 */
	static public function XGetSelectionOwner(display:haxe.Int64,selection:haxe.Int64):haxe.Int64;
/** JNI method for {@link #XUndefineCursor}  */
	static public function nXUndefineCursor(display:haxe.Int64,w:haxe.Int64):Int;
/**
 * Returns the root window of the specified screen.
 *
 * @param display       the connection to the X server
 * @param screen_number the appropriate screen number on the host server
 */
	static public function XRootWindow(display:haxe.Int64,screen_number:Int):haxe.Int64;
/** JNI method for {@link #XSetWMNormalHints}  */
	static public function nXSetWMNormalHints(display:haxe.Int64,w:haxe.Int64,hints:haxe.Int64):Void;
/**
 * Releases the pointer and any queued events if this client has actively grabbed the pointer from {@link #XGrabPointer}, {@link #XGrabButton}, or from
 * a normal button press. {@code XUngrabPointer} does not release the pointer if the specified time is earlier than the last-pointer-grab time or is later
 * than the current X server time. It also generates {@code EnterNotify} and {@code LeaveNotify} events. The X server performs an {@code UngrabPointer}
 * request automatically if the event window or {@code confine_to} window for an active pointer grab becomes not viewable or if window reconfiguration
 * causes the {@code confine_to} window to lie completely outside the boundaries of the root window.
 *
 * @param display the connection to the X server
 * @param time    specifies the time. You can pass either a timestamp or {@link X#CurrentTime}.
 */
	static public function XUngrabPointer(display:haxe.Int64,time:haxe.Int64):Int;
/** JNI method for {@link #XSetSizeHints}  */
	static public function nXSetSizeHints(display:haxe.Int64,w:haxe.Int64,hints:haxe.Int64,property:haxe.Int64):Int;
/** JNI method for {@link #XGetSelectionOwner}  */
	static public function nXGetSelectionOwner(display:haxe.Int64,selection:haxe.Int64):haxe.Int64;
/**
 * Moves the specified window to the specified {@code x} and {@code y} coordinates, but it does not change the window's size, raise the window, or change
 * the mapping state of the window. Moving a mapped window may or may not lose the window's contents depending on if the window is obscured by nonchildren
 * and if no backing store exists. If the contents of the window are lost, the X server generates Expose events. Moving a mapped window generates
 * {@code Expose} events on any formerly obscured windows.
 * 
 * <p>The {@code x} and {@code y} coordinates define the new location of the top-left pixel of the window's border or the window itself if it has no border.</p>
 *
 * @param display the connection to the X server
 * @param w       the window
 * @param x       the window x-coordinate
 * @param y       the window y-coordinate
 */
	static public function XMoveWindow(display:haxe.Int64,w:haxe.Int64,x:Int,y:Int):Int;
/**
 * Returns the depth (number of planes) of the default root window for the specified screen.
 *
 * @param display       the connection to the X server
 * @param screen_number the appropriate screen number on the host server
 */
	static public function XDefaultDepth(display:haxe.Int64,screen_number:Int):Int;
/**
 * Flushes the output buffer and then waits until all requests have been received and processed by the X server. Any errors generated must be handled by
 * the error handler. For each protocol error received by Xlib, {@code XSync()} calls the client application's error handling routine. Any events generated
 * by the server are enqueued into the library's event queue.
 * 
 * <p>Finally, if you passed {@link X#GrabSuccess}, {@code XSync()} does not discard the events in the queue. If you passed {@link X#GrabSuccess}, {@code XSync()} discards
 * all events in the queue, including those events that were on the queue before {@code XSync()} was called. Client applications seldom need to call
 * {@code XSync()}.</p>
 *
 * @param display the connection to the X server
 * @param discard whether to discard events in the queue
 */
	static public function XSync(display:haxe.Int64,discard:Int):Int;
/**
 * Changes the inside dimensions of the specified window, not including its borders. This function does not change the window's upper-left coordinate or
 * the origin and does not restack the window. Changing the size of a mapped window may lose its contents and generate Expose events. If a mapped window is
 * made smaller, changing its size generates {@code Expose} events on windows that the mapped window formerly obscured.
 *
 * @param display the connection to the X server
 * @param w       the window
 * @param width   the window width
 * @param height  the window height
 */
	static public function XResizeWindow(display:haxe.Int64,w:haxe.Int64,width:Int,height:Int):Int;
/** JNI method for {@link #XCloseDisplay}  */
	static public function nXCloseDisplay(display:haxe.Int64):Int;
/**
 * Returns the number of events that have been received from the X server but have not been removed from the event queue. {@code XPending()} is identical
 * to {@link #XEventsQueued} with the mode {@code QueuedAfterFlush} specified.
 *
 * @param display the connection to the X server
 */
	static public function XPending(display:haxe.Int64):Int;
/**
 * If {@code dest_w} is None, {@code XWarpPointer()} moves the pointer by the offsets {@code (dest_x, dest_y)} relative to the current position of the
 * pointer. If {@code dest_w} is a window, {@code XWarpPointer()} moves the pointer to the offsets {@code (dest_x, dest_y)} relative to the origin of
 * {@code dest_w}. However, if {@code src_w} is a window, the move only takes place if the window {@code src_w} contains the pointer and if the specified
 * rectangle of {@code src_w} contains the pointer.
 * 
 * <p>The {@code src_x} and {@code src_y} coordinates are relative to the origin of {@code src_w}. If {@code src_height} is zero, it is replaced with the
 * current height of {@code src_w} minus {@code src_y}. If {@code src_width} is zero, it is replaced with the current width of {@code src_w} minus
 * {@code src_x}.</p>
 * 
 * <p>There is seldom any reason for calling this function. The pointer should normally be left to the user. If you do use this function, however, it
 * generates events just as if the user had instantaneously moved the pointer from one position to another. Note that you cannot use {@code XWarpPointer()}
 * to move the pointer outside the {@code confine_to} window of an active pointer grab. An attempt to do so will only move the pointer as far as the
 * closest edge of the {@code confine_to} window.</p>
 *
 * @param display    the connection to the X server
 * @param src_w      the source window or {@link X#None}
 * @param dest_w     the destination window or {@link X#None}
 * @param src_x      the source rectangle x-coordinate
 * @param src_y      the source rectangle y-coordinate
 * @param src_width  the source rectangle width
 * @param src_height the source rectangle height
 * @param dest_x     the x-coordinate within the destination window
 * @param dest_y     the y-coordinate within the destination window
 */
	static public function XWarpPointer(display:haxe.Int64,src_w:haxe.Int64,dest_w:haxe.Int64,src_x:Int,src_y:Int,src_width:Int,src_height:Int,dest_x:Int,dest_y:Int):Int;
/** Alternative version of: {@link #XGetErrorText}  */
/**
 * Copies a null-terminated string describing the specified error code into the specified buffer. The returned text is in the encoding of the current
 * locale. It is recommended that you use this function to obtain an error description because extensions to Xlib may define their own error codes and
 * error strings.
 *
 * @param display       the connection to the X server
 * @param code          the error code for which you want to obtain a description
 * @param buffer_return returns the error description
 * @param length        the size of the buffer
 */
	static public function XGetErrorText(display:haxe.Int64,code:Int,buffer_return:java.nio.ByteBuffer,length:Int):Int;
	@:overload(function (display:haxe.Int64,code:Int,buffer_return:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #XSetSelectionOwner}  */
	static public function nXSetSelectionOwner(display:haxe.Int64,selection:haxe.Int64,owner:haxe.Int64,time:haxe.Int64):Int;
/** JNI method for {@link #XSetWMProtocols}  */
	static public function nXSetWMProtocols(display:haxe.Int64,w:haxe.Int64,protocols:haxe.Int64,count:Int):Int;
/** JNI method for {@link #XChangeWindowAttributes}  */
	static public function nXChangeWindowAttributes(display:haxe.Int64,w:haxe.Int64,valuemask:haxe.Int64,attributes:haxe.Int64):Int;
/** CharSequence version of: {@link #Xutf8SetWMProperties}  */
/** Alternative version of: {@link #Xutf8SetWMProperties}  */
/**
 * Sets window properties.
 *
 * @param display      the connection to the X server
 * @param w            the window
 * @param window_name  the window name, which should be a null-terminated string
 * @param icon_name    the icon name, which should be a null-terminated string
 * @param argv         the application's argument list
 * @param argc         the number of arguments
 * @param normal_hints the size hints for the window in its normal state
 * @param wm_hints     the XWMHints structure to be used
 * @param class_hints  the {@link XClassHint} structure to be used
 */
	static public function Xutf8SetWMProperties(display:haxe.Int64,w:haxe.Int64,window_name:java.nio.ByteBuffer,icon_name:java.nio.ByteBuffer,argv:java.nio.ByteBuffer,argc:Int,normal_hints:java.nio.ByteBuffer,wm_hints:java.nio.ByteBuffer,class_hints:java.nio.ByteBuffer):Void;
	@:overload(function (display:haxe.Int64,w:haxe.Int64,window_name:java.lang.CharSequence,icon_name:java.lang.CharSequence,argv:org.lwjgl.PointerBuffer,normal_hints:java.nio.ByteBuffer,wm_hints:java.nio.ByteBuffer,class_hints:java.nio.ByteBuffer):Void {})
	@:overload(function (display:haxe.Int64,w:haxe.Int64,window_name:java.nio.ByteBuffer,icon_name:java.nio.ByteBuffer,argv:org.lwjgl.PointerBuffer,normal_hints:java.nio.ByteBuffer,wm_hints:java.nio.ByteBuffer,class_hints:java.nio.ByteBuffer):Void {})

}
