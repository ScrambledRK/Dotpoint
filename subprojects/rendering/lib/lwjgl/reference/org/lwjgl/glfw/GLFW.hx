package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFW")
@:final
/**
 * Native bindings to the <a href="http://www.glfw.org/docs/latest/">GLFW</a> library.
 * 
 * <p>GLFW is a free, Open Source, multi-platform library for opening a window, creating an OpenGL context and managing input. It is easy to integrate into
 * existing applications and does not lay claim to the main loop.</p>
 */
extern class GLFW 
{
/** The major version number of the GLFW library. This is incremented when the API is changed in non-compatible ways.  */
	inline static public var GLFW_VERSION_MAJOR:Int = 3;
/** The minor version number of the GLFW library. This is incremented when features are added to the API but it remains backward-compatible.  */
	inline static public var GLFW_VERSION_MINOR:Int = 1;
/** The revision number of the GLFW library. This is incremented when a bug fix release is made that does not contain any API changes.  */
	inline static public var GLFW_VERSION_REVISION:Int = 1;
/** The key or button was released.  */
	inline static public var GLFW_RELEASE:Int = 0;
/** The key or button was pressed.  */
	inline static public var GLFW_PRESS:Int = 1;
/** The key was held down until it repeated.  */
	inline static public var GLFW_REPEAT:Int = 2;
/** The unknown key.  */
	inline static public var GLFW_KEY_UNKNOWN:Int = -1;
/** Printable keys.  */
	inline static public var GLFW_KEY_SPACE:Int = 32;
/** Printable keys.  */
	inline static public var GLFW_KEY_APOSTROPHE:Int = 39;
/** Printable keys.  */
	inline static public var GLFW_KEY_COMMA:Int = 44;
/** Printable keys.  */
	inline static public var GLFW_KEY_MINUS:Int = 45;
/** Printable keys.  */
	inline static public var GLFW_KEY_PERIOD:Int = 46;
/** Printable keys.  */
	inline static public var GLFW_KEY_SLASH:Int = 47;
/** Printable keys.  */
	inline static public var GLFW_KEY_0:Int = 48;
/** Printable keys.  */
	inline static public var GLFW_KEY_1:Int = 49;
/** Printable keys.  */
	inline static public var GLFW_KEY_2:Int = 50;
/** Printable keys.  */
	inline static public var GLFW_KEY_3:Int = 51;
/** Printable keys.  */
	inline static public var GLFW_KEY_4:Int = 52;
/** Printable keys.  */
	inline static public var GLFW_KEY_5:Int = 53;
/** Printable keys.  */
	inline static public var GLFW_KEY_6:Int = 54;
/** Printable keys.  */
	inline static public var GLFW_KEY_7:Int = 55;
/** Printable keys.  */
	inline static public var GLFW_KEY_8:Int = 56;
/** Printable keys.  */
	inline static public var GLFW_KEY_9:Int = 57;
/** Printable keys.  */
	inline static public var GLFW_KEY_SEMICOLON:Int = 59;
/** Printable keys.  */
	inline static public var GLFW_KEY_EQUAL:Int = 61;
/** Printable keys.  */
	inline static public var GLFW_KEY_A:Int = 65;
/** Printable keys.  */
	inline static public var GLFW_KEY_B:Int = 66;
/** Printable keys.  */
	inline static public var GLFW_KEY_C:Int = 67;
/** Printable keys.  */
	inline static public var GLFW_KEY_D:Int = 68;
/** Printable keys.  */
	inline static public var GLFW_KEY_E:Int = 69;
/** Printable keys.  */
	inline static public var GLFW_KEY_F:Int = 70;
/** Printable keys.  */
	inline static public var GLFW_KEY_G:Int = 71;
/** Printable keys.  */
	inline static public var GLFW_KEY_H:Int = 72;
/** Printable keys.  */
	inline static public var GLFW_KEY_I:Int = 73;
/** Printable keys.  */
	inline static public var GLFW_KEY_J:Int = 74;
/** Printable keys.  */
	inline static public var GLFW_KEY_K:Int = 75;
/** Printable keys.  */
	inline static public var GLFW_KEY_L:Int = 76;
/** Printable keys.  */
	inline static public var GLFW_KEY_M:Int = 77;
/** Printable keys.  */
	inline static public var GLFW_KEY_N:Int = 78;
/** Printable keys.  */
	inline static public var GLFW_KEY_O:Int = 79;
/** Printable keys.  */
	inline static public var GLFW_KEY_P:Int = 80;
/** Printable keys.  */
	inline static public var GLFW_KEY_Q:Int = 81;
/** Printable keys.  */
	inline static public var GLFW_KEY_R:Int = 82;
/** Printable keys.  */
	inline static public var GLFW_KEY_S:Int = 83;
/** Printable keys.  */
	inline static public var GLFW_KEY_T:Int = 84;
/** Printable keys.  */
	inline static public var GLFW_KEY_U:Int = 85;
/** Printable keys.  */
	inline static public var GLFW_KEY_V:Int = 86;
/** Printable keys.  */
	inline static public var GLFW_KEY_W:Int = 87;
/** Printable keys.  */
	inline static public var GLFW_KEY_X:Int = 88;
/** Printable keys.  */
	inline static public var GLFW_KEY_Y:Int = 89;
/** Printable keys.  */
	inline static public var GLFW_KEY_Z:Int = 90;
/** Printable keys.  */
	inline static public var GLFW_KEY_LEFT_BRACKET:Int = 91;
/** Printable keys.  */
	inline static public var GLFW_KEY_BACKSLASH:Int = 92;
/** Printable keys.  */
	inline static public var GLFW_KEY_RIGHT_BRACKET:Int = 93;
/** Printable keys.  */
	inline static public var GLFW_KEY_GRAVE_ACCENT:Int = 96;
/** Printable keys.  */
	inline static public var GLFW_KEY_WORLD_1:Int = 161;
/** Printable keys.  */
	inline static public var GLFW_KEY_WORLD_2:Int = 162;
/** Function keys.  */
	inline static public var GLFW_KEY_ESCAPE:Int = 256;
/** Function keys.  */
	inline static public var GLFW_KEY_ENTER:Int = 257;
/** Function keys.  */
	inline static public var GLFW_KEY_TAB:Int = 258;
/** Function keys.  */
	inline static public var GLFW_KEY_BACKSPACE:Int = 259;
/** Function keys.  */
	inline static public var GLFW_KEY_INSERT:Int = 260;
/** Function keys.  */
	inline static public var GLFW_KEY_DELETE:Int = 261;
/** Function keys.  */
	inline static public var GLFW_KEY_RIGHT:Int = 262;
/** Function keys.  */
	inline static public var GLFW_KEY_LEFT:Int = 263;
/** Function keys.  */
	inline static public var GLFW_KEY_DOWN:Int = 264;
/** Function keys.  */
	inline static public var GLFW_KEY_UP:Int = 265;
/** Function keys.  */
	inline static public var GLFW_KEY_PAGE_UP:Int = 266;
/** Function keys.  */
	inline static public var GLFW_KEY_PAGE_DOWN:Int = 267;
/** Function keys.  */
	inline static public var GLFW_KEY_HOME:Int = 268;
/** Function keys.  */
	inline static public var GLFW_KEY_END:Int = 269;
/** Function keys.  */
	inline static public var GLFW_KEY_CAPS_LOCK:Int = 280;
/** Function keys.  */
	inline static public var GLFW_KEY_SCROLL_LOCK:Int = 281;
/** Function keys.  */
	inline static public var GLFW_KEY_NUM_LOCK:Int = 282;
/** Function keys.  */
	inline static public var GLFW_KEY_PRINT_SCREEN:Int = 283;
/** Function keys.  */
	inline static public var GLFW_KEY_PAUSE:Int = 284;
/** Function keys.  */
	inline static public var GLFW_KEY_F1:Int = 290;
/** Function keys.  */
	inline static public var GLFW_KEY_F2:Int = 291;
/** Function keys.  */
	inline static public var GLFW_KEY_F3:Int = 292;
/** Function keys.  */
	inline static public var GLFW_KEY_F4:Int = 293;
/** Function keys.  */
	inline static public var GLFW_KEY_F5:Int = 294;
/** Function keys.  */
	inline static public var GLFW_KEY_F6:Int = 295;
/** Function keys.  */
	inline static public var GLFW_KEY_F7:Int = 296;
/** Function keys.  */
	inline static public var GLFW_KEY_F8:Int = 297;
/** Function keys.  */
	inline static public var GLFW_KEY_F9:Int = 298;
/** Function keys.  */
	inline static public var GLFW_KEY_F10:Int = 299;
/** Function keys.  */
	inline static public var GLFW_KEY_F11:Int = 300;
/** Function keys.  */
	inline static public var GLFW_KEY_F12:Int = 301;
/** Function keys.  */
	inline static public var GLFW_KEY_F13:Int = 302;
/** Function keys.  */
	inline static public var GLFW_KEY_F14:Int = 303;
/** Function keys.  */
	inline static public var GLFW_KEY_F15:Int = 304;
/** Function keys.  */
	inline static public var GLFW_KEY_F16:Int = 305;
/** Function keys.  */
	inline static public var GLFW_KEY_F17:Int = 306;
/** Function keys.  */
	inline static public var GLFW_KEY_F18:Int = 307;
/** Function keys.  */
	inline static public var GLFW_KEY_F19:Int = 308;
/** Function keys.  */
	inline static public var GLFW_KEY_F20:Int = 309;
/** Function keys.  */
	inline static public var GLFW_KEY_F21:Int = 310;
/** Function keys.  */
	inline static public var GLFW_KEY_F22:Int = 311;
/** Function keys.  */
	inline static public var GLFW_KEY_F23:Int = 312;
/** Function keys.  */
	inline static public var GLFW_KEY_F24:Int = 313;
/** Function keys.  */
	inline static public var GLFW_KEY_F25:Int = 314;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_0:Int = 320;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_1:Int = 321;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_2:Int = 322;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_3:Int = 323;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_4:Int = 324;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_5:Int = 325;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_6:Int = 326;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_7:Int = 327;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_8:Int = 328;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_9:Int = 329;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_DECIMAL:Int = 330;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_DIVIDE:Int = 331;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_MULTIPLY:Int = 332;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_SUBTRACT:Int = 333;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_ADD:Int = 334;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_ENTER:Int = 335;
/** Function keys.  */
	inline static public var GLFW_KEY_KP_EQUAL:Int = 336;
/** Function keys.  */
	inline static public var GLFW_KEY_LEFT_SHIFT:Int = 340;
/** Function keys.  */
	inline static public var GLFW_KEY_LEFT_CONTROL:Int = 341;
/** Function keys.  */
	inline static public var GLFW_KEY_LEFT_ALT:Int = 342;
/** Function keys.  */
	inline static public var GLFW_KEY_LEFT_SUPER:Int = 343;
/** Function keys.  */
	inline static public var GLFW_KEY_RIGHT_SHIFT:Int = 344;
/** Function keys.  */
	inline static public var GLFW_KEY_RIGHT_CONTROL:Int = 345;
/** Function keys.  */
	inline static public var GLFW_KEY_RIGHT_ALT:Int = 346;
/** Function keys.  */
	inline static public var GLFW_KEY_RIGHT_SUPER:Int = 347;
/** Function keys.  */
	inline static public var GLFW_KEY_MENU:Int = 348;
/** Function keys.  */
	inline static public var GLFW_KEY_LAST:Int = 348;
/** If this bit is set one or more Shift keys were held down.  */
	inline static public var GLFW_MOD_SHIFT:Int = 1;
/** If this bit is set one or more Control keys were held down.  */
	inline static public var GLFW_MOD_CONTROL:Int = 2;
/** If this bit is set one or more Alt keys were held down.  */
	inline static public var GLFW_MOD_ALT:Int = 4;
/** If this bit is set one or more Super keys were held down.  */
	inline static public var GLFW_MOD_SUPER:Int = 8;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_1:Int = 0;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_2:Int = 1;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_3:Int = 2;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_4:Int = 3;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_5:Int = 4;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_6:Int = 5;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_7:Int = 6;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_8:Int = 7;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_LAST:Int = 7;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_LEFT:Int = 0;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_RIGHT:Int = 1;
/** Mouse buttons. See <a href="http://www.glfw.org/docs/latest/input.html#input_mouse_button">mouse button input</a> for how these are used.  */
	inline static public var GLFW_MOUSE_BUTTON_MIDDLE:Int = 2;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_1:Int = 0;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_2:Int = 1;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_3:Int = 2;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_4:Int = 3;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_5:Int = 4;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_6:Int = 5;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_7:Int = 6;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_8:Int = 7;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_9:Int = 8;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_10:Int = 9;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_11:Int = 10;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_12:Int = 11;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_13:Int = 12;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_14:Int = 13;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_15:Int = 14;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_16:Int = 15;
/** Joysticks. See <a href="http://www.glfw.org/docs/latest/input.html#joystick">joystick input</a> for how these are used.  */
	inline static public var GLFW_JOYSTICK_LAST:Int = 15;
/**
 * GLFW has not been initialized.
 * 
 * <p>This occurs if a GLFW function was called that may not be called unless the library is initialized.</p>
 */
	inline static public var GLFW_NOT_INITIALIZED:Int = 65537;
/**
 * No context is current for this thread.
 * 
 * <p>This occurs if a GLFW function was called that needs and operates on the current OpenGL or OpenGL ES context but no context is current on the calling
 * thread. One such function is {@link #glfwSwapInterval SwapInterval}.</p>
 */
	inline static public var GLFW_NO_CURRENT_CONTEXT:Int = 65538;
/**
 * One of the arguments to the function was an invalid enum value.
 * 
 * <p>One of the arguments to the function was an invalid enum value, for example requesting {@link #GLFW_RED_BITS RED_BITS} with {@link #glfwGetWindowAttrib GetWindowAttrib}.</p>
 */
	inline static public var GLFW_INVALID_ENUM:Int = 65539;
/**
 * One of the arguments to the function was an invalid value.
 * 
 * <p>One of the arguments to the function was an invalid value, for example requesting a non-existent OpenGL or OpenGL ES version like 2.7.</p>
 * 
 * <p>Requesting a valid but unavailable OpenGL or OpenGL ES version will instead result in a {@link #GLFW_VERSION_UNAVAILABLE VERSION_UNAVAILABLE} error.</p>
 */
	inline static public var GLFW_INVALID_VALUE:Int = 65540;
/**
 * A memory allocation failed.
 * 
 * <p>A bug in GLFW or the underlying operating system. Report the bug to our <a href="https://github.com/glfw/glfw/issues">issue tracker</a>.</p>
 */
	inline static public var GLFW_OUT_OF_MEMORY:Int = 65541;
/**
 * GLFW could not find support for the requested client API on the system. If emitted by functions other than @ref glfwCreateWindow, no supported client
 * API was found.
 * 
 * <p>The installed graphics driver does not support the requested client API, or does not support it via the chosen context creation backend. Below are a
 * few examples:</p>
 * 
 * <p>Some pre-installed Windows graphics drivers do not support OpenGL. AMD only supports OpenGL ES via EGL, while Nvidia and Intel only support it via a
 * WGL or GLX extension. OS X does not provide OpenGL ES at all. The Mesa EGL, OpenGL and OpenGL ES libraries do not interface with the Nvidia binary
 * driver.</p>
 */
	inline static public var GLFW_API_UNAVAILABLE:Int = 65542;
/**
 * The requested OpenGL or OpenGL ES version (including any requested context or framebuffer hints) is not available on this machine.
 * 
 * <p>The machine does not support your requirements. If your application is sufficiently flexible, downgrade your requirements and try again. Otherwise,
 * inform the user that their machine does not match your requirements.</p>
 * 
 * <p>Future invalid OpenGL and OpenGL ES versions, for example OpenGL 4.8 if 5.0 comes out before the 4.x series gets that far, also fail with this error and
 * not {@link #GLFW_INVALID_VALUE INVALID_VALUE}, because GLFW cannot know what future versions will exist.</p>
 */
	inline static public var GLFW_VERSION_UNAVAILABLE:Int = 65543;
/**
 * A platform-specific error occurred that does not match any of the more specific categories.
 * 
 * <p>A bug or configuration error in GLFW, the underlying operating system or its drivers, or a lack of required resources. Report the issue to our
 * <a href="https://github.com/glfw/glfw/issues">issue tracker</a>.</p>
 */
	inline static public var GLFW_PLATFORM_ERROR:Int = 65544;
/**
 * The requested format is not supported or available.
 * 
 * <p>If emitted during window creation, one or more hard constraints did not match any of the available pixel formats. If your application is sufficiently
 * flexible, downgrade your requirements and try again. Otherwise, inform the user that their machine does not match your requirements.</p>
 * 
 * <p>If emitted when querying the clipboard, ignore the error or report it to the user, as appropriate.</p>
 */
	inline static public var GLFW_FORMAT_UNAVAILABLE:Int = 65545;
/** Window attributes.  */
	inline static public var GLFW_FOCUSED:Int = 131073;
/** Window attributes.  */
	inline static public var GLFW_ICONIFIED:Int = 131074;
/** Window attributes.  */
	inline static public var GLFW_RESIZABLE:Int = 131075;
/** Window attributes.  */
	inline static public var GLFW_VISIBLE:Int = 131076;
/** Window attributes.  */
	inline static public var GLFW_DECORATED:Int = 131077;
/** Window attributes.  */
	inline static public var GLFW_AUTO_ICONIFY:Int = 131078;
/** Window attributes.  */
	inline static public var GLFW_FLOATING:Int = 131079;
/** Input options.  */
	inline static public var GLFW_CURSOR:Int = 208897;
/** Input options.  */
	inline static public var GLFW_STICKY_KEYS:Int = 208898;
/** Input options.  */
	inline static public var GLFW_STICKY_MOUSE_BUTTONS:Int = 208899;
/** Cursor state.  */
	inline static public var GLFW_CURSOR_NORMAL:Int = 212993;
/** Cursor state.  */
	inline static public var GLFW_CURSOR_HIDDEN:Int = 212994;
/** Cursor state.  */
	inline static public var GLFW_CURSOR_DISABLED:Int = 212995;
/** Standard cursor shapes. See <a href="http://www.glfw.org/docs/latest/input.html#cursor_standard">standard cursor creation</a> for how these are used.  */
	inline static public var GLFW_ARROW_CURSOR:Int = 221185;
/** Standard cursor shapes. See <a href="http://www.glfw.org/docs/latest/input.html#cursor_standard">standard cursor creation</a> for how these are used.  */
	inline static public var GLFW_IBEAM_CURSOR:Int = 221186;
/** Standard cursor shapes. See <a href="http://www.glfw.org/docs/latest/input.html#cursor_standard">standard cursor creation</a> for how these are used.  */
	inline static public var GLFW_CROSSHAIR_CURSOR:Int = 221187;
/** Standard cursor shapes. See <a href="http://www.glfw.org/docs/latest/input.html#cursor_standard">standard cursor creation</a> for how these are used.  */
	inline static public var GLFW_HAND_CURSOR:Int = 221188;
/** Standard cursor shapes. See <a href="http://www.glfw.org/docs/latest/input.html#cursor_standard">standard cursor creation</a> for how these are used.  */
	inline static public var GLFW_HRESIZE_CURSOR:Int = 221189;
/** Standard cursor shapes. See <a href="http://www.glfw.org/docs/latest/input.html#cursor_standard">standard cursor creation</a> for how these are used.  */
	inline static public var GLFW_VRESIZE_CURSOR:Int = 221190;
/** Monitor events.  */
	inline static public var GLFW_CONNECTED:Int = 262145;
/** Monitor events.  */
	inline static public var GLFW_DISCONNECTED:Int = 262146;
/** Don't care value.  */
	inline static public var GLFW_DONT_CARE:Int = -1;
/** PixelFormat hints.  */
	inline static public var GLFW_RED_BITS:Int = 135169;
/** PixelFormat hints.  */
	inline static public var GLFW_GREEN_BITS:Int = 135170;
/** PixelFormat hints.  */
	inline static public var GLFW_BLUE_BITS:Int = 135171;
/** PixelFormat hints.  */
	inline static public var GLFW_ALPHA_BITS:Int = 135172;
/** PixelFormat hints.  */
	inline static public var GLFW_DEPTH_BITS:Int = 135173;
/** PixelFormat hints.  */
	inline static public var GLFW_STENCIL_BITS:Int = 135174;
/** PixelFormat hints.  */
	inline static public var GLFW_ACCUM_RED_BITS:Int = 135175;
/** PixelFormat hints.  */
	inline static public var GLFW_ACCUM_GREEN_BITS:Int = 135176;
/** PixelFormat hints.  */
	inline static public var GLFW_ACCUM_BLUE_BITS:Int = 135177;
/** PixelFormat hints.  */
	inline static public var GLFW_ACCUM_ALPHA_BITS:Int = 135178;
/** PixelFormat hints.  */
	inline static public var GLFW_AUX_BUFFERS:Int = 135179;
/** PixelFormat hints.  */
	inline static public var GLFW_STEREO:Int = 135180;
/** PixelFormat hints.  */
	inline static public var GLFW_SAMPLES:Int = 135181;
/** PixelFormat hints.  */
	inline static public var GLFW_SRGB_CAPABLE:Int = 135182;
/** PixelFormat hints.  */
	inline static public var GLFW_REFRESH_RATE:Int = 135183;
/** PixelFormat hints.  */
	inline static public var GLFW_DOUBLE_BUFFER:Int = 135184;
/** Client API hints.  */
	inline static public var GLFW_CLIENT_API:Int = 139265;
/** Client API hints.  */
	inline static public var GLFW_CONTEXT_VERSION_MAJOR:Int = 139266;
/** Client API hints.  */
	inline static public var GLFW_CONTEXT_VERSION_MINOR:Int = 139267;
/** Client API hints.  */
	inline static public var GLFW_CONTEXT_REVISION:Int = 139268;
/** Client API hints.  */
	inline static public var GLFW_CONTEXT_ROBUSTNESS:Int = 139269;
/** Client API hints.  */
	inline static public var GLFW_OPENGL_FORWARD_COMPAT:Int = 139270;
/** Client API hints.  */
	inline static public var GLFW_OPENGL_DEBUG_CONTEXT:Int = 139271;
/** Client API hints.  */
	inline static public var GLFW_OPENGL_PROFILE:Int = 139272;
/** Client API hints.  */
	inline static public var GLFW_CONTEXT_RELEASE_BEHAVIOR:Int = 139273;
/** Values for the {@link #GLFW_CLIENT_API CLIENT_API} hint.  */
	inline static public var GLFW_OPENGL_API:Int = 196609;
/** Values for the {@link #GLFW_CLIENT_API CLIENT_API} hint.  */
	inline static public var GLFW_OPENGL_ES_API:Int = 196610;
/** Values for the {@link #GLFW_CONTEXT_ROBUSTNESS CONTEXT_ROBUSTNESS} hint.  */
	inline static public var GLFW_NO_ROBUSTNESS:Int = 0;
/** Values for the {@link #GLFW_CONTEXT_ROBUSTNESS CONTEXT_ROBUSTNESS} hint.  */
	inline static public var GLFW_NO_RESET_NOTIFICATION:Int = 200705;
/** Values for the {@link #GLFW_CONTEXT_ROBUSTNESS CONTEXT_ROBUSTNESS} hint.  */
	inline static public var GLFW_LOSE_CONTEXT_ON_RESET:Int = 200706;
/** Values for the {@link #GLFW_OPENGL_PROFILE OPENGL_PROFILE} hint.  */
	inline static public var GLFW_OPENGL_ANY_PROFILE:Int = 0;
/** Values for the {@link #GLFW_OPENGL_PROFILE OPENGL_PROFILE} hint.  */
	inline static public var GLFW_OPENGL_CORE_PROFILE:Int = 204801;
/** Values for the {@link #GLFW_OPENGL_PROFILE OPENGL_PROFILE} hint.  */
	inline static public var GLFW_OPENGL_COMPAT_PROFILE:Int = 204802;
/** Values for the {@link #GLFW_CONTEXT_RELEASE_BEHAVIOR CONTEXT_RELEASE_BEHAVIOR} hint.  */
	inline static public var GLFW_ANY_RELEASE_BEHAVIOR:Int = 0;
/** Values for the {@link #GLFW_CONTEXT_RELEASE_BEHAVIOR CONTEXT_RELEASE_BEHAVIOR} hint.  */
	inline static public var GLFW_RELEASE_BEHAVIOR_FLUSH:Int = 217089;
/** Values for the {@link #GLFW_CONTEXT_RELEASE_BEHAVIOR CONTEXT_RELEASE_BEHAVIOR} hint.  */
	inline static public var GLFW_RELEASE_BEHAVIOR_NONE:Int = 217090;
/** JNI method for {@link #glfwCreateWindow CreateWindow}  */
	static public function nglfwCreateWindow(width:Int,height:Int,title:haxe.Int64,monitor:haxe.Int64,share:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwHideWindow HideWindow}  */
	static public function nglfwHideWindow(window:haxe.Int64):Void;
/**
 * Sets the swap interval for the current context, i.e. the number of screen updates to wait from the time {@link #glfwSwapBuffers SwapBuffers} was called before swapping the
 * buffers and returning. This is sometimes called <i>vertical synchronization</i>, <i>vertical retrace synchronization</i> or just <i>vsync</i>.
 * 
 * <p>Contexts that support either of the <a href="https://www.opengl.org/registry/specs/EXT/wgl_swap_control_tear.txt">WGL_EXT_swap_control_tear</a> and
 * <a href="https://www.opengl.org/registry/specs/EXT/glx_swap_control_tear.txt">GLX_EXT_swap_control_tear</a> extensions also accept negative swap
 * intervals, which allow the driver to swap even if a frame arrives a little bit late. You can check for the presence of these extensions using
 * {@link #glfwExtensionSupported ExtensionSupported}. For more information about swap tearing, see the extension specifications.</p>
 * 
 * <p>A context must be current on the calling thread. Calling this function without a current context will cause a {@link #GLFW_NO_CURRENT_CONTEXT NO_CURRENT_CONTEXT} error.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may be called from any thread.</li>
 * <li>This function is not called during window creation, leaving the swap interval set to whatever is the default on that platform. This is done because
 * some swap interval extensions used by GLFW do not allow the swap interval to be reset to zero once it has been set to a non-zero value.</li>
 * <li>Some GPU drivers do not honor the requested swap interval, either because of a user setting that overrides the application's request or due to bugs
 * in the driver.</li>
 * </ul></p>
 *
 * @param interval the minimum number of screen updates to wait for until the buffers are swapped by {@link #glfwSwapBuffers SwapBuffers}
 *
 * @since GLFW 1.0
 */
	static public function glfwSwapInterval(interval:Int):Void;
/**
 * Sets the character callback of the specified window, which is called when a Unicode character is input.
 * 
 * <p>The character callback is intended for Unicode text input. As it deals with characters, it is keyboard layout dependent, whereas {@link #glfwSetKeyCallback SetKeyCallback} is
 * not. Characters do not map 1:1 to physical keys, as a key may produce zero, one or more characters. If you want to know whether a specific physical key
 * was pressed or released, see the key callback instead.</p>
 * 
 * <p>The character callback behaves as system text input normally does and will not be called if modifier keys are held down that would prevent normal text
 * input on that platform, for example a Super (Command) key on OS X or Alt key on Windows. There is {@link #glfwSetCharModsCallback SetCharModsCallback} that receives these events.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set
 *
 * @since GLFW 2.4
 */
	static public function glfwSetCharCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWCharCallback):org.lwjgl.glfw.GLFWCharCallback;
