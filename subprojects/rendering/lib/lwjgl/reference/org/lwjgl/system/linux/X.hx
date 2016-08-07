package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.X")
@:final
/** Native bindings to X.h.  */
extern class X 
{
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var None:Int = 0;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var ParentRelative:Int = 1;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var CopyFromParent:Int = 0;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var PointerWindow:Int = 0;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var InputFocus:Int = 1;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var PointerRoot:Int = 1;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var AnyPropertyType:Int = 0;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var AnyKey:Int = 0;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var AnyButton:Int = 0;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var AllTemporary:Int = 0;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var CurrentTime:Int = 0;
/** RESERVED RESOURCE AND CONSTANT DEFINITIONS  */
	inline static public var NoSymbol:Int = 0;
/** ERROR CODES  */
	inline static public var Success:Int = 0;
/** ERROR CODES  */
	inline static public var BadRequest:Int = 1;
/** ERROR CODES  */
	inline static public var BadValue:Int = 2;
/** ERROR CODES  */
	inline static public var BadWindow:Int = 3;
/** ERROR CODES  */
	inline static public var BadPixmap:Int = 4;
/** ERROR CODES  */
	inline static public var BadAtom:Int = 5;
/** ERROR CODES  */
	inline static public var BadCursor:Int = 6;
/** ERROR CODES  */
	inline static public var BadFont:Int = 7;
/** ERROR CODES  */
	inline static public var BadMatch:Int = 8;
/** ERROR CODES  */
	inline static public var BadDrawable:Int = 9;
/** ERROR CODES  */
	inline static public var BadAccess:Int = 10;
/** ERROR CODES  */
	inline static public var BadAlloc:Int = 11;
/** ERROR CODES  */
	inline static public var BadColor:Int = 12;
/** ERROR CODES  */
	inline static public var BadGC:Int = 13;
/** ERROR CODES  */
	inline static public var BadIDChoice:Int = 14;
/** ERROR CODES  */
	inline static public var BadName:Int = 15;
/** ERROR CODES  */
	inline static public var BadLength:Int = 16;
/** ERROR CODES  */
	inline static public var BadImplementation:Int = 17;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWBackPixmap:Int = 1;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWBackPixel:Int = 2;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWBorderPixmap:Int = 4;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWBorderPixel:Int = 8;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWBitGravity:Int = 16;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWWinGravity:Int = 32;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWBackingStore:Int = 64;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWBackingPlanes:Int = 128;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWBackingPixel:Int = 256;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWOverrideRedirect:Int = 512;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWSaveUnder:Int = 1024;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWEventMask:Int = 2048;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWDontPropagate:Int = 4096;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWColormap:Int = 8192;
/** Window attributes for CreateWindow and ChangeWindowAttributes  */
	inline static public var CWCursor:Int = 16384;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var NoEventMask:Int = 0;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var KeyPressMask:Int = 1;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var KeyReleaseMask:Int = 2;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var ButtonPressMask:Int = 4;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var ButtonReleaseMask:Int = 8;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var EnterWindowMask:Int = 16;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var LeaveWindowMask:Int = 32;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var PointerMotionMask:Int = 64;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var PointerMotionHintMask:Int = 128;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var Button1MotionMask:Int = 256;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var Button2MotionMask:Int = 512;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var Button3MotionMask:Int = 1024;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var Button4MotionMask:Int = 2048;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var Button5MotionMask:Int = 4096;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var ButtonMotionMask:Int = 8192;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var KeymapStateMask:Int = 16384;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var ExposureMask:Int = 32768;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var VisibilityChangeMask:Int = 65536;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var StructureNotifyMask:Int = 131072;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var ResizeRedirectMask:Int = 262144;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var SubstructureNotifyMask:Int = 524288;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var SubstructureRedirectMask:Int = 1048576;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var FocusChangeMask:Int = 2097152;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var PropertyChangeMask:Int = 4194304;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var ColormapChangeMask:Int = 8388608;
/** Input Event Masks. Used as event-mask window attribute and as arguments to Grab requests. Not to be confused with event names.  */
	inline static public var OwnerGrabButtonMask:Int = 16777216;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var KeyPress:Int = 2;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var KeyRelease:Int = 3;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var ButtonPress:Int = 4;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var ButtonRelease:Int = 5;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var MotionNotify:Int = 6;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var EnterNotify:Int = 7;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var LeaveNotify:Int = 8;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var FocusIn:Int = 9;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var FocusOut:Int = 10;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var KeymapNotify:Int = 11;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var Expose:Int = 12;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var GraphicsExpose:Int = 13;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var NoExpose:Int = 14;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var VisibilityNotify:Int = 15;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var CreateNotify:Int = 16;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var DestroyNotify:Int = 17;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var UnmapNotify:Int = 18;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var MapNotify:Int = 19;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var MapRequest:Int = 20;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var ReparentNotify:Int = 21;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var ConfigureNotify:Int = 22;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var ConfigureRequest:Int = 23;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var GravityNotify:Int = 24;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var ResizeRequest:Int = 25;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var CirculateNotify:Int = 26;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var CirculateRequest:Int = 27;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var PropertyNotify:Int = 28;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var SelectionClear:Int = 29;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var SelectionRequest:Int = 30;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var SelectionNotify:Int = 31;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var ColormapNotify:Int = 32;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var ClientMessage:Int = 33;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var MappingNotify:Int = 34;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var GenericEvent:Int = 35;
/**
 * Event names. Used in "type" field in {@link XEvent} structures. Not to be confused with event masks above. They start from 2 because 0 and 1 are
 * reserved in the protocol for errors and replies.
 */
	inline static public var LASTEvent:Int = 36;
/** Key masks. Used as modifiers to GrabButton and GrabKey, results of QueryPointer, state in various key-, mouse-, and button-related events.  */
	inline static public var ShiftMask:Int = 1;
/** Key masks. Used as modifiers to GrabButton and GrabKey, results of QueryPointer, state in various key-, mouse-, and button-related events.  */
	inline static public var LockMask:Int = 2;
/** Key masks. Used as modifiers to GrabButton and GrabKey, results of QueryPointer, state in various key-, mouse-, and button-related events.  */
	inline static public var ControlMask:Int = 4;
/** Key masks. Used as modifiers to GrabButton and GrabKey, results of QueryPointer, state in various key-, mouse-, and button-related events.  */
	inline static public var Mod1Mask:Int = 8;
/** Key masks. Used as modifiers to GrabButton and GrabKey, results of QueryPointer, state in various key-, mouse-, and button-related events.  */
	inline static public var Mod2Mask:Int = 16;
/** Key masks. Used as modifiers to GrabButton and GrabKey, results of QueryPointer, state in various key-, mouse-, and button-related events.  */
	inline static public var Mod3Mask:Int = 32;
/** Key masks. Used as modifiers to GrabButton and GrabKey, results of QueryPointer, state in various key-, mouse-, and button-related events.  */
	inline static public var Mod4Mask:Int = 64;
/** Key masks. Used as modifiers to GrabButton and GrabKey, results of QueryPointer, state in various key-, mouse-, and button-related events.  */
	inline static public var Mod5Mask:Int = 128;
/** modifier names. Used to build a SetModifierMapping request or to read a GetModifierMapping request. These correspond to the masks defined above.  */
	inline static public var ShiftMapIndex:Int = 0;
/** modifier names. Used to build a SetModifierMapping request or to read a GetModifierMapping request. These correspond to the masks defined above.  */
	inline static public var LockMapIndex:Int = 1;
/** modifier names. Used to build a SetModifierMapping request or to read a GetModifierMapping request. These correspond to the masks defined above.  */
	inline static public var ControlMapIndex:Int = 2;
/** modifier names. Used to build a SetModifierMapping request or to read a GetModifierMapping request. These correspond to the masks defined above.  */
	inline static public var Mod1MapIndex:Int = 3;
/** modifier names. Used to build a SetModifierMapping request or to read a GetModifierMapping request. These correspond to the masks defined above.  */
	inline static public var Mod2MapIndex:Int = 4;
/** modifier names. Used to build a SetModifierMapping request or to read a GetModifierMapping request. These correspond to the masks defined above.  */
	inline static public var Mod3MapIndex:Int = 5;
/** modifier names. Used to build a SetModifierMapping request or to read a GetModifierMapping request. These correspond to the masks defined above.  */
	inline static public var Mod4MapIndex:Int = 6;
/** modifier names. Used to build a SetModifierMapping request or to read a GetModifierMapping request. These correspond to the masks defined above.  */
	inline static public var Mod5MapIndex:Int = 7;
/** button masks. Used in same manner as Key masks above. Not to be confused with button names below.  */
	inline static public var Button1Mask:Int = 256;
/** button masks. Used in same manner as Key masks above. Not to be confused with button names below.  */
	inline static public var Button2Mask:Int = 512;
/** button masks. Used in same manner as Key masks above. Not to be confused with button names below.  */
	inline static public var Button3Mask:Int = 1024;
/** button masks. Used in same manner as Key masks above. Not to be confused with button names below.  */
	inline static public var Button4Mask:Int = 2048;
/** button masks. Used in same manner as Key masks above. Not to be confused with button names below.  */
	inline static public var Button5Mask:Int = 4096;
/** button masks. Used in same manner as Key masks above. Not to be confused with button names below.  */
	inline static public var AnyModifier:Int = 32768;
/**
 * button names. Used as arguments to GrabButton and as detail in ButtonPress and ButtonRelease events. Not to be confused with button masks above. Note
 * that 0 is already defined above as "AnyButton".
 */
	inline static public var Button1:Int = 1;
/**
 * button names. Used as arguments to GrabButton and as detail in ButtonPress and ButtonRelease events. Not to be confused with button masks above. Note
 * that 0 is already defined above as "AnyButton".
 */
	inline static public var Button2:Int = 2;
/**
 * button names. Used as arguments to GrabButton and as detail in ButtonPress and ButtonRelease events. Not to be confused with button masks above. Note
 * that 0 is already defined above as "AnyButton".
 */
	inline static public var Button3:Int = 3;
/**
 * button names. Used as arguments to GrabButton and as detail in ButtonPress and ButtonRelease events. Not to be confused with button masks above. Note
 * that 0 is already defined above as "AnyButton".
 */
	inline static public var Button4:Int = 4;
/**
 * button names. Used as arguments to GrabButton and as detail in ButtonPress and ButtonRelease events. Not to be confused with button masks above. Note
 * that 0 is already defined above as "AnyButton".
 */
	inline static public var Button5:Int = 5;
/** Notify modes  */
	inline static public var NotifyNormal:Int = 0;
/** Notify modes  */
	inline static public var NotifyGrab:Int = 1;
/** Notify modes  */
	inline static public var NotifyUngrab:Int = 2;
/** Notify modes  */
	inline static public var NotifyWhileGrabbed:Int = 3;
/** Notify modes  */
	inline static public var NotifyHint:Int = 1;
/** Notify detail  */
	inline static public var NotifyAncestor:Int = 0;
/** Notify detail  */
	inline static public var NotifyVirtual:Int = 1;
/** Notify detail  */
	inline static public var NotifyInferior:Int = 2;
/** Notify detail  */
	inline static public var NotifyNonlinear:Int = 3;
/** Notify detail  */
	inline static public var NotifyNonlinearVirtual:Int = 4;
/** Notify detail  */
	inline static public var NotifyPointer:Int = 5;
/** Notify detail  */
	inline static public var NotifyPointerRoot:Int = 6;
/** Notify detail  */
	inline static public var NotifyDetailNone:Int = 7;
/** Visibility notify  */
	inline static public var VisibilityUnobscured:Int = 0;
/** Visibility notify  */
	inline static public var VisibilityPartiallyObscured:Int = 1;
/** Visibility notify  */
	inline static public var VisibilityFullyObscured:Int = 2;
/** Circulation request  */
	inline static public var PlaceOnTop:Int = 0;
/** Circulation request  */
	inline static public var PlaceOnBottom:Int = 1;
/** Property notification  */
	inline static public var PropertyNewValue:Int = 0;
/** Property notification  */
	inline static public var PropertyDelete:Int = 1;
/** Color Map notification  */
	inline static public var ColormapUninstalled:Int = 0;
/** Color Map notification  */
	inline static public var ColormapInstalled:Int = 1;
/** GrabPointer, GrabButton, GrabKeyboard, GrabKey Modes  */
	inline static public var GrabModeSync:Int = 0;
/** GrabPointer, GrabButton, GrabKeyboard, GrabKey Modes  */
	inline static public var GrabModeAsync:Int = 1;
/** GrabPointer, GrabKeyboard reply status  */
	inline static public var GrabSuccess:Int = 0;
/** GrabPointer, GrabKeyboard reply status  */
	inline static public var AlreadyGrabbed:Int = 1;
/** GrabPointer, GrabKeyboard reply status  */
	inline static public var GrabInvalidTime:Int = 2;
/** GrabPointer, GrabKeyboard reply status  */
	inline static public var GrabNotViewable:Int = 3;
/** GrabPointer, GrabKeyboard reply status  */
	inline static public var GrabFrozen:Int = 4;
/** AllowEvents modes  */
	inline static public var AsyncPointer:Int = 0;
/** AllowEvents modes  */
	inline static public var SyncPointer:Int = 1;
/** AllowEvents modes  */
	inline static public var ReplayPointer:Int = 2;
/** AllowEvents modes  */
	inline static public var AsyncKeyboard:Int = 3;
/** AllowEvents modes  */
	inline static public var SyncKeyboard:Int = 4;
/** AllowEvents modes  */
	inline static public var ReplayKeyboard:Int = 5;
/** AllowEvents modes  */
	inline static public var AsyncBoth:Int = 6;
/** AllowEvents modes  */
	inline static public var SyncBoth:Int = 7;
/** For {@link Xlib#XCreateColormap}.  */
	inline static public var AllocNone:Int = 0;
/** For {@link Xlib#XCreateColormap}.  */
	inline static public var AllocAll:Int = 1;
/** Used in {@link Xlib#XSetInputFocus}, {@link Xlib#XGetInputFocus}.  */
	inline static public var RevertToNone:Int = 0;
/** Used in {@link Xlib#XSetInputFocus}, {@link Xlib#XGetInputFocus}.  */
	inline static public var RevertToPointerRoot:Int = 1;
/** Used in {@link Xlib#XSetInputFocus}, {@link Xlib#XGetInputFocus}.  */
	inline static public var RevertToParent:Int = 2;
/** Window classes used by {@link Xlib#XCreateWindow}.  */
	inline static public var InputOutput:Int = 1;
/** Window classes used by {@link Xlib#XCreateWindow}.  */
	inline static public var InputOnly:Int = 2;
/** SCREEN SAVER STUFF  */
	inline static public var DontPreferBlanking:Int = 0;
/** SCREEN SAVER STUFF  */
	inline static public var PreferBlanking:Int = 1;
/** SCREEN SAVER STUFF  */
	inline static public var DefaultBlanking:Int = 2;
/** SCREEN SAVER STUFF  */
	inline static public var DisableScreenSaver:Int = 0;
/** SCREEN SAVER STUFF  */
	inline static public var DisableScreenInterval:Int = 0;
/** SCREEN SAVER STUFF  */
	inline static public var DontAllowExposures:Int = 0;
/** SCREEN SAVER STUFF  */
	inline static public var AllowExposures:Int = 1;
/** SCREEN SAVER STUFF  */
	inline static public var DefaultExposures:Int = 2;
/** SCREEN SAVER STUFF  */
	inline static public var ScreenSaverReset:Int = 0;
/** SCREEN SAVER STUFF  */
	inline static public var ScreenSaverActive:Int = 1;
/** Property modes  */
	inline static public var PropModeReplace:Int = 0;
/** Property modes  */
	inline static public var PropModePrepend:Int = 1;
/** Property modes  */
	inline static public var PropModeAppend:Int = 2;
/** graphics functions, as in GC.alu  */
	inline static public var GXclear:Int = 0;
/** graphics functions, as in GC.alu  */
	inline static public var GXand:Int = 1;
/** graphics functions, as in GC.alu  */
	inline static public var GXandReverse:Int = 2;
/** graphics functions, as in GC.alu  */
	inline static public var GXcopy:Int = 3;
/** graphics functions, as in GC.alu  */
	inline static public var GXandInverted:Int = 4;
/** graphics functions, as in GC.alu  */
	inline static public var GXnoop:Int = 5;
/** graphics functions, as in GC.alu  */
	inline static public var GXxor:Int = 6;
/** graphics functions, as in GC.alu  */
	inline static public var GXor:Int = 7;
/** graphics functions, as in GC.alu  */
	inline static public var GXnor:Int = 8;
/** graphics functions, as in GC.alu  */
	inline static public var GXequiv:Int = 9;
/** graphics functions, as in GC.alu  */
	inline static public var GXinvert:Int = 10;
/** graphics functions, as in GC.alu  */
	inline static public var GXorReverse:Int = 11;
/** graphics functions, as in GC.alu  */
	inline static public var GXcopyInverted:Int = 12;
/** graphics functions, as in GC.alu  */
	inline static public var GXorInverted:Int = 13;
/** graphics functions, as in GC.alu  */
	inline static public var GXnand:Int = 14;
/** graphics functions, as in GC.alu  */
	inline static public var GXset:Int = 15;
/** LineStyle  */
	inline static public var LineSolid:Int = 0;
/** LineStyle  */
	inline static public var LineOnOffDash:Int = 1;
/** LineStyle  */
	inline static public var LineDoubleDash:Int = 2;
/** capStyle  */
	inline static public var CapNotLast:Int = 0;
/** capStyle  */
	inline static public var CapButt:Int = 1;
/** capStyle  */
	inline static public var CapRound:Int = 2;
/** capStyle  */
	inline static public var CapProjecting:Int = 3;
/** joinStyle  */
	inline static public var JoinMiter:Int = 0;
/** joinStyle  */
	inline static public var JoinRound:Int = 1;
/** joinStyle  */
	inline static public var JoinBevel:Int = 2;
/** fillStyle  */
	inline static public var FillSolid:Int = 0;
/** fillStyle  */
	inline static public var FillTiled:Int = 1;
/** fillStyle  */
	inline static public var FillStippled:Int = 2;
/** fillStyle  */
	inline static public var FillOpaqueStippled:Int = 3;
/** fillRule  */
	inline static public var EvenOddRule:Int = 0;
/** fillRule  */
	inline static public var WindingRule:Int = 1;
/** subwindow mode  */
	inline static public var ClipByChildren:Int = 0;
/** subwindow mode  */
	inline static public var IncludeInferiors:Int = 1;
/** SetClipRectangles ordering  */
	inline static public var Unsorted:Int = 0;
/** SetClipRectangles ordering  */
	inline static public var YSorted:Int = 1;
/** SetClipRectangles ordering  */
	inline static public var YXSorted:Int = 2;
/** SetClipRectangles ordering  */
	inline static public var YXBanded:Int = 3;
/** CoordinateMode for drawing routines  */
	inline static public var CoordModeOrigin:Int = 0;
/** CoordinateMode for drawing routines  */
	inline static public var CoordModePrevious:Int = 1;
/** Polygon shapes  */
	inline static public var Complex:Int = 0;
/** Polygon shapes  */
	inline static public var Nonconvex:Int = 1;
/** Polygon shapes  */
	inline static public var Convex:Int = 2;
/** Arc modes for PolyFillArc  */
	inline static public var ArcChord:Int = 0;
/** Arc modes for PolyFillArc  */
	inline static public var ArcPieSlice:Int = 1;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCFunction:Int = 1;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCPlaneMask:Int = 2;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCForeground:Int = 4;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCBackground:Int = 8;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCLineWidth:Int = 16;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCLineStyle:Int = 32;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCCapStyle:Int = 64;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCJoinStyle:Int = 128;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCFillStyle:Int = 256;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCFillRule:Int = 512;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCTile:Int = 1024;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCStipple:Int = 2048;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCTileStipXOrigin:Int = 4096;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCTileStipYOrigin:Int = 8192;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCFont:Int = 16384;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCSubwindowMode:Int = 32768;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCGraphicsExposures:Int = 65536;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCClipXOrigin:Int = 131072;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCClipYOrigin:Int = 262144;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCClipMask:Int = 524288;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCDashOffset:Int = 1048576;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCDashList:Int = 2097152;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCArcMode:Int = 4194304;
/** GC components: masks used in CreateGC, CopyGC, ChangeGC, OR'ed into GC.stateChanges  */
	inline static public var GCLastBit:Int = 22;

}