/**
 * Creates a {@link GLFWCursorPosCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWCursorPosCallback} instance
 */
	static public function GLFWCursorPosCallback(sam:org.lwjgl.glfw.GLFWCursorPosCallback_SAM):org.lwjgl.glfw.GLFWCursorPosCallback;
/**
 * Processes all pending events.
 * 
 * <p>This function processes only those events that are already in the event queue and then returns immediately. Processing events will cause the window and
 * input callbacks associated with those events to be called.</p>
 * 
 * <p>On some platforms, a window move, resize or menu operation will cause event processing to block. This is due to how event processing is designed on
 * those platforms. You can use the <a href="http://www.glfw.org/docs/latest/window.html#window_refresh">window refresh callback</a> to redraw the
 * contents of your window when necessary during such operations.</p>
 * 
 * <p>On some platforms, certain events are sent directly to the application without going through the event queue, causing callbacks to be called outside of
 * a call to one of the event processing functions.</p>
 * 
 * <p>Event processing is not required for joystick input to work.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li>This function may not be called from a callback.</li>
 * </ul></p>
 */
	static public function glfwPollEvents():Void;
/** JNI method for {@link #glfwGetClipboardString GetClipboardString}  */
	static public function nglfwGetClipboardString(window:haxe.Int64):haxe.Int64;
/**
 * Returns the value of an attribute of the specified window or its OpenGL or OpenGL ES context.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to query
 * @param attrib the <a href="http://www.glfw.org/docs/latest/window.html#window_attribs">window attribute</a> whose value to return. One of:<br>{@link #GLFW_FOCUSED FOCUSED}, {@link #GLFW_ICONIFIED ICONIFIED}, {@link #GLFW_RESIZABLE RESIZABLE}, {@link #GLFW_VISIBLE VISIBLE}, {@link #GLFW_DECORATED DECORATED}, {@link #GLFW_AUTO_ICONIFY AUTO_ICONIFY}, {@link #GLFW_FLOATING FLOATING}
 *
 * @return the value of the attribute, or zero if an error occured
 *
 * @since GLFW 3.0
 */
	static public function glfwGetWindowAttrib(window:haxe.Int64,attrib:Int):Int;
/**
 * Sets the iconification callback of the specified window, which is called when the window is iconified or restored.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set or the library had not been
 *         <a href="http://www.glfw.org/docs/latest/intro.html#intro_init">initialized</a>
 *
 * @since GLFW 3.0
 */
	static public function glfwSetWindowIconifyCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowIconifyCallback):org.lwjgl.glfw.GLFWWindowIconifyCallback;
/**
 * Returns the position, in screen coordinates, of the upper-left corner of the specified monitor.
 * 
 * <p>Any or all of the position arguments may be {@code NULL}. If an error occurs, all non-{@code NULL} position arguments will be set to zero.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param monitor the monitor to query
 * @param xpos    where to store the monitor x-coordinate, or {@code NULL}
 * @param ypos    where to store the monitor y-coordinate, or {@code NULL}
 *
 * @since GLFW 3.0
 */
/** Alternative version of: {@link #glfwGetMonitorPos GetMonitorPos}  */
	static public function glfwGetMonitorPos(monitor:haxe.Int64,xpos:java.nio.IntBuffer,ypos:java.nio.IntBuffer):Void;
	@:overload(function (monitor:haxe.Int64,xpos:java.nio.ByteBuffer,ypos:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glfwSetWindowFocusCallback SetWindowFocusCallback}  */
	static public function nglfwSetWindowFocusCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/**
 * Returns the values of all axes of the specified joystick. Each element in the array is a value between -1.0 and 1.0.
 * 
 * <p>The returned array is allocated and freed by GLFW. You should not free it yourself. It is valid until the specified joystick is disconnected, this
 * function is called again for that joystick or the library is terminated.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param joy the joystick to query
 *
 * @return an array of axis values, or {@code NULL} if the joystick is not present
 *
 * @since GLFW 2.2
 */
	static public function glfwGetJoystickAxes(joy:Int):java.nio.FloatBuffer;
/**
 * Retrieves the size, in pixels, of the framebuffer of the specified window. If you wish to retrieve the size of the window in screen coordinates, see
 * {@link #glfwGetWindowSize GetWindowSize}.
 * 
 * <p>Any or all of the size arguments may be {@code NULL}. If an error occurs, all non-{@code NULL} size arguments will be set to zero.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose framebuffer to query
 * @param width  where to store the width, in pixels, of the framebuffer, or {@code NULL}
 * @param height where to store the height, in pixels, of the framebuffer, or {@code NULL}
 *
 * @since GLFW 3.0
 */
/** Alternative version of: {@link #glfwGetFramebufferSize GetFramebufferSize}  */
	static public function glfwGetFramebufferSize(window:haxe.Int64,width:java.nio.IntBuffer,height:java.nio.IntBuffer):Void;
	@:overload(function (window:haxe.Int64,width:java.nio.ByteBuffer,height:java.nio.ByteBuffer):Void {})
/**
 * Sets the user-defined pointer of the specified window. The current value is retained until the window is destroyed. The initial value is {@code NULL}.
 * 
 * <p>This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param window  the window whose pointer to set
 * @param pointer the new value
 *
 * @since GLFW 3.0
 */
	static public function glfwSetWindowUserPointer(window:haxe.Int64,pointer:haxe.Int64):Void;
/**
 * Returns the value of an input option for the specified window.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to query
 * @param mode   the input mode whose value to return. One of:<br>{@link #GLFW_CURSOR CURSOR}, {@link #GLFW_STICKY_KEYS STICKY_KEYS}, {@link #GLFW_STICKY_MOUSE_BUTTONS STICKY_MOUSE_BUTTONS}
 *
 * @return the input mode value
 *
 * @since GLFW 3.0
 */
	static public function glfwGetInputMode(window:haxe.Int64,mode:Int):Int;
/**
 * Sets the cursor position callback of the specified window, which is called when the cursor is moved. The callback is provided with the position, in
 * screen coordinates, relative to the upper-left corner of the client area of the window.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set
 *
 * @since GLFW 1.0
 */
	static public function glfwSetCursorPosCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWCursorPosCallback):org.lwjgl.glfw.GLFWCursorPosCallback;
/**
 * Creates a {@link GLFWMonitorCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWMonitorCallback} instance
 */
	static public function GLFWMonitorCallback(sam:org.lwjgl.glfw.GLFWMonitorCallback_SAM):org.lwjgl.glfw.GLFWMonitorCallback;
/**
 * Returns the current gamma ramp of the specified monitor.
 * 
 * <p>The returned structure and its arrays are allocated and freed by GLFW. You should not free them yourself. They are valid until the specified monitor is
 * disconnected, this function is called again for that monitor or the library is terminated.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param monitor the monitor to query
 *
 * @return the current gamma ramp, or {@code NULL} if an error occurred
 *
 * @since GLFW 3.0
 */
	static public function glfwGetGammaRamp(monitor:haxe.Int64):java.nio.ByteBuffer;
/**
 * Destroys the specified window and its context. On calling this function, no further callbacks will be called for that window.
 * 
 * <p>If the context of the specified window is current on the main thread, it is detached before being destroyed.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li>This function may not be called from a callback.</li>
 * <li>The context of the specified window must not be current on any other thread when this function is called.</li>
 * </ul></p>
 *
 * @param window the window to destroy
 *
 * @since GLFW 1.0
 */
	static public function glfwDestroyWindow(window:haxe.Int64):Void;
/**
 * Returns the handle of the monitor that the specified window is in full screen on.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to query
 *
 * @return the monitor, or {@code NULL} if the window is in windowed mode or an error occurred
 *
 * @since GLFW 3.0
 */
	static public function glfwGetWindowMonitor(window:haxe.Int64):haxe.Int64;
/**
 * Generates a 256-element gamma ramp from the specified exponent and then calls {@link #glfwSetGammaRamp SetGammaRamp} with it. The value must be a finite number greater than
 * zero.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param monitor the monitor whose gamma ramp to set
 * @param gamma   the desired exponent
 *
 * @since GLFW 3.0
 */
	static public function glfwSetGamma(monitor:haxe.Int64,gamma:Float):Void;
/** JNI method for {@link #glfwGetVideoMode GetVideoMode}  */
	static public function nglfwGetVideoMode(monitor:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwSetWindowShouldClose SetWindowShouldClose}  */
	static public function nglfwSetWindowShouldClose(window:haxe.Int64,value:Int):Void;
/** JNI method for {@link #glfwSetWindowPos SetWindowPos}  */
	static public function nglfwSetWindowPos(window:haxe.Int64,xpos:Int,ypos:Int):Void;
/**
 * Sets the character with modifiers callback of the specified window, which is called when a Unicode character is input regardless of what modifier keys
 * are used.
 * 
 * <p>The character with modifiers callback is intended for implementing custom Unicode character input. For regular Unicode text input, see
 * {@link #glfwSetCharCallback SetCharCallback}. Like the character callback, the character with modifiers callback deals with characters and is keyboard layout dependent.
 * Characters do not map 1:1 to physical keys, as a key may produce zero, one or more characters. If you want to know whether a specific physical key was
 * pressed or released, see {@link #glfwSetKeyCallback SetKeyCallback} instead.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set
 *
 * @since GLFW 3.1
 */
	static public function glfwSetCharModsCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWCharModsCallback):org.lwjgl.glfw.GLFWCharModsCallback;
/**
 * Sets the focus callback of the specified window, which is called when the window gains or loses input focus.
 * 
 * <p>After the focus callback is called for a window that lost input focus, synthetic key and mouse button release events will be generated for all such
 * that had been pressed. For more information, see {@link #glfwSetKeyCallback SetKeyCallback} and {@link #glfwSetMouseButtonCallback SetMouseButtonCallback}.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set or the library had not been
 *         <a href="http://www.glfw.org/docs/latest/intro.html#intro_init">initialized</a>
 *
 * @since GLFW 3.0
 */
	static public function glfwSetWindowFocusCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowFocusCallback):org.lwjgl.glfw.GLFWWindowFocusCallback;
/**
 * Returns the last state reported for the specified key to the specified window. The returned state is one of {@link #GLFW_PRESS PRESS} or {@link #GLFW_RELEASE RELEASE}. The higher-level action
 * {@link #GLFW_REPEAT REPEAT} is only reported to the key callback.
 * 
 * <p>If the {@link #GLFW_STICKY_KEYS STICKY_KEYS} input mode is enabled, this function returns {@link #GLFW_PRESS PRESS} the first time you call it for a key that was pressed, even if that
 * key has already been released.</p>
 * 
 * <p>The key functions deal with physical keys, with key tokens named after their use on the standard US keyboard layout. If you want to input text, use the
 * Unicode character callback instead.</p>
 * 
 * <p>The modifier key bit masks are not key tokens and cannot be used with this function.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li>{@link #GLFW_KEY_UNKNOWN KEY_UNKNOWN} is not a valid key for this function.</li>
 * </ul></p>
 *
 * @param window the desired window
 * @param key    the desired keyboard key
 *
 * @return one of {@link #GLFW_PRESS PRESS} or {@link #GLFW_RELEASE RELEASE}
 *
 * @since GLFW 1.0
 */
	static public function glfwGetKey(window:haxe.Int64,key:Int):Int;
/**
 * Sets the framebuffer resize callback of the specified window, which is called when the framebuffer of the specified window is resized.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set or the library had not been
 *         <a href="http://www.glfw.org/docs/latest/intro.html#intro_init">initialized</a>
 *
 * @since GLFW 3.0
 */
	static public function glfwSetFramebufferSizeCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWFramebufferSizeCallback):org.lwjgl.glfw.GLFWFramebufferSizeCallback;
/**
 * Makes the specified window visible if it was previously hidden. If the window is already visible or is in full screen mode, this function does nothing.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to make visible
 *
 * @since GLFW 3.0
 */
	static public function glfwShowWindow(window:haxe.Int64):Void;
/** JNI method for {@link #glfwSetWindowIconifyCallback SetWindowIconifyCallback}  */
	static public function nglfwSetWindowIconifyCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/**
 * Destroys a cursor previously created with {@link #glfwCreateCursor CreateCursor}. Any remaining cursors will be destroyed by {@link #glfwTerminate Terminate}.
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li>This function may not be called from a callback.</li>
 * </ul></p>
 *
 * @param cursor the cursor object to destroy
 *
 * @since GLFW 3.1
 */
	static public function glfwDestroyCursor(cursor:haxe.Int64):Void;
/**
 * Sets an input option for the specified window.
 * 
 * <p>If {@code mode} is {@link #GLFW_CURSOR CURSOR}, the value must be one of the following cursor modes:
 * <ul>
 * <li>{@link #GLFW_CURSOR_NORMAL CURSOR_NORMAL} makes the cursor visible and behaving normally.</li>
 * <li>{@link #GLFW_CURSOR_HIDDEN CURSOR_HIDDEN} makes the cursor invisible when it is over the client area of the window but does not restrict the cursor from leaving.</li>
 * <li>{@link #GLFW_CURSOR_DISABLED CURSOR_DISABLED} hides and grabs the cursor, providing virtual and unlimited cursor movement. This is useful for implementing for example 3D camera
 * controls.</li>
 * </ul></p>
 * 
 * <p>If {@code mode} is {@link #GLFW_STICKY_KEYS STICKY_KEYS}, the value must be either {@link GL11#GL_TRUE} to enable sticky keys, or {@link GL11#GL_FALSE} to disable it. If sticky keys are
 * enabled, a key press will ensure that {@link #glfwGetKey GetKey} returns {@link #GLFW_PRESS PRESS} the next time it is called even if the key had been released before the call. This is
 * useful when you are only interested in whether keys have been pressed but not when or in which order.</p>
 * 
 * <p>If {@code mode} is {@link #GLFW_STICKY_MOUSE_BUTTONS STICKY_MOUSE_BUTTONS}, the value must be either {@link GL11#GL_TRUE} to enable sticky mouse buttons, or {@link GL11#GL_FALSE} to
 * disable it. If sticky mouse buttons are enabled, a mouse button press will ensure that {@link #glfwGetMouseButton GetMouseButton} returns {@link #GLFW_PRESS PRESS} the next
 * time it is called even if the mouse button had been released before the call. This is useful when you are only interested in whether mouse buttons have
 * been pressed but not when or in which order.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose input mode to set
 * @param mode   the input mode to set. One of:<br>{@link #GLFW_CURSOR CURSOR}, {@link #GLFW_STICKY_KEYS STICKY_KEYS}, {@link #GLFW_STICKY_MOUSE_BUTTONS STICKY_MOUSE_BUTTONS}
 * @param value  the new value of the specified input mode
 *
 * @since GFLW 3.0
 */
	static public function glfwSetInputMode(window:haxe.Int64,mode:Int,value:Int):Void;
/**
 * Destroys all remaining windows and cursors, restores any modified gamma ramps and frees any other allocated resources. Once this function is called, you
 * must again call {@link #glfwInit Init} successfully before you will be able to use most GLFW functions.
 * 
 * <p>If GLFW has been successfully initialized, this function should be called before the application exits. If initialization fails, there is no need to
 * call this function, as it is called by {@link #glfwInit Init} before it returns failure.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may be called before {@link #glfwInit Init}.</li>
 * <li>This function may only be called from the main thread.</li>
 * <li>This function may not be called from a callback.</li>
 * <li>No window's context may be current on another thread when this function is called.</li>
 * </ul></p>
 */
	static public function glfwTerminate():Void;
/**
 * Returns an array of handles for all currently connected monitors.
 * 
 * <p>The returned array is allocated and freed by GLFW. You should not free it yourself. It is guaranteed to be valid only until the monitor configuration
 * changes or the library is terminated.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @return an array of monitor handlers, or {@code NULL} if an error occured
 *
 * @since GLFW 3.0
 */
	static public function glfwGetMonitors():org.lwjgl.PointerBuffer;
/** JNI method for {@link #glfwSetWindowTitle SetWindowTitle}  */
	static public function nglfwSetWindowTitle(window:haxe.Int64,title:haxe.Int64):Void;
/**
 * Sets the refresh callback of the specified window, which is called when the client area of the window needs to be redrawn, for example if the window has
 * been exposed after having been covered by another window.
 * 
 * <p>On compositing window systems such as Aero, Compiz or Aqua, where the window contents are saved off-screen, this callback may be called only very
 * infrequently or never at all.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set or the library had not been
 *         <a href="http://www.glfw.org/docs/latest/intro.html#intro_init">initialized</a>
 *
 * @since GLFW 2.5
 */
	static public function glfwSetWindowRefreshCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowRefreshCallback):org.lwjgl.glfw.GLFWWindowRefreshCallback;
/**
 * Sets the mouse button callback of the specified window, which is called when a mouse button is pressed or released.
 * 
 * <p>When a window loses input focus, it will generate synthetic mouse button release events for all pressed mouse buttons. You can tell these events from
 * user-generated events by the fact that the synthetic ones are generated after the focus loss event has been processed, i.e. after the window focus
 * callback has been called.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set
 *
 * @since GLFW 1.0
 */
	static public function glfwSetMouseButtonCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWMouseButtonCallback):org.lwjgl.glfw.GLFWMouseButtonCallback;
/** CharSequence version of: {@link #glfwSetClipboardString SetClipboardString}  */
/**
 * Sets the system clipboard to the specified, UTF-8 encoded string.
 * 
 * <p>The specified string is copied before this function returns.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window that will own the clipboard contents
 * @param string a UTF-8 encoded string
 *
 * @since GLFW 3.0
 */
	static public function glfwSetClipboardString(window:haxe.Int64,string:java.nio.ByteBuffer):Void;
	@:overload(function (window:haxe.Int64,string:java.lang.CharSequence):Void {})
/**
 * Returns the primary monitor. This is usually the monitor where elements like the Windows task bar or the OS X menu bar is located.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @return the primary monitor, or {@code NULL} if an error occured
 *
 * @since GLFW 3.0
 */
	static public function glfwGetPrimaryMonitor():haxe.Int64;
/** JNI method for {@link #glfwGetMonitorName GetMonitorName}  */
	static public function nglfwGetMonitorName(monitor:haxe.Int64):haxe.Int64;
/**
 * Creates a {@link GLFWWindowIconifyCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWWindowIconifyCallback} instance
 */
	static public function GLFWWindowIconifyCallback(sam:org.lwjgl.glfw.GLFWWindowIconifyCallback_SAM):org.lwjgl.glfw.GLFWWindowIconifyCallback;
/** JNI method for {@link #glfwSetMouseButtonCallback SetMouseButtonCallback}  */
	static public function nglfwSetMouseButtonCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/**
 * Returns the value of the GLFW timer. Unless the timer has been set using {@link #glfwSetTime SetTime}, the timer measures time elapsed since GLFW was initialized.
 * 
 * <p>The resolution of the timer is system dependent, but is usually on the order of a few micro- or nanoseconds. It uses the highest-resolution monotonic
 * time source on each supported platform.</p>
 * 
 * <p>This function may be called from any thread. Access is not synchronized.</p>
 *
 * @return the current value, in seconds, or zero if an error occurred
 *
 * @since GLFW 1.0
 */
	static public function glfwGetTime():Float;
/** JNI method for {@link #glfwSwapBuffers SwapBuffers}  */
	static public function nglfwSwapBuffers(window:haxe.Int64):Void;
/** JNI method for {@link #glfwSetWindowUserPointer SetWindowUserPointer}  */
	static public function nglfwSetWindowUserPointer(window:haxe.Int64,pointer:haxe.Int64):Void;
/** JNI method for {@link #glfwSetFramebufferSizeCallback SetFramebufferSizeCallback}  */
	static public function nglfwSetFramebufferSizeCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/**
 * Creates a {@link GLFWCharModsCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWCharModsCallback} instance
 */
	static public function GLFWCharModsCallback(sam:org.lwjgl.glfw.GLFWCharModsCallback_SAM):org.lwjgl.glfw.GLFWCharModsCallback;
/** JNI method for {@link #glfwSetWindowSizeCallback SetWindowSizeCallback}  */
	static public function nglfwSetWindowSizeCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwGetVersionString GetVersionString}  */
	static public function nglfwGetVersionString():haxe.Int64;
/** JNI method for {@link #glfwGetJoystickAxes GetJoystickAxes}  */
	static public function nglfwGetJoystickAxes(joy:Int,count:haxe.Int64):haxe.Int64;
/**
 * Returns a cursor with a standard shape, that can be set for a window with {@link #glfwSetCursor SetCursor}.
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li>This function may not be called from a callback.</li>
 * <li>The specified image data is copied before this function returns.</li>
 * </ul></p>
 *
 * @param shape one of the standard shapes. One of:<br>{@link #GLFW_ARROW_CURSOR ARROW_CURSOR}, {@link #GLFW_IBEAM_CURSOR IBEAM_CURSOR}, {@link #GLFW_CROSSHAIR_CURSOR CROSSHAIR_CURSOR}, {@link #GLFW_HAND_CURSOR HAND_CURSOR}, {@link #GLFW_HRESIZE_CURSOR HRESIZE_CURSOR}, {@link #GLFW_VRESIZE_CURSOR VRESIZE_CURSOR}
 *
 * @return a new cursor ready to use or {@code NULL} if an error occurred
 *
 * @since GLFW 3.1
 */
	static public function glfwCreateStandardCursor(shape:Int):haxe.Int64;
/**
 * Returns an array of all video modes supported by the specified monitor. The returned array is sorted in ascending order, first by color bit depth (the
 * sum of all channel depths) and then by resolution area (the product of width and height).
 * 
 * <p>The returned array is allocated and freed by GLFW. You should not free it yourself. It is valid until the specified monitor is disconnected, this
 * function is called again for that monitor or the library is terminated.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param monitor the monitor to query
 * @param count   where to store the number of video modes in the returned array. This is set to zero if an error occurred.
 *
 * @return an array of video modes, or {@code NULL} if an error occured
 *
 * @since GLFW 1.0
 */
/** Alternative version of: {@link #glfwGetVideoModes GetVideoModes}  */
	static public function glfwGetVideoModes(monitor:haxe.Int64,count:java.nio.IntBuffer):java.nio.ByteBuffer;
	@:overload(function (monitor:haxe.Int64,count:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/**
 * Returns the current value of the user-defined pointer of the specified window. The initial value is {@code NULL}.
 * 
 * <p>This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param window the window whose pointer to return
 *
 * @since GLFW 3.0
 */
	static public function glfwGetWindowUserPointer(window:haxe.Int64):haxe.Int64;
/**
 * Returns the last state reported for the specified mouse button to the specified window. The returned state is one of {@link #GLFW_PRESS PRESS} or {@link #GLFW_RELEASE RELEASE}. The
 * higher-level action {@link #GLFW_REPEAT REPEAT} is only reported to the mouse button callback.
 * 
 * <p>If the {@link #GLFW_STICKY_MOUSE_BUTTONS STICKY_MOUSE_BUTTONS} input mode is enabled, this function returns {@link #GLFW_PRESS PRESS} the first time you call it for a mouse button that has been pressed,
 * even if that mouse button has already been released.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the desired window
 * @param button the desired mouse button
 *
 * @return one of {@link #GLFW_PRESS PRESS} or {@link #GLFW_RELEASE RELEASE}
 *
 * @since GLFW 1.0
 */
	static public function glfwGetMouseButton(window:haxe.Int64,button:Int):Int;
/**
 * Sets the size, in pixels, of the client area of the specified window.
 * 
 * <p>For full screen windows, this function selects and switches to the resolution closest to the specified size, without affecting the window's context. As
 * the context is unaffected, the bit depths of the framebuffer remain unchanged.</p>
 * 
 * <p>The window manager may put limits on what sizes are allowed. GLFW cannot and should not override these limits.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to resize
 * @param width  the desired width of the specified window
 * @param height the desired height of the specified window
 *
 * @since GLFW 1.0
 */
	static public function glfwSetWindowSize(window:haxe.Int64,width:Int,height:Int):Void;
/** JNI method for {@link #glfwGetMonitorPos GetMonitorPos}  */
	static public function nglfwGetMonitorPos(monitor:haxe.Int64,xpos:haxe.Int64,ypos:haxe.Int64):Void;
/**
 * Creates a {@link GLFWFramebufferSizeCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWFramebufferSizeCallback} instance
 */
	static public function GLFWFramebufferSizeCallback(sam:org.lwjgl.glfw.GLFWFramebufferSizeCallback_SAM):org.lwjgl.glfw.GLFWFramebufferSizeCallback;
/** JNI method for {@link #glfwSetCursor SetCursor}  */
	static public function nglfwSetCursor(window:haxe.Int64,cursor:haxe.Int64):Void;
/** JNI method for {@link #glfwGetJoystickButtons GetJoystickButtons}  */
	static public function nglfwGetJoystickButtons(joy:Int,count:haxe.Int64):haxe.Int64;
/**
 * Sets the error callback, which is called with an error code and a human-readable description each time a GLFW error occurs.
 * 
 * <p>The error callback is called on the thread where the error occurred. If you are using GLFW from multiple threads, your error callback needs to be
 * written accordingly.</p>
 * 
 * <p>Because the description string may have been generated specifically for that error, it is not guaranteed to be valid after the callback has returned. If
 * you wish to use it after the callback returns, you need to make a copy.</p>
 * 
 * <p>Once set, the error callback remains set even after the library has been terminated.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may be called before {@link #glfwInit Init}.</li>
 * <li>This function may only be called from the main thread.</li>
 * </ul></p>
 *
 * @param cbfun the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set
 *
 * @since GLFW 3.0
 */
	static public function glfwSetErrorCallback(cbfun:org.lwjgl.glfw.GLFWErrorCallback):org.lwjgl.glfw.GLFWErrorCallback;
/**
 * Sets the monitor configuration callback, or removes the currently set callback. This is called when a monitor is connected to or disconnected from the
 * system.
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li><b>X11</b>: This callback is not yet called on monitor configuration changes.</li>
 * </ul></p>
 *
 * @param cbfun the new callback, or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set or the library had not been initialized
 *
 * @since GLFW 3.0
 */
	static public function glfwSetMonitorCallback(cbfun:org.lwjgl.glfw.GLFWMonitorCallback):org.lwjgl.glfw.GLFWMonitorCallback;
/** JNI method for {@link #glfwSetGamma SetGamma}  */
	static public function nglfwSetGamma(monitor:haxe.Int64,gamma:Float):Void;
/** JNI method for {@link #glfwDestroyWindow DestroyWindow}  */
	static public function nglfwDestroyWindow(window:haxe.Int64):Void;
/** JNI method for {@link #glfwGetWindowPos GetWindowPos}  */
	static public function nglfwGetWindowPos(window:haxe.Int64,xpos:haxe.Int64,ypos:haxe.Int64):Void;
/**
 * Returns a human-readable name, encoded as UTF-8, of the specified monitor. The name typically reflects the make and model of the monitor and is not
 * guaranteed to be unique among the connected monitors.
 * 
 * <p>The returned string is allocated and freed by GLFW. You should not free it yourself. It is valid until the specified monitor is disconnected or the
 * library is terminated.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param monitor the monitor to query
 *
 * @return the UTF-8 encoded name of the monitor, or {@code NULL} if an error occured
 *
 * @since GLFW 3.0
 */
	static public function glfwGetMonitorName(monitor:haxe.Int64):String;
/** JNI method for {@link #glfwGetCursorPos GetCursorPos}  */
	static public function nglfwGetCursorPos(window:haxe.Int64,xpos:haxe.Int64,ypos:haxe.Int64):Void;
/**
 * Creates a {@link GLFWCharCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWCharCallback} instance
 */
	static public function GLFWCharCallback(sam:org.lwjgl.glfw.GLFWCharCallback_SAM):org.lwjgl.glfw.GLFWCharCallback;
/**
 * Returns the state of all buttons of the specified joystick. Each element in the array is either {@link #GLFW_PRESS PRESS} or {@link #GLFW_RELEASE RELEASE}.
 * 
 * <p>The returned array is allocated and freed by GLFW. You should not free it yourself. It is valid until the specified joystick is disconnected, this
 * function is called again for that joystick or the library is terminated.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param joy the joystick to query
 *
 * @return an array of button states, or {@code NULL} if the joystick is not present
 *
 * @since GLFW 2.2
 */
	static public function glfwGetJoystickButtons(joy:Int):java.nio.ByteBuffer;
/** JNI method for {@link #glfwGetVideoModes GetVideoModes}  */
	static public function nglfwGetVideoModes(monitor:haxe.Int64,count:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwWindowShouldClose WindowShouldClose}  */
	static public function nglfwWindowShouldClose(window:haxe.Int64):Int;
/**
 * Sets the key callback of the specified window, which is called when a key is pressed, repeated or released.
 * 
 * <p>The key functions deal with physical keys, with layout independent key tokens named after their values in the standard US keyboard layout. If you want
 * to input text, use {@link #glfwSetCharCallback SetCharCallback} instead.</p>
 * 
 * <p>When a window loses input focus, it will generate synthetic key release events for all pressed keys. You can tell these events from user-generated
 * events by the fact that the synthetic ones are generated after the focus loss event has been processed, i.e. after the window focus callback has been
 * called.</p>
 * 
 * <p>The scancode of a key is specific to that platform or sometimes even to that machine. Scancodes are intended to allow users to bind keys that don't have
 * a GLFW key token. Such keys have {@code key} set to {@link #GLFW_KEY_UNKNOWN KEY_UNKNOWN}, their state is not saved and so it cannot be queried with {@link #glfwGetKey GetKey}.</p>
 * 
 * <p>Sometimes GLFW needs to generate synthetic key events, in which case the scancode may be zero.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set
 *
 * @since GLFW 1.0
 */
	static public function glfwSetKeyCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWKeyCallback):org.lwjgl.glfw.GLFWKeyCallback;
/**
 * Creates a {@link GLFWErrorCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWErrorCallback} instance
 */
	static public function GLFWErrorCallback(sam:org.lwjgl.glfw.GLFWErrorCallback_SAM):org.lwjgl.glfw.GLFWErrorCallback;
/**
 * Hides the specified window, if it was previously visible. If the window is already hidden or is in full screen mode, this function does nothing.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to hide
 *
 * @since GLFW 3.0
 */
	static public function glfwHideWindow(window:haxe.Int64):Void;
/** JNI method for {@link #glfwSetCursorPos SetCursorPos}  */
	static public function nglfwSetCursorPos(window:haxe.Int64,xpos:Float,ypos:Float):Void;
/** JNI method for {@link #glfwSetGammaRamp SetGammaRamp}  */
	static public function nglfwSetGammaRamp(monitor:haxe.Int64,ramp:haxe.Int64):Void;
/**
 * Posts an empty event from the current thread to the main thread event queue, causing {@link #glfwWaitEvents WaitEvents} to return.
 * 
 * <p>If no windows exist, this function returns immediately. For synchronization of threads in applications that do not create windows, use your threading
 * library of choice.</p>
 * 
 * <p>This function may be called from any thread.</p>
 */
	static public function glfwPostEmptyEvent():Void;
/** JNI method for {@link #glfwGetWindowMonitor GetWindowMonitor}  */
	static public function nglfwGetWindowMonitor(window:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #glfwGetProcAddress GetProcAddress}  */
/**
 * Returns the address of the specified <a href="http://www.glfw.org/docs/latest/context.html#context_glext">core or extension function</a>, if it is
 * supported by the current context.
 * 
 * <p>A context must be current on the calling thread.  Calling this function without a current context will cause a `GLFW_NO_CURRENT_CONTEXT` error.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>The addresses of a given function is not guaranteed to be the same between contexts.</li>
 * <li>This function may return a non-{@code NULL} address despite the associated version or extension not being available. Always check the context version or
 * extension string presence first.</li>
 * <li>The returned function pointer is valid until the context is destroyed or the library is terminated.</li>
 * <li>This function may be called from any thread.</li>
 * </ul></p>
 *
 * @param procname the ASCII encoded name of the function
 *
 * @return the address of the function, or {@code NULL} if the function is unavailable
 *
 * @since GLFW 1.0
 */
	static public function glfwGetProcAddress(procname:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (procname:java.lang.CharSequence):haxe.Int64 {})
/** JNI method for {@link #glfwGetKey GetKey}  */
	static public function nglfwGetKey(window:haxe.Int64,key:Int):Int;
/**
 * Makes the OpenGL or OpenGL ES context of the specified window current on the calling thread. A context can only be made current on a single thread at a
 * time and each thread can have only a single current context at a time.
 * 
 * <p>By default, making a context non-current implicitly forces a pipeline flush. On machines that support
 * <a href="https://www.opengl.org/registry/specs/KHR/context_flush_control.txt">GL_KHR_context_flush_control</a>, you can control whether a context
 * performs this flush by setting the {@link #GLFW_CONTEXT_RELEASE_BEHAVIOR CONTEXT_RELEASE_BEHAVIOR} <a href="http://www.glfw.org/docs/latest/window.html#window_hints_ctx">window hint</a>.</p>
 * 
 * <p>This function may be called from any thread.</p>
 *
 * @param window the window whose context to make current, or {@code NULL} to detach the current context
 *
 * @since GLFW 3.0
 */
	static public function glfwMakeContextCurrent(window:haxe.Int64):Void;
/** JNI method for {@link #glfwSetErrorCallback SetErrorCallback}  */
	static public function nglfwSetErrorCallback(cbfun:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwGetWindowSize GetWindowSize}  */
	static public function nglfwGetWindowSize(window:haxe.Int64,width:haxe.Int64,height:haxe.Int64):Void;
/** JNI method for {@link #glfwSetClipboardString SetClipboardString}  */
	static public function nglfwSetClipboardString(window:haxe.Int64,string:haxe.Int64):Void;
/**
 * Retrieves the size, in screen coordinates, of the client area of the specified window. If you wish to retrieve the size of the framebuffer of the
 * window in pixels, see {@link #glfwGetFramebufferSize GetFramebufferSize}.
 * 
 * <p>Any or all of the size arguments may be {@code NULL}. If an error occurs, all non-{@code NULL} size arguments will be set to zero.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose size to retrieve
 * @param width  where to store the width, in screen coordinates, of the client area, or {@code NULL}
 * @param height where to store the height, in screen coordinates, of the client area, or {@code NULL}
 *
 * @since GLFW 1.0
 */
/** Alternative version of: {@link #glfwGetWindowSize GetWindowSize}  */
	static public function glfwGetWindowSize(window:haxe.Int64,width:java.nio.IntBuffer,height:java.nio.IntBuffer):Void;
	@:overload(function (window:haxe.Int64,width:java.nio.ByteBuffer,height:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glfwGetWindowUserPointer GetWindowUserPointer}  */
	static public function nglfwGetWindowUserPointer(window:haxe.Int64):haxe.Int64;
/**
 * Sets the file drop callback of the specified window, which is called when one or more dragged files are dropped on the window.
 * 
 * <p>Because the path array and its strings may have been generated specifically for that event, they are not guaranteed to be valid after the callback has
 * returned. If you wish to use them after the callback returns, you need to make a deep copy.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set
 *
 * @since GLFW 3.1
 */
	static public function glfwSetDropCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWDropCallback):org.lwjgl.glfw.GLFWDropCallback;
/**
 * Sets the value of the GLFW timer. It then continues to count up from that value. The value must be a positive finite number less than or equal to
 * 18446744073.0, which is approximately 584.5 years.
 * 
 * <p>The upper limit of the timer is calculated as <code style="font-family: monospace">floor((2<sup>64</sup> - 1) / 10<sup>9</sup>)</code> and is due to implementations storing nanoseconds
 * in 64 bits. The limit may be increased in the future.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param time the new value, in seconds
 *
 * @since GLFW 2.2
 */
	static public function glfwSetTime(time:Float):Void;
/** JNI method for {@link #glfwSetInputMode SetInputMode}  */
	static public function nglfwSetInputMode(window:haxe.Int64,mode:Int,value:Int):Void;
/**
 * Sets the scroll callback of the specified window, which is called when a scrolling device is used.
 * 
 * <p>The scroll callback receives all scrolling input, like that from a mouse wheel or a touchpad scrolling area.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set
 *
 * @since GLFW 2.1
 */
	static public function glfwSetScrollCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWScrollCallback):org.lwjgl.glfw.GLFWScrollCallback;
/**
 * Returns the value of the close flag of the specified window.
 * 
 * <p>This function may be called from any thread.</p>
 *
 * @param window the window to query
 *
 * @return the value of the close flag
 *
 * @since GLFW 3.0
 */
	static public function glfwWindowShouldClose(window:haxe.Int64):Int;
/** JNI method for {@link #glfwDestroyCursor DestroyCursor}  */
	static public function nglfwDestroyCursor(cursor:haxe.Int64):Void;
/** JNI method for {@link #glfwGetMouseButton GetMouseButton}  */
	static public function nglfwGetMouseButton(window:haxe.Int64,button:Int):Int;
/**
 * Returns the compile-time generated version string of the GLFW library binary. It describes the version, platform, compiler and any platform-specific
 * compile-time options.
 * 
 * <p><b>Do not use the version string</b> to parse the GLFW library version. The {@link #glfwGetVersion GetVersion} function already provides the version of the
 * running library binary.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function always succeeds.</li>
 * <li>This function may be called before {@link #glfwInit Init}.</li>
 * <li>This function may be called from any thread.</li>
 * <li>The returned string is static and compile-time generated.</li>
 * </ul></p>
 *
 * @return the GLFW version string
 *
 * @since GLFW 3.0
 */
	static public function glfwGetVersionString():String;
/** JNI method for {@link #glfwGetFramebufferSize GetFramebufferSize}  */
	static public function nglfwGetFramebufferSize(window:haxe.Int64,width:haxe.Int64,height:haxe.Int64):Void;
/** JNI method for {@link #glfwSetWindowSize SetWindowSize}  */
	static public function nglfwSetWindowSize(window:haxe.Int64,width:Int,height:Int):Void;
/** JNI method for {@link #glfwGetWindowFrameSize GetWindowFrameSize}  */
	static public function nglfwGetWindowFrameSize(window:haxe.Int64,left:haxe.Int64,top:haxe.Int64,right:haxe.Int64,bottom:haxe.Int64):Void;
/** JNI method for {@link #glfwGetProcAddress GetProcAddress}  */
	static public function nglfwGetProcAddress(procname:haxe.Int64):haxe.Int64;
/**
 * Creates a new custom cursor image that can be set for a window with {@link #glfwSetCursor SetCursor}. The cursor can be destroyed with {@link #glfwDestroyCursor DestroyCursor}. Any remaining
 * cursors are destroyed by {@link #glfwTerminate Terminate}.
 * 
 * <p>The pixels are 32-bit little-endian RGBA, i.e. eight bits per channel. They are arranged canonically as packed sequential rows, starting from the
 * top-left corner.</p>
 * 
 * <p>The cursor hotspot is specified in pixels, relative to the upper-left corner of the cursor image. Like all other coordinate systems in GLFW, the X-axis
 * points to the right and the Y-axis points down.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li>This function may not be called from a callback.</li>
 * <li>The specified image data is copied before this function returns.</li>
 * </ul></p>
 *
 * @param image the desired cursor image
 * @param xhot  the desired x-coordinate, in pixels, of the cursor hotspot
 * @param yhot  the desired y-coordinate, in pixels, of the cursor hotspot
 *
 * @return the handle of the created cursor, or {@code NULL} if an error occurred
 *
 * @since GLFW 3.1
 */
	static public function glfwCreateCursor(image:java.nio.ByteBuffer,xhot:Int,yhot:Int):haxe.Int64;
/**
 * Retrieves the major, minor and revision numbers of the GLFW library. It is intended for when you are using GLFW as a shared library and want to ensure
 * that you are using the minimum required version.
 * 
 * <p>Notes:
 * <ul>
 * <li>Any or all of the version arguments may be {@code NULL}.</li>
 * <li>This function always succeeds.</li>
 * <li>This function may be called before {@link #glfwInit Init}.</li>
 * <li>This function may be called from any thread.</li>
 * </ul></p>
 *
 * @param major where to store the major version number, or {@code NULL}
 * @param minor where to store the minor version number, or {@code NULL}
 * @param rev   where to store the revision number, or {@code NULL}
 *
 * @since GLFW 1.0
 */
/** Alternative version of: {@link #glfwGetVersion GetVersion}  */
	static public function glfwGetVersion(major:java.nio.IntBuffer,minor:java.nio.IntBuffer,rev:java.nio.IntBuffer):Void;
	@:overload(function (major:java.nio.ByteBuffer,minor:java.nio.ByteBuffer,rev:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glfwSetWindowPosCallback SetWindowPosCallback}  */
	static public function nglfwSetWindowPosCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwSetMonitorCallback SetMonitorCallback}  */
	static public function nglfwSetMonitorCallback(cbfun:haxe.Int64):haxe.Int64;
/**
 * Sets the value of the close flag of the specified window. This can be used to override the user's attempt to close the window, or to signal that it
 * should be closed.
 * 
 * <p>This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param window the window whose flag to change
 * @param value  the new value
 *
 * @since GLFW 3.0
 */
	static public function glfwSetWindowShouldClose(window:haxe.Int64,value:Int):Void;
/** JNI method for {@link #glfwGetJoystickName GetJoystickName}  */
	static public function nglfwGetJoystickName(joy:Int):haxe.Int64;
/**
 * Waits until events are queued and processes them.
 * 
 * <p>This function puts the calling thread to sleep until at least one event is available in the event queue. Once one or more events are available, it
 * behaves exactly like {@link #glfwPollEvents PollEvents}, i.e. the events in the queue are processed and the function then returns immediately. Processing events will cause
 * the window and input callbacks associated with those events to be called.</p>
 * 
 * <p>Since not all events are associated with callbacks, this function may return without a callback having been called even if you are monitoring all
 * callbacks.</p>
 * 
 * <p>On some platforms, a window move, resize or menu operation will cause event processing to block. This is due to how event processing is designed on
 * those platforms. You can use the <a href="http://www.glfw.org/docs/latest/window.html#window_refresh">window refresh callback</a> to redraw the
 * contents of your window when necessary during such operations.</p>
 * 
 * <p>On some platforms, certain callbacks may be called outside of a call to one of the event processing functions.</p>
 * 
 * <p>If no windows exist, this function returns immediately. For synchronization of threads in applications that do not create windows, use your threading
 * library of choice.</p>
 * 
 * <p>Event processing is not required for joystick input to work.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li>This function may not be called from a callback.</li>
 * <li>On some platforms, certain callbacks may be called outside of a call to one of the event processing functions.</li>
 * </ul></p>
 */
	static public function glfwWaitEvents():Void;
/**
 * Creates a {@link GLFWKeyCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWKeyCallback} instance
 */
	static public function GLFWKeyCallback(sam:org.lwjgl.glfw.GLFWKeyCallback_SAM):org.lwjgl.glfw.GLFWKeyCallback;
/** JNI method for {@link #glfwGetInputMode GetInputMode}  */
	static public function nglfwGetInputMode(window:haxe.Int64,mode:Int):Int;
/**
 * Returns the current video mode of the specified monitor. If you have created a full screen window for that monitor, the return value will depend on
 * whether that window is iconified.
 * 
 * <p>The returned array is allocated and freed by GLFW. You should not free it yourself. It is valid until the specified monitor is disconnected or the
 * library is terminated.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param monitor the monitor to query
 *
 * @return the current mode of the monitor, or {@code NULL} if an error occurred
 *
 * @since GLFW 3.0
 */
	static public function glfwGetVideoMode(monitor:haxe.Int64):java.nio.ByteBuffer;
/** CharSequence version of: {@link #glfwCreateWindow CreateWindow}  */
/**
 * Creates a window and its associated OpenGL or OpenGL ES context. Most of the options controlling how the window and its context should be created are
 * specified with window hints.
 * 
 * <p>Successful creation does not change which context is current. Before you can use the newly created context, you need to make it current. For information
 * about the {@code share} parameter, see <a href="http://www.glfw.org/docs/latest/context.html#context_sharing">context sharing</a>.</p>
 * 
 * <p>The created window, framebuffer and context may differ from what you requested, as not all parameters and hints are hard constraints. This includes the
 * size of the window, especially for full screen windows. To query the actual attributes of the created window, framebuffer and context, use queries like
 * {@link #glfwGetWindowAttrib GetWindowAttrib} and {@link #glfwGetWindowSize GetWindowSize}.</p>
 * 
 * <p>To create a full screen window, you need to specify the monitor the window will cover. If no monitor is specified, windowed mode will be used. Unless
 * you have a way for the user to choose a specific monitor, it is recommended that you pick the primary monitor. For more information on how to query
 * connected monitors, see <a href="http://www.glfw.org/docs/latest/monitor.html#monitor_monitors">monitors</a>.</p>
 * 
 * <p>For full screen windows, the specified size becomes the resolution of the window's desired video mode. As long as a full screen window has input focus,
 * the supported video mode most closely matching the desired video mode is set for the specified monitor. For more information about full screen windows,
 * including the creation of so called <i>windowed full screen</i> or <i>borderless full screen windows</i>, see
 * <a href="http://www.glfw.org/docs/latest/window.html#window_windowed_full_screen">full screen</a>.</p>
 * 
 * <p>By default, newly created windows use the placement recommended by the window system. To create the window at a specific position, make it initially
 * invisible using the {@link #GLFW_VISIBLE VISIBLE} window hint, set its <a href="http://www.glfw.org/docs/latest/window.html#window_pos">position</a> and then
 * <a href="http://www.glfw.org/docs/latest/window.html#window_hide">show</a> it.</p>
 * 
 * <p>If a full screen window has input focus, the screensaver is prohibited from starting.</p>
 * 
 * <p>Window systems put limits on window sizes. Very large or very small window dimensions may be overridden by the window system on creation. Check the
 * actual <a href="http://www.glfw.org/docs/latest/window.html#window_size">size</a> after creation.</p>
 * 
 * <p>The <a href="http://www.glfw.org/docs/latest/window.html#buffer_swap">swap interval</a> is not set during window creation and the initial value may vary
 * depending on driver settings and defaults.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li>This function may not be called from a callback.</li>
 * <li><b>Windows</b>: Window creation will fail if the Microsoft GDI software OpenGL implementation is the only one available.</li>
 * <li><b>Windows</b>: If the executable has an icon resource named {@code GLFW_ICON}, it will be set as the icon for the window. If no such icon
 * is present, the {@code IDI_WINLOGO} icon will be used instead.</li>
 * <li><b>Windows</b>: The context to share resources with may not be current on any other thread.</li>
 * <li><b>OS X</b>: The GLFW window has no icon, as it is not a document window, but the dock icon will be the same as the application bundle's
 * icon. Also, the first time a window is opened the menu bar is populated with common commands like Hide, Quit and About. The (minimal) about dialog
 * uses information from the application's bundle. For more information on bundles, see the
 * <a href="https://developer.apple.com/library/mac/documentation/CoreFoundation/Conceptual/CFBundles/">Bundle Programming Guide</a> in the Mac
 * Developer Library.</li>
 * <li><b>OS X</b>: The first time a window is created the menu bar is populated with common commands like Hide, Quit and About. The About entry opens a
 * minimal about dialog with information from the application's bundle. The menu bar can be disabled with a
 * <a href="http://www.glfw.org/docs/latest/compile.html#compile_options_osx">compile-time option</a>.</li>
 * <li><b>OS X</b>: On OS X 10.10 and later the window frame will not be rendered at full resolution on Retina displays unless the
 * {@code NSHighResolutionCapable} key is enabled in the application bundle's {@code Info.plist}. For more information, see
 * <a href="https://developer.apple.com/library/mac/documentation/GraphicsAnimation/Conceptual/HighResolutionOSX/Explained/Explained.html">High
 * Resolution Guidelines for OS X</a> in the Mac Developer Library.</li>
 * <li><b>X11</b>: There is no mechanism for setting the window icon yet.</li>
 * <li><b>X11</b>: Some window managers will not respect the placement of initially hidden windows.</li>
 * </ul></p>
 *
 * @param width   the desired width, in screen coordinates, of the window
 * @param height  the desired height, in screen coordinates, of the window
 * @param title   initial, UTF-8 encoded window title
 * @param monitor the monitor to use for fullscreen mode, or {@code NULL} to use windowed mode
 * @param share   the window whose context to share resources with, or {@code NULL} to not share resources
 *
 * @return the handle of the created window, or {@code NULL} if an error occurred
 *
 * @since GLFW 1.0
 */
	static public function glfwCreateWindow(width:Int,height:Int,title:java.nio.ByteBuffer,monitor:haxe.Int64,share:haxe.Int64):haxe.Int64;
	@:overload(function (width:Int,height:Int,title:java.lang.CharSequence,monitor:haxe.Int64,share:haxe.Int64):haxe.Int64 {})
/**
 * Returns the name, encoded as UTF-8, of the specified joystick.
 * 
 * <p>The returned string is allocated and freed by GLFW. You should not free it yourself. It is valid until the specified joystick is disconnected, this
 * function is called again for that joystick or the library is terminated.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param joy the joystick to query
 *
 * @return the UTF-8 encoded name of the joystick, or {@code NULL} if the joystick is not present
 *
 * @since GLFW 3.0
 */
	static public function glfwGetJoystickName(joy:Int):String;
/** JNI method for {@link #glfwGetMonitors GetMonitors}  */
	static public function nglfwGetMonitors(count:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwSetKeyCallback SetKeyCallback}  */
	static public function nglfwSetKeyCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwGetWindowAttrib GetWindowAttrib}  */
	static public function nglfwGetWindowAttrib(window:haxe.Int64,attrib:Int):Int;
/**
 * Returns the size, in millimetres, of the display area of the specified monitor.
 * 
 * <p>Some systems do not provide accurate monitor size information, either because the monitor
 * <a href="https://en.wikipedia.org/wiki/Extended_display_identification_data">EDID</a> data is incorrect or because the driver does not report it
 * accurately.</p>
 * 
 * <p>Any or all of the size arguments may be {@code NULL}. If an error occurs, all non-{@code NULL} size arguments will be set to zero.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li><b>Windows</b>: The OS calculates the returned physical size from the current resolution and system DPI instead of querying the monitor EDID data.</li>
 * </ul></p>
 *
 * @param monitor  the monitor to query
 * @param widthMM  where to store the width, in millimetres, of the monitor's display area, or {@code NULL}
 * @param heightMM where to store the height, in millimetres, of the monitor's display area, or {@code NULL}
 *
 * @since GLFW 3.0
 */
/** Alternative version of: {@link #glfwGetMonitorPhysicalSize GetMonitorPhysicalSize}  */
	static public function glfwGetMonitorPhysicalSize(monitor:haxe.Int64,widthMM:java.nio.IntBuffer,heightMM:java.nio.IntBuffer):Void;
	@:overload(function (monitor:haxe.Int64,widthMM:java.nio.ByteBuffer,heightMM:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glfwGetGammaRamp GetGammaRamp}  */
	static public function nglfwGetGammaRamp(monitor:haxe.Int64):haxe.Int64;
/**
 * Sets the position, in screen coordinates, of the upper-left corner of the client area of the specified windowed mode window. If the window is a full
 * screen window, this function does nothing.
 * 
 * <p><b>Do not use this function</b> to move an already visible window unless you have very good reasons for doing so, as it will confuse and annoy the
 * user.</p>
 * 
 * <p>The window manager may put limits on what positions are allowed. GLFW cannot and should not override these limits.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to query
 * @param xpos   the x-coordinate of the upper-left corner of the client area
 * @param ypos   the y-coordinate of the upper-left corner of the client area
 *
 * @since GLFW 1.0
 */
	static public function glfwSetWindowPos(window:haxe.Int64,xpos:Int,ypos:Int):Void;
/**
 * Resets all window hints to their default values. See {@link #glfwWindowHint WindowHint} for details.
 * 
 * <p>This function may only be called from the main thread.</p>
 */
	static public function glfwDefaultWindowHints():Void;
/**
 * Creates a {@link GLFWWindowFocusCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWWindowFocusCallback} instance
 */
	static public function GLFWWindowFocusCallback(sam:org.lwjgl.glfw.GLFWWindowFocusCallback_SAM):org.lwjgl.glfw.GLFWWindowFocusCallback;
/** JNI method for {@link #glfwSetCharModsCallback SetCharModsCallback}  */
	static public function nglfwSetCharModsCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/**
 * Creates a {@link GLFWDropCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWDropCallback} instance
 */
	static public function GLFWDropCallback(sam:org.lwjgl.glfw.GLFWDropCallback_SAM):org.lwjgl.glfw.GLFWDropCallback;
/**
 * Sets the cursor image to be used when the cursor is over the client area of the specified window. The set cursor will only be visible when the
 * <a href="http://www.glfw.org/docs/latest/input.html#cursor_mode">cursor mode</a> of the window is {@link #GLFW_CURSOR_NORMAL CURSOR_NORMAL}.
 * 
 * <p>On some platforms, the set cursor may not be visible unless the window also has input focus.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to set the system cursor for
 * @param cursor the cursor to set, or {@code NULL} to switch back to the default arrow cursor
 *
 * @since GLFW 3.1
 */
	static public function glfwSetCursor(window:haxe.Int64,cursor:haxe.Int64):Void;
/** JNI method for {@link #glfwExtensionSupported ExtensionSupported}  */
	static public function nglfwExtensionSupported(extension:haxe.Int64):Int;
/** JNI method for {@link #glfwIconifyWindow IconifyWindow}  */
	static public function nglfwIconifyWindow(window:haxe.Int64):Void;
/**
 * Returns the window whose OpenGL or OpenGL ES context is current on the calling thread.
 * 
 * <p>This function may be called from any thread.</p>
 *
 * @return the window whose context is current, or {@code NULL} if no window's context is current
 *
 * @since GLFW 3.0
 */
	static public function glfwGetCurrentContext():haxe.Int64;
/**
 * Creates a {@link GLFWWindowCloseCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWWindowCloseCallback} instance
 */
	static public function GLFWWindowCloseCallback(sam:org.lwjgl.glfw.GLFWWindowCloseCallback_SAM):org.lwjgl.glfw.GLFWWindowCloseCallback;
/** JNI method for {@link #glfwShowWindow ShowWindow}  */
	static public function nglfwShowWindow(window:haxe.Int64):Void;
/**
 * Sets the position callback of the specified window, which is called when the window is moved. The callback is provided with the screen position of the
 * upper-left corner of the client area of the window.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set or the library had not been
 *         <a href="http://www.glfw.org/docs/latest/intro.html#intro_init">initialized</a>
 *
 * @since GLFW 1.0
 */
	static public function glfwSetWindowPosCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowPosCallback):org.lwjgl.glfw.GLFWWindowPosCallback;
/**
 * Sets hints for the next call to {@link #glfwCreateWindow CreateWindow}. The hints, once set, retain their values until changed by a call to glfwWindowHint or
 * {@link #glfwDefaultWindowHints DefaultWindowHints}, or until the library is terminated.
 * 
 * <h3>Supported and default values</h3>
 * <table border=1 cellspacing=0 cellpadding=2 class=lwjgl>
 * <tr><th>Name</th><th>Default value</th><th>Supported values</th></tr>
 * <tr><td>{@link #GLFW_RESIZABLE RESIZABLE}</td><td>{@link GL11#GL_TRUE}</td><td>{@link GL11#GL_TRUE} or {@link GL11#GL_FALSE}</td></tr>
 * <tr><td>{@link #GLFW_VISIBLE VISIBLE}</td><td>{@link GL11#GL_TRUE}</td><td>{@link GL11#GL_TRUE} or {@link GL11#GL_FALSE}</td></tr>
 * <tr><td>{@link #GLFW_DECORATED DECORATED}</td><td>{@link GL11#GL_TRUE}</td><td>{@link GL11#GL_TRUE} or {@link GL11#GL_FALSE}</td></tr>
 * <tr><td>{@link #GLFW_AUTO_ICONIFY AUTO_ICONIFY}</td><td>{@link GL11#GL_TRUE}</td><td>{@link GL11#GL_TRUE} or {@link GL11#GL_FALSE}</td></tr>
 * <tr><td>{@link #GLFW_FLOATING FLOATING}</td><td>{@link GL11#GL_TRUE}</td><td>{@link GL11#GL_TRUE} or {@link GL11#GL_FALSE}</td></tr>
 * <tr><td>{@link #GLFW_RED_BITS RED_BITS}</td><td>8</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_GREEN_BITS GREEN_BITS}</td><td>8</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_BLUE_BITS BLUE_BITS}</td><td>8</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_ALPHA_BITS ALPHA_BITS}</td><td>8</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_DEPTH_BITS DEPTH_BITS}</td><td>24</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_STENCIL_BITS STENCIL_BITS}</td><td>8</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_ACCUM_RED_BITS ACCUM_RED_BITS}</td><td>0</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_ACCUM_GREEN_BITS ACCUM_GREEN_BITS}</td><td>0</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_ACCUM_BLUE_BITS ACCUM_BLUE_BITS}</td><td>0</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_ACCUM_ALPHA_BITS ACCUM_ALPHA_BITS}</td><td>0</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_AUX_BUFFERS AUX_BUFFERS}</td><td>0</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_SAMPLES SAMPLES}</td><td>0</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_REFRESH_RATE REFRESH_RATE}</td><td>0</td><td>0 to {@link Integer#MAX_VALUE}</td></tr>
 * <tr><td>{@link #GLFW_STEREO STEREO}</td><td>{@link GL11#GL_FALSE}</td><td>{@link GL11#GL_TRUE} or {@link GL11#GL_FALSE}</td></tr>
 * <tr><td>{@link #GLFW_SRGB_CAPABLE SRGB_CAPABLE}</td><td>{@link GL11#GL_FALSE}</td><td>{@link GL11#GL_TRUE} or {@link GL11#GL_FALSE}</td></tr>
 * <tr><td>{@link #GLFW_CLIENT_API CLIENT_API}</td><td>{@link #GLFW_OPENGL_API OPENGL_API}</td><td>{@link #GLFW_OPENGL_API OPENGL_API} {@link #GLFW_OPENGL_ES_API OPENGL_ES_API}</td></tr>
 * <tr><td>{@link #GLFW_CONTEXT_VERSION_MAJOR CONTEXT_VERSION_MAJOR}</td><td>1</td><td>Any valid major version number of the chosen client API</td></tr>
 * <tr><td>{@link #GLFW_CONTEXT_VERSION_MINOR CONTEXT_VERSION_MINOR}</td><td>0</td><td>Any valid minor version number of the chosen client API</td></tr>
 * <tr><td>{@link #GLFW_CONTEXT_ROBUSTNESS CONTEXT_ROBUSTNESS}</td><td>{@link #GLFW_NO_ROBUSTNESS NO_ROBUSTNESS}</td><td>{@link #GLFW_NO_ROBUSTNESS NO_ROBUSTNESS} {@link #GLFW_NO_RESET_NOTIFICATION NO_RESET_NOTIFICATION} {@link #GLFW_LOSE_CONTEXT_ON_RESET LOSE_CONTEXT_ON_RESET}</td></tr>
 * <tr><td>{@link #GLFW_CONTEXT_RELEASE_BEHAVIOR CONTEXT_RELEASE_BEHAVIOR}</td><td>{@link #GLFW_ANY_RELEASE_BEHAVIOR ANY_RELEASE_BEHAVIOR}</td><td>{@link #GLFW_ANY_RELEASE_BEHAVIOR ANY_RELEASE_BEHAVIOR} {@link #GLFW_RELEASE_BEHAVIOR_FLUSH RELEASE_BEHAVIOR_FLUSH} {@link #GLFW_RELEASE_BEHAVIOR_NONE RELEASE_BEHAVIOR_NONE}</td></tr>
 * <tr><td>{@link #GLFW_OPENGL_FORWARD_COMPAT OPENGL_FORWARD_COMPAT}</td><td>{@link GL11#GL_FALSE}</td><td>{@link GL11#GL_TRUE} or {@link GL11#GL_FALSE}</td></tr>
 * <tr><td>{@link #GLFW_OPENGL_DEBUG_CONTEXT OPENGL_DEBUG_CONTEXT}</td><td>{@link GL11#GL_FALSE}</td><td>{@link GL11#GL_TRUE} or {@link GL11#GL_FALSE}</td></tr>
 * <tr><td>{@link #GLFW_OPENGL_PROFILE OPENGL_PROFILE}</td><td>{@link #GLFW_OPENGL_ANY_PROFILE OPENGL_ANY_PROFILE}</td><td>{@link #GLFW_OPENGL_ANY_PROFILE OPENGL_ANY_PROFILE} {@link #GLFW_OPENGL_CORE_PROFILE OPENGL_CORE_PROFILE} {@link #GLFW_OPENGL_COMPAT_PROFILE OPENGL_COMPAT_PROFILE}</td></tr>
 * </table>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param target the window hint to set. One of:<br>{@link #GLFW_RESIZABLE RESIZABLE}, {@link #GLFW_VISIBLE VISIBLE}, {@link #GLFW_DECORATED DECORATED}, {@link #GLFW_CLIENT_API CLIENT_API}, {@link #GLFW_CONTEXT_VERSION_MAJOR CONTEXT_VERSION_MAJOR}, {@link #GLFW_CONTEXT_VERSION_MINOR CONTEXT_VERSION_MINOR}, {@link #GLFW_CONTEXT_REVISION CONTEXT_REVISION}, {@link #GLFW_CONTEXT_ROBUSTNESS CONTEXT_ROBUSTNESS}, {@link #GLFW_OPENGL_FORWARD_COMPAT OPENGL_FORWARD_COMPAT}, {@link #GLFW_OPENGL_DEBUG_CONTEXT OPENGL_DEBUG_CONTEXT}, {@link #GLFW_OPENGL_PROFILE OPENGL_PROFILE}, {@link #GLFW_CONTEXT_RELEASE_BEHAVIOR CONTEXT_RELEASE_BEHAVIOR}, {@link #GLFW_RED_BITS RED_BITS}, {@link #GLFW_GREEN_BITS GREEN_BITS}, {@link #GLFW_BLUE_BITS BLUE_BITS}, {@link #GLFW_ALPHA_BITS ALPHA_BITS}, {@link #GLFW_DEPTH_BITS DEPTH_BITS}, {@link #GLFW_STENCIL_BITS STENCIL_BITS}, {@link #GLFW_ACCUM_RED_BITS ACCUM_RED_BITS}, {@link #GLFW_ACCUM_GREEN_BITS ACCUM_GREEN_BITS}, {@link #GLFW_ACCUM_BLUE_BITS ACCUM_BLUE_BITS}, {@link #GLFW_ACCUM_ALPHA_BITS ACCUM_ALPHA_BITS}, {@link #GLFW_AUX_BUFFERS AUX_BUFFERS}, {@link #GLFW_STEREO STEREO}, {@link #GLFW_SAMPLES SAMPLES}, {@link #GLFW_SRGB_CAPABLE SRGB_CAPABLE}, {@link #GLFW_REFRESH_RATE REFRESH_RATE}, {@link #GLFW_DOUBLE_BUFFER DOUBLE_BUFFER}
 * @param hint   the new value of the window hint
 *
 * @since GLFW 2.2
 */
	static public function glfwWindowHint(target:Int,hint:Int):Void;
/** JNI method for {@link #glfwSetCursorPosCallback SetCursorPosCallback}  */
	static public function nglfwSetCursorPosCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwSetWindowCloseCallback SetWindowCloseCallback}  */
	static public function nglfwSetWindowCloseCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwSetCursorEnterCallback SetCursorEnterCallback}  */
	static public function nglfwSetCursorEnterCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwInit Init}  */
	static public function nglfwInit():Int;
/**
 * Returns the position of the cursor, in screen coordinates, relative to the upper-left corner of the client area of the specified window.
 * 
 * <p>If the cursor is disabled (with {@link #GLFW_CURSOR_DISABLED CURSOR_DISABLED}) then the cursor position is unbounded and limited only by the minimum and maximum values of a
 * <b>double</b>.</p>
 * 
 * <p>The coordinates can be converted to their integer equivalents with the {@link Math#floor} function. Casting directly to an integer type works for positive
 * coordinates, but fails for negative ones.</p>
 * 
 * <p>Any or all of the position arguments may be {@code NULL}. If an error occurs, all non-{@code NULL} position arguments will be set to zero.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the desired window
 * @param xpos   where to store the cursor x-coordinate, relative to the left edge of the client area, or {@code NULL}
 * @param ypos   where to store the cursor y-coordinate, relative to the to top edge of the client area, or {@code NULL}.
 *
 * @since GLFW 1.0
 */
/** Alternative version of: {@link #glfwGetCursorPos GetCursorPos}  */
	static public function glfwGetCursorPos(window:haxe.Int64,xpos:java.nio.DoubleBuffer,ypos:java.nio.DoubleBuffer):Void;
	@:overload(function (window:haxe.Int64,xpos:java.nio.ByteBuffer,ypos:java.nio.ByteBuffer):Void {})
/**
 * Creates a {@link GLFWWindowRefreshCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWWindowRefreshCallback} instance
 */
	static public function GLFWWindowRefreshCallback(sam:org.lwjgl.glfw.GLFWWindowRefreshCallback_SAM):org.lwjgl.glfw.GLFWWindowRefreshCallback;
/**
 * Creates a {@link GLFWMouseButtonCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWMouseButtonCallback} instance
 */
	static public function GLFWMouseButtonCallback(sam:org.lwjgl.glfw.GLFWMouseButtonCallback_SAM):org.lwjgl.glfw.GLFWMouseButtonCallback;
/**
 * Retrieves the size, in screen coordinates, of each edge of the frame of the specified window. This size includes the title bar, if the window has one.
 * The size of the frame may vary depending on the <a href="http://www.glfw.org/docs/latest/window.html#window-hints_wnd">window-related hints</a> used to
 * create it.
 * 
 * <p>Because this function retrieves the size of each window frame edge and not the offset along a particular coordinate axis, the retrieved values will
 * always be zero or positive.</p>
 * 
 * <p>Any or all of the size arguments may be {@code NULL}. If an error occurs, all non-{@code NULL} size arguments will be set to zero.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose frame size to query
 * @param left   where to store the size, in screen coordinates, of the left edge of the window frame, or {@code NULL}
 * @param top    where to store the size, in screen coordinates, of the top edge of the window frame, or {@code NULL}
 * @param right  where to store the size, in screen coordinates, of the right edge of the window frame, or {@code NULL}
 * @param bottom where to store the size, in screen coordinates, of the bottom edge of the window frame, or {@code NULL}
 *
 * @since GLFW 3.1
 */
/** Alternative version of: {@link #glfwGetWindowFrameSize GetWindowFrameSize}  */
	static public function glfwGetWindowFrameSize(window:haxe.Int64,left:java.nio.IntBuffer,top:java.nio.IntBuffer,right:java.nio.IntBuffer,bottom:java.nio.IntBuffer):Void;
	@:overload(function (window:haxe.Int64,left:java.nio.ByteBuffer,top:java.nio.ByteBuffer,right:java.nio.ByteBuffer,bottom:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glfwGetVersion GetVersion}  */
	static public function nglfwGetVersion(major:haxe.Int64,minor:haxe.Int64,rev:haxe.Int64):Void;
/**
 * Sets the close callback of the specified window, which is called when the user attempts to close the window, for example by clicking the close widget in
 * the title bar.
 * 
 * <p>The close flag is set before this callback is called, but you can modify it at any time with {@link #glfwSetWindowShouldClose SetWindowShouldClose}.</p>
 * 
 * <p>The close callback is not triggered by {@link #glfwDestroyWindow DestroyWindow}.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li><b>Mac OS X:</b> Selecting Quit from the application menu will trigger the close callback for all windows.</li>
 * </ul></p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set or the library had not been
 *         <a href="http://www.glfw.org/docs/latest/intro.html#intro_init">initialized</a>
 *
 * @since GLFW 2.5
 */
	static public function glfwSetWindowCloseCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowCloseCallback):org.lwjgl.glfw.GLFWWindowCloseCallback;
/** JNI method for {@link #glfwSetCharCallback SetCharCallback}  */
	static public function nglfwSetCharCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/**
 * Creates a {@link GLFWWindowSizeCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWWindowSizeCallback} instance
 */
	static public function GLFWWindowSizeCallback(sam:org.lwjgl.glfw.GLFWWindowSizeCallback_SAM):org.lwjgl.glfw.GLFWWindowSizeCallback;
/** JNI method for {@link #glfwSetDropCallback SetDropCallback}  */
	static public function nglfwSetDropCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/**
 * Initializes the GLFW library. Before most GLFW functions can be used, GLFW must be initialized, and before an application terminates GLFW should be
 * terminated in order to free any resources allocated during or after initialization.
 * 
 * <p>If this function fails, it calls {@link #glfwTerminate Terminate} before returning. If it succeeds, you should call {@link #glfwTerminate Terminate} before the application exits.</p>
 * 
 * <p>Additional calls to this function after successful initialization but before termination will return {@link GL11#GL_TRUE} immediately.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li><b>Mac OS X</b>: This function will change the current directory of the application to the `Contents/Resources` subdirectory of the application's
 * bundle, if present.</li>
 * <li><b>X11</b>: If the {@code LC_CTYPE} category of the current locale is set to {@code "C"} then the environment's locale will be applied to that
 * category. This is done because character input will not function when {@code LC_CTYPE} is set to {@code "C"}. If another locale was set before this
 * function was called, it will be left untouched.</li>
 * </ul></p>
 *
 * @return {@link GL11#GL_TRUE} if successful, or {@link GL11#GL_FALSE} if an error occured.
 *
 * @since GLFW 1.0
 */
	static public function glfwInit():Int;
/**
 * Sets the current gamma ramp for the specified monitor. The original gamma ramp for that monitor is saved by GLFW the first time this function is called
 * and is restored by {@link #glfwTerminate Terminate}.
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li>Gamma ramp sizes other than 256 are not supported by all hardware</li>
 * <li><b>Windows</b>: The gamma ramp size must be 256.</li>
 * <li>The specified gamma ramp is copied before this function returns.</li>
 * </ul></p>
 *
 * @param monitor the monitor whose gamma ramp to set
 * @param ramp    the gamma ramp to use
 *
 * @since GLFW 3.0
 */
	static public function glfwSetGammaRamp(monitor:haxe.Int64,ramp:java.nio.ByteBuffer):Void;
/**
 * Creates a {@link GLFWCursorEnterCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWCursorEnterCallback} instance
 */
	static public function GLFWCursorEnterCallback(sam:org.lwjgl.glfw.GLFWCursorEnterCallback_SAM):org.lwjgl.glfw.GLFWCursorEnterCallback;
/** CharSequence version of: {@link #glfwSetWindowTitle SetWindowTitle}  */
/**
 * Sets the window title, encoded as UTF-8, of the specified window.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose title to change
 * @param title  the UTF-8 encoded window title
 *
 * @since GLFW 1.0
 */
	static public function glfwSetWindowTitle(window:haxe.Int64,title:java.nio.ByteBuffer):Void;
	@:overload(function (window:haxe.Int64,title:java.lang.CharSequence):Void {})
/** JNI method for {@link #glfwSetScrollCallback SetScrollCallback}  */
	static public function nglfwSetScrollCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwSetWindowRefreshCallback SetWindowRefreshCallback}  */
	static public function nglfwSetWindowRefreshCallback(window:haxe.Int64,cbfun:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #glfwExtensionSupported ExtensionSupported}  */
/**
 * Returns whether the specified <a href="http://www.glfw.org/docs/latest/context.html#context_glext">API extension</a> is supported by the current
 * OpenGL or OpenGL ES context. It searches both for OpenGL and OpenGL ES extension and platform-specific context creation API extensions.
 * 
 * <p>A context must be current on the calling thread. Calling this function without a current context will cause a {@link #GLFW_NO_CURRENT_CONTEXT NO_CURRENT_CONTEXT} error.</p>
 * 
 * <p>As this functions retrieves and searches one or more extension strings each call, it is recommended that you cache its results if it is going to be used
 * frequently. The extension strings will not change during the lifetime of a context, so there is no danger in doing this.</p>
 * 
 * <p>This function may be called from any thread.</p>
 *
 * @param extension the ASCII encoded name of the extension
 *
 * @return {@link GL11#GL_TRUE} if the extension is available, or {@link GL11#GL_FALSE} otherwise
 *
 * @since GLFW 1.0
 */
	static public function glfwExtensionSupported(extension:java.nio.ByteBuffer):Int;
	@:overload(function (extension:java.lang.CharSequence):Int {})
/**
 * Iconifies (minimizes) the specified window if it was previously restored. If the window is already iconified, this function does nothing.
 * 
 * <p>If the specified window is a full screen window, the original monitor resolution is restored until the window is restored.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to iconify
 *
 * @since GLFW 2.1
 */
	static public function glfwIconifyWindow(window:haxe.Int64):Void;
/**
 * Swaps the front and back buffers of the specified window. If the swap interval is greater than zero, the GPU driver waits the specified number of screen
 * updates before swapping the buffers.
 * 
 * <p>This function may be called from any thread.</p>
 *
 * @param window the window whose buffers to swap
 *
 * @since GLFW 1.0
 */
	static public function glfwSwapBuffers(window:haxe.Int64):Void;
/**
 * Creates a {@link GLFWScrollCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWScrollCallback} instance
 */
	static public function GLFWScrollCallback(sam:org.lwjgl.glfw.GLFWScrollCallback_SAM):org.lwjgl.glfw.GLFWScrollCallback;
/**
 * Returns the contents of the system clipboard, if it contains or is convertible to a UTF-8 encoded string.
 * 
 * <p>The returned string is allocated and freed by GLFW. You should not free it yourself. It is valid until the next call to {@link #glfwGetClipboardString GetClipboardString} or
 * {@link #glfwSetClipboardString SetClipboardString}, or until the library is terminated.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li>The returned string is allocated and freed by GLFW.  You should not free it yourself.</li>
 * <li>The returned string is valid only until the next call to {@link #glfwGetClipboardString GetClipboardString} or {@link #glfwSetClipboardString SetClipboardString}.</li>
 * </ul></p>
 *
 * @param window the window that will request the clipboard contents
 *
 * @return the contents of the clipboard as a UTF-8 encoded string, or {@code NULL} if an error occurred
 *
 * @since GLFW 3.0
 */
	static public function glfwGetClipboardString(window:haxe.Int64):String;
/** JNI method for {@link #glfwCreateCursor CreateCursor}  */
	static public function nglfwCreateCursor(image:haxe.Int64,xhot:Int,yhot:Int):haxe.Int64;
/**
 * Creates a {@link GLFWWindowPosCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLFWWindowPosCallback} instance
 */
	static public function GLFWWindowPosCallback(sam:org.lwjgl.glfw.GLFWWindowPosCallback_SAM):org.lwjgl.glfw.GLFWWindowPosCallback;
/**
 * Retrieves the position, in screen coordinates, of the upper-left corner of the client area of the specified window.
 * 
 * <p>Any or all of the position arguments may be {@code NULL}. If an error occurs, all non-{@code NULL} position arguments will be set to zero.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to query
 * @param xpos   where to store the x-coordinate of the upper-left corner of the client area, or {@code NULL}
 * @param ypos   where to store the y-coordinate of the upper-left corner of the client area, or {@code NULL}
 *
 * @since GLFW 3.0
 */
/** Alternative version of: {@link #glfwGetWindowPos GetWindowPos}  */
	static public function glfwGetWindowPos(window:haxe.Int64,xpos:java.nio.IntBuffer,ypos:java.nio.IntBuffer):Void;
	@:overload(function (window:haxe.Int64,xpos:java.nio.ByteBuffer,ypos:java.nio.ByteBuffer):Void {})
/**
 * Sets the cursor boundary crossing callback of the specified window, which is called when the cursor enters or leaves the client area of the window.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set
 *
 * @since GLFW 3.0
 */
	static public function glfwSetCursorEnterCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWCursorEnterCallback):org.lwjgl.glfw.GLFWCursorEnterCallback;
/**
 * Returns whether the specified joystick is present.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param joy joystick to query
 *
 * @return {@link GL11#GL_TRUE} if the joystick is present, or {@link GL11#GL_FALSE} otherwise
 *
 * @since GLFW 3.0
 */
	static public function glfwJoystickPresent(joy:Int):Int;
/**
 * Sets the size callback of the specified window, which is called when the window is resized. The callback is provided with the size, in screen
 * coordinates, of the client area of the window.
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window whose callback to set
 * @param cbfun  the new callback or {@code NULL} to remove the currently set callback
 *
 * @return the previously set callback, or {@code NULL} if no callback was set or the library had not been
 *         <a href="http://www.glfw.org/docs/latest/intro.html#intro_init">initialized</a>
 *
 * @since GLFW 1.0
 */
	static public function glfwSetWindowSizeCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowSizeCallback):org.lwjgl.glfw.GLFWWindowSizeCallback;
/**
 * Restores the specified window if it was previously iconified (minimized). If the window is already restored, this function does nothing.
 * 
 * <p>If the specified window is a full screen window, the resolution chosen for the window is restored on the selected monitor.</p>
 * 
 * <p>This function may only be called from the main thread.</p>
 *
 * @param window the window to restore
 *
 * @since GLFW 2.1
 */
	static public function glfwRestoreWindow(window:haxe.Int64):Void;
/** JNI method for {@link #glfwRestoreWindow RestoreWindow}  */
	static public function nglfwRestoreWindow(window:haxe.Int64):Void;
/**
 * Sets the position, in screen coordinates, of the cursor relative to the upper-left corner of the client area of the specified window. The window must
 * have input focus. If the window does not have input focus when this function is called, it fails silently.
 * 
 * <p><b>Do not use this function</b> to implement things like camera controls. GLFW already provides the {@link #GLFW_CURSOR_DISABLED CURSOR_DISABLED} cursor mode that hides the cursor,
 * transparently re-centers it and provides unconstrained cursor motion. See {@link #glfwSetInputMode SetInputMode} for more information.</p>
 * 
 * <p>If the cursor mode is {@link #GLFW_CURSOR_DISABLED CURSOR_DISABLED} then the cursor position is unconstrained and limited only by the minimum and maximum values of <b>double</b>.</p>
 * 
 * <p>Notes:
 * <ul>
 * <li>This function may only be called from the main thread.</li>
 * <li><b>X11:</b> Due to the asynchronous nature of a modern X desktop, it may take a moment for the window focus event to arrive. This means you will not
 * be able to set the cursor position directly after window creation.</li>
 * </ul></p>
 *
 * @param window the desired window
 * @param xpos   the desired x-coordinate, relative to the left edge of the client area
 * @param ypos   the desired y-coordinate, relative to the top edge of the client area
 *
 * @since GLFW 1.0
 */
	static public function glfwSetCursorPos(window:haxe.Int64,xpos:Float,ypos:Float):Void;
/** JNI method for {@link #glfwGetMonitorPhysicalSize GetMonitorPhysicalSize}  */
	static public function nglfwGetMonitorPhysicalSize(monitor:haxe.Int64,widthMM:haxe.Int64,heightMM:haxe.Int64):Void;

}
