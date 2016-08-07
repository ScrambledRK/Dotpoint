package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XEvent")
@:final
/** This union is defined so Xlib can always use the same sized event structure internally, to avoid memory fragmentation.  */
extern class XEvent implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var TYPE:Int;
/** The struct member offsets.  */
	static public var XANY:Int;
/** The struct member offsets.  */
	static public var XKEY:Int;
/** The struct member offsets.  */
	static public var XBUTTON:Int;
/** The struct member offsets.  */
	static public var XMOTION:Int;
/** The struct member offsets.  */
	static public var XCONFIGURE:Int;
/** The struct member offsets.  */
	static public var XPROPERTY:Int;
/** The struct member offsets.  */
	static public var XSELECTIONREQUEST:Int;
/** The struct member offsets.  */
	static public var XSELECTION:Int;
/** The struct member offsets.  */
	static public var XCLIENT:Int;
/** The struct member offsets.  */
	static public var XERROR:Int;
/** The struct member offsets.  */
	static public var XCOOKIE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function xbuttonY(xevent:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xbuttonX(xevent:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXmotionIsHint(is_hint:Int):Void;
	public function getXerrorRequestCode():Int;
	public function getXbuttonTime():haxe.Int64;
	public function getXconfigureWindow():haxe.Int64;
	static public function xmotionRoot(xevent:java.nio.ByteBuffer,root:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXconfigureHeight(height:Int):Void;
	public function getXselectionrequest(xselectionrequest:java.nio.ByteBuffer):Void;
	static public function xkeySend_event(xevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXclientType():Int;
	public function getXerror(xerror:java.nio.ByteBuffer):Void;
	static public function xmotionState(xevent:java.nio.ByteBuffer,state:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXcookieSerial(serial:haxe.Int64):Void;
	static public function xbuttonY_root(xevent:java.nio.ByteBuffer,y_root:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXmotionTime(time:haxe.Int64):Void;
	public function setXanySerial(serial:haxe.Int64):Void;
	public function getXpropertyType():Int;
	public function setXselectionSendEvent(send_event:Int):Void;
	public function getType():Int;
	public function setXkey(xkey:java.nio.ByteBuffer):Void;
	public function setXpropertySendEvent(send_event:Int):Void;
	static public function xconfigureGet(xevent:java.nio.ByteBuffer,xconfigure:java.nio.ByteBuffer):Void;
	public function setXclientDataL(index:Int,l:haxe.Int64):Void;
	@:overload(function (l:java.nio.ByteBuffer):Void {})
	public function getXcookieCookie():Int;
	static public function xmotionSerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXbuttonSubwindow(subwindow:haxe.Int64):Void;
	public function getXpropertyTime():haxe.Int64;
	public function setXmotionX(x:Int):Void;
	public function setXmotionY(y:Int):Void;
	public function setXclientDataS(index:Int,s:Int16):Void;
	@:overload(function (s:java.nio.ByteBuffer):Void {})
	public function setXselectionrequestTime(time:haxe.Int64):Void;
	public function setXerrorErrorCode(error_code:Int):Void;
	static public function xclientDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xconfigureWindow(xevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXerrorSerial(serial:haxe.Int64):Void;
	public function getXcookie(xcookie:java.nio.ByteBuffer):Void;
	public function getXmotionIsHint():Int;
	public function getXkeyKeycode():Int;
	public function setXclientMessageType(message_type:haxe.Int64):Void;
	static public function xbuttonButton(xevent:java.nio.ByteBuffer,button:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xclientMessage_type(xevent:java.nio.ByteBuffer,message_type:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXclientDataB(index:Int,b:Int8):Void;
	@:overload(function (b:java.nio.ByteBuffer):Void {})
	static public function xmotionX(xevent:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xconfigureX(xevent:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xmotionY(xevent:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xconfigureY(xevent:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXselectionrequestSendEvent():Int;
	static public function xanyType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xclientDataLSet(xevent:java.nio.ByteBuffer,l:java.nio.ByteBuffer):Void;
	static public function xselectionType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXbuttonWindow(window:haxe.Int64):Void;
	public function setXkeySameScreen(same_screen:Int):Void;
	public function setXcookieDisplay(display:haxe.Int64):Void;
	public function getXkeySameScreen():Int;
	static public function xbuttonType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xkeyRoot(xevent:java.nio.ByteBuffer,root:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xselectionrequestGet(xevent:java.nio.ByteBuffer,xselectionrequest:java.nio.ByteBuffer):Void;
	public function setXconfigureEvent(event:haxe.Int64):Void;
	static public function xkeyX(xevent:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xkeyY(xevent:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXclientWindow(window:haxe.Int64):Void;
	static public function xkeyState(xevent:java.nio.ByteBuffer,state:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xpropertySerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXbuttonType():Int;
	static public function xselectionSend_event(xevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXproperty(xproperty:java.nio.ByteBuffer):Void;
	public function setXconfigureBorderWidth(border_width:Int):Void;
	static public function xkeySerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXerrorResourceid():haxe.Int64;
	public function setXmotionType(type:Int):Void;
	public function setXselectionrequestOwner(owner:haxe.Int64):Void;
	static public function xbuttonState(xevent:java.nio.ByteBuffer,state:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXselectionRequestor(requestor:haxe.Int64):Void;
	public function getXmotionDisplay():haxe.Int64;
	public function setXerrorDisplay(display:haxe.Int64):Void;
	static public function xpropertyState(xevent:java.nio.ByteBuffer,state:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xclientDataBSet(xevent:java.nio.ByteBuffer,b:java.nio.ByteBuffer):Void;
	public function setXmotionDisplay(display:haxe.Int64):Void;
	public function getXselectionTarget():haxe.Int64;
	static public function xconfigureAbove(xevent:java.nio.ByteBuffer,above:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXkey(xkey:java.nio.ByteBuffer):Void;
	public function setXcookieCookie(cookie:Int):Void;
	public function getXcookieDisplay():haxe.Int64;
	public function setXpropertySerial(serial:haxe.Int64):Void;
	static public function xpropertyAtom(xevent:java.nio.ByteBuffer,atom:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xconfigureHeight(xevent:java.nio.ByteBuffer,height:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXkeyY(y:Int):Void;
	public function getXanySerial():haxe.Int64;
	public function getXanyDisplay():haxe.Int64;
	public function getXmotionRoot():haxe.Int64;
	static public function xselectionTime(xevent:java.nio.ByteBuffer,time:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXmotionSerial():haxe.Int64;
	public function setType(type:Int):Void;
	public function setXclientSendEvent(send_event:Int):Void;
	public function setXbuttonX(x:Int):Void;
	public function setXbuttonY(y:Int):Void;
	public function getXkeyXRoot():Int;
	static public function xclientType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXkeyX(x:Int):Void;
	public function setXselectionrequestTarget(target:haxe.Int64):Void;
	public function getXkeyType():Int;
	public function setXselectionrequestType(type:Int):Void;
	public function setXbuttonSameScreen(same_screen:Int):Void;
	static public function xbuttonSerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXcookieEvtype():Int;
	public function getXbuttonYRoot():Int;
	public function getXkeyRoot():haxe.Int64;
	public function getXselectionrequestTarget():haxe.Int64;
	public function setXanyDisplay(display:haxe.Int64):Void;
	public function setXbuttonTime(time:haxe.Int64):Void;
	public function setXmotionSubwindow(subwindow:haxe.Int64):Void;
	static public function xclientSerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXconfigureEvent():haxe.Int64;
	static public function xselectionrequestProperty(xevent:java.nio.ByteBuffer,property:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXselectionrequestRequestor():haxe.Int64;
	public function getXerrorErrorCode():Int;
	public function getXclientMessageType():haxe.Int64;
	static public function xpropertySend_event(xevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXclientDisplay(display:haxe.Int64):Void;
	public function setXcookieType(type:Int):Void;
	public function getXselectionSelection():haxe.Int64;
	public function getXcookieExtension():Int;
	static public function xbuttonDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXkeyWindow(window:haxe.Int64):Void;
	public function setXmotionSerial(serial:haxe.Int64):Void;
	static public function xbuttonRoot(xevent:java.nio.ByteBuffer,root:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXerror(xerror:java.nio.ByteBuffer):Void;
	static public function xbuttonSet(xevent:java.nio.ByteBuffer,xbutton:java.nio.ByteBuffer):Void;
	static public function xerrorError_code(xevent:java.nio.ByteBuffer,error_code:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xerrorRequest_code(xevent:java.nio.ByteBuffer,request_code:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXselectionrequest(xselectionrequest:java.nio.ByteBuffer):Void;
	static public function xselectionrequestTarget(xevent:java.nio.ByteBuffer,target:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXselectionDisplay(display:haxe.Int64):Void;
	public function setXcookieSendEvent(send_event:Int):Void;
	static public function xkeyX_root(xevent:java.nio.ByteBuffer,x_root:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXkeyYRoot(y_root:Int):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,xany:java.nio.ByteBuffer,xkey:java.nio.ByteBuffer,xbutton:java.nio.ByteBuffer,xmotion:java.nio.ByteBuffer,xconfigure:java.nio.ByteBuffer,xproperty:java.nio.ByteBuffer,xselectionrequest:java.nio.ByteBuffer,xselection:java.nio.ByteBuffer,xclient:java.nio.ByteBuffer,xerror:java.nio.ByteBuffer,xcookie:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getXmotionState():Int;
	public function setXkeyRoot(root:haxe.Int64):Void;
	public function getXany(xany:java.nio.ByteBuffer):Void;
	public function setXbuttonButton(button:Int):Void;
	public function getXconfigureWidth():Int;
	public function getXselectionTime():haxe.Int64;
	public function getXselectionrequestProperty():haxe.Int64;
	public function getXmotionYRoot():Int;
	static public function xkeySame_screen(xevent:java.nio.ByteBuffer,same_screen:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXpropertyDisplay(display:haxe.Int64):Void;
	static public function xclientFormat(xevent:java.nio.ByteBuffer,format:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xpropertyWindow(xevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXanySendEvent():Int;
	public function buffer():java.nio.ByteBuffer;
	static public function xcookieSerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXselectionTarget(target:haxe.Int64):Void;
	public function getXconfigureOverrideRedirect():Int;
	public function setXconfigureSendEvent(send_event:Int):Void;
	public function setXbuttonDisplay(display:haxe.Int64):Void;
	static public function xmotionX_root(xevent:java.nio.ByteBuffer,x_root:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXkeyDisplay():haxe.Int64;
	public function setXconfigure(xconfigure:java.nio.ByteBuffer):Void;
	public function getXbuttonDisplay():haxe.Int64;
	public function getXselectionDisplay():haxe.Int64;
	public function setXcookieExtension(extension:Int):Void;
	public function setXselectionProperty(property:haxe.Int64):Void;
	static public function xselectionrequestOwner(xevent:java.nio.ByteBuffer,owner:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXkeyWindow():haxe.Int64;
	public function getXbuttonState():Int;
	static public function xselectionTarget(xevent:java.nio.ByteBuffer,target:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xerrorDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXkeyXRoot(x_root:Int):Void;
	public function setXcookieData(data:java.nio.ByteBuffer):Void;
	@:overload(function (data:haxe.Int64):Void {})
	static public function xanySend_event(xevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xanyWindow(xevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXbuttonSameScreen():Int;
	public function getXconfigureY():Int;
	public function getXconfigureX():Int;
	public function getXconfigure(xconfigure:java.nio.ByteBuffer):Void;
	public function setXbutton(xbutton:java.nio.ByteBuffer):Void;
	static public function xcookieExtension(xevent:java.nio.ByteBuffer,extension:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXselectionrequestTime():haxe.Int64;
	public function setXpropertyAtom(atom:haxe.Int64):Void;
	static public function xkeySubwindow(xevent:java.nio.ByteBuffer,subwindow:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXkeyX():Int;
	public function getXkeyY():Int;
	static public function xconfigureOverride_redirect(xevent:java.nio.ByteBuffer,override_redirect:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXmotionWindow():haxe.Int64;
	static public function xpropertyGet(xevent:java.nio.ByteBuffer,xproperty:java.nio.ByteBuffer):Void;
	public function setXconfigureWindow(window:haxe.Int64):Void;
	public function setXselectionrequestDisplay(display:haxe.Int64):Void;
	public function getXclientSendEvent():Int;
	static public function xerrorType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xclientDataS(xevent:java.nio.ByteBuffer,index:Int,s:Int16):Void;
	@:overload(function (xevent:java.nio.ByteBuffer,index:Int):Int16 {})
	static public function xcookieSet(xevent:java.nio.ByteBuffer,xcookie:java.nio.ByteBuffer):Void;
	static public function xbuttonWindow(xevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXselectionType(type:Int):Void;
	public function getXmotionX():Int;
	public function getXmotionY():Int;
	public function getXpropertySerial():haxe.Int64;
	public function setXmotion(xmotion:java.nio.ByteBuffer):Void;
	public function setXmotionSameScreen(same_screen:Int):Void;
	public function getXmotionSubwindow():haxe.Int64;
	public function setXanySendEvent(send_event:Int):Void;
	public function setXmotionRoot(root:haxe.Int64):Void;
	public function getXbuttonSendEvent():Int;
	public function getXpropertyState():Int;
	public function getXbuttonSerial():haxe.Int64;
	static public function xclientDataSGet(xevent:java.nio.ByteBuffer,s:java.nio.ByteBuffer):Void;
	public function getXbuttonRoot():haxe.Int64;
	static public function xmotionTime(xevent:java.nio.ByteBuffer,time:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xbuttonSend_event(xevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXselectionrequestSelection(selection:haxe.Int64):Void;
	static public function xclientWindow(xevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xkeyType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xclientDataB(xevent:java.nio.ByteBuffer,index:Int,b:Int8):Void;
	@:overload(function (xevent:java.nio.ByteBuffer,index:Int):Int8 {})
	static public function xbuttonSame_screen(xevent:java.nio.ByteBuffer,same_screen:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXmotionXRoot():Int;
	static public function xconfigureDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xclientDataL(xevent:java.nio.ByteBuffer,index:Int,l:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer,index:Int):haxe.Int64 {})
	static public function xcookieEvtype(xevent:java.nio.ByteBuffer,evtype:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXconfigureDisplay():haxe.Int64;
	public function setXbuttonXRoot(x_root:Int):Void;
	public function setXmotionYRoot(y_root:Int):Void;
	public function getXselectionrequestType():Int;
	static public function xselectionrequestRequestor(xevent:java.nio.ByteBuffer,requestor:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xmotionGet(xevent:java.nio.ByteBuffer,xmotion:java.nio.ByteBuffer):Void;
	static public function xkeyY_root(xevent:java.nio.ByteBuffer,y_root:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xbuttonGet(xevent:java.nio.ByteBuffer,xbutton:java.nio.ByteBuffer):Void;
	public function setXselectionrequestSendEvent(send_event:Int):Void;
	static public function xpropertyDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXcookieSendEvent():Int;
	public function setXpropertyState(state:Int):Void;
	static public function xmotionDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXselection(xselection:java.nio.ByteBuffer):Void;
	public function getXanyType():Int;
	public function setXbuttonState(state:Int):Void;
	public function setXcookie(xcookie:java.nio.ByteBuffer):Void;
	public function setXselectionTime(time:haxe.Int64):Void;
	public function getXbuttonXRoot():Int;
	public function setXbuttonType(type:Int):Void;
	static public function xmotionSubwindow(xevent:java.nio.ByteBuffer,subwindow:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xmotionSame_screen(xevent:java.nio.ByteBuffer,same_screen:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXpropertyDisplay():haxe.Int64;
	public function getXclientFormat():Int;
	public function setXselection(xselection:java.nio.ByteBuffer):Void;
	static public function xconfigureType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xconfigureSerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXkeyState(state:Int):Void;
	static public function xkeyTime(xevent:java.nio.ByteBuffer,time:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xkeyGet(xevent:java.nio.ByteBuffer,xkey:java.nio.ByteBuffer):Void;
	static public function xselectionSerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXbuttonX():Int;
	public function getXbuttonY():Int;
	static public function xselectionSelection(xevent:java.nio.ByteBuffer,selection:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXconfigureWidth(width:Int):Void;
	public function getXpropertyAtom():haxe.Int64;
	static public function xmotionType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xselectionrequestSend_event(xevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXclientDisplay():haxe.Int64;
	public function setXmotionWindow(window:haxe.Int64):Void;
	public function setXmotionSendEvent(send_event:Int):Void;
	public function setXkeySerial(serial:haxe.Int64):Void;
	static public function xpropertyType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXkeyType(type:Int):Void;
	public function getXclient(xclient:java.nio.ByteBuffer):Void;
	public function setXselectionSerial(serial:haxe.Int64):Void;
	public function getXselectionrequestDisplay():haxe.Int64;
	public function setXkeySubwindow(subwindow:haxe.Int64):Void;
	static public function xanySerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xselectionrequestSelection(xevent:java.nio.ByteBuffer,selection:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXconfigureAbove():haxe.Int64;
	public function setXmotionState(state:Int):Void;
	public function getXselectionrequestOwner():haxe.Int64;
	static public function xpropertySet(xevent:java.nio.ByteBuffer,xproperty:java.nio.ByteBuffer):Void;
	public function getXkeySerial():haxe.Int64;
	public function setXkeySendEvent(send_event:Int):Void;
	public function getXselectionType():Int;
	static public function xkeyDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXpropertySendEvent():Int;
	public function getXbutton(xbutton:java.nio.ByteBuffer):Void;
	public function getXclientSerial():haxe.Int64;
	static public function xselectionGet(xevent:java.nio.ByteBuffer,xselection:java.nio.ByteBuffer):Void;
	public function getXmotionTime():haxe.Int64;
	public function getXselectionRequestor():haxe.Int64;
	public function setXconfigureSerial(serial:haxe.Int64):Void;
	static public function xanySet(xevent:java.nio.ByteBuffer,xany:java.nio.ByteBuffer):Void;
	static public function xerrorSet(xevent:java.nio.ByteBuffer,xerror:java.nio.ByteBuffer):Void;
	static public function xclientGet(xevent:java.nio.ByteBuffer,xclient:java.nio.ByteBuffer):Void;
	public function getXconfigureHeight():Int;
	public function getXselectionSendEvent():Int;
	static public function xbuttonTime(xevent:java.nio.ByteBuffer,time:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXkeyTime():haxe.Int64;
	public function getXpropertyWindow():haxe.Int64;
	public function getXconfigureSerial():haxe.Int64;
	static public function type(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xcookieDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXkeySubwindow():haxe.Int64;
	static public function xanyDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xclientDataSSet(xevent:java.nio.ByteBuffer,s:java.nio.ByteBuffer):Void;
	public function setXkeyKeycode(keycode:Int):Void;
	public function getXbuttonWindow():haxe.Int64;
	static public function xkeyKeycode(xevent:java.nio.ByteBuffer,keycode:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xselectionrequestDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXclientFormat(format:Int):Void;
	static public function xconfigureSet(xevent:java.nio.ByteBuffer,xconfigure:java.nio.ByteBuffer):Void;
	public function setXconfigureDisplay(display:haxe.Int64):Void;
	public function setXbuttonRoot(root:haxe.Int64):Void;
	static public function xselectionProperty(xevent:java.nio.ByteBuffer,property:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXconfigureType(type:Int):Void;
	public function setXbuttonSendEvent(send_event:Int):Void;
	public function getXerrorSerial():haxe.Int64;
	static public function xmotionIs_hint(xevent:java.nio.ByteBuffer,is_hint:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xmotionWindow(xevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xmotionSend_event(xevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXselectionrequestSerial():haxe.Int64;
	static public function xcookieGet(xevent:java.nio.ByteBuffer,xcookie:java.nio.ByteBuffer):Void;
	static public function xcookieType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xbuttonSubwindow(xevent:java.nio.ByteBuffer,subwindow:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXmotionType():Int;
	public function setXanyWindow(window:haxe.Int64):Void;
	public function setXconfigureAbove(above:haxe.Int64):Void;
	public function setXerrorMinorCode(minor_code:Int):Void;
	public function getXconfigureBorderWidth():Int;
	public function setXkeyTime(time:haxe.Int64):Void;
	public function getXconfigureType():Int;
	static public function xmotionSet(xevent:java.nio.ByteBuffer,xmotion:java.nio.ByteBuffer):Void;
	static public function xpropertyTime(xevent:java.nio.ByteBuffer,time:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xclientSend_event(xevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXerrorRequestCode(request_code:Int):Void;
	public function getXerrorDisplay():haxe.Int64;
	public function setXpropertyTime(time:haxe.Int64):Void;
	public function getXkeyYRoot():Int;
	public function setXselectionrequestRequestor(requestor:haxe.Int64):Void;
	public function getXconfigureSendEvent():Int;
	static public function xselectionrequestSerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXbuttonSubwindow():haxe.Int64;
	static public function xclientDataLGet(xevent:java.nio.ByteBuffer,l:java.nio.ByteBuffer):Void;
	public function setXkeyDisplay(display:haxe.Int64):Void;
	public function getXselectionProperty():haxe.Int64;
	static public function xselectionrequestType(xevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xerrorMinor_code(xevent:java.nio.ByteBuffer,minor_code:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXclientType(type:Int):Void;
	public function getXkeyState():Int;
	public function getXclientDataS(s:java.nio.ByteBuffer):Void;
	public function getXmotionSendEvent():Int;
	public function setXerrorResourceid(resourceid:haxe.Int64):Void;
	public function getXcookieSerial():haxe.Int64;
	static public function xcookieSend_event(xevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXkeySendEvent():Int;
	public function getXclientDataL(l:java.nio.ByteBuffer):Void;
	static public function xconfigureBorder_width(xevent:java.nio.ByteBuffer,border_width:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXclientDataB(b:java.nio.ByteBuffer):Void;
	public function setXbuttonSerial(serial:haxe.Int64):Void;
	static public function xkeyWindow(xevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xerrorSerial(xevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXerrorType(type:Int):Void;
	static public function xconfigureEvent(xevent:java.nio.ByteBuffer,event:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setXpropertyWindow(window:haxe.Int64):Void;
	public function setXany(xany:java.nio.ByteBuffer):Void;
	static public function xselectionrequestSet(xevent:java.nio.ByteBuffer,xselectionrequest:java.nio.ByteBuffer):Void;
	public function getXcookieData(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	static public function xcookieData(xevent:java.nio.ByteBuffer,data:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xevent:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xevent:java.nio.ByteBuffer,data:java.nio.ByteBuffer):Void {})
	public function setXcookieEvtype(evtype:Int):Void;
	public function setXanyType(type:Int):Void;
	public function getXerrorType():Int;
	static public function xkeySet(xevent:java.nio.ByteBuffer,xkey:java.nio.ByteBuffer):Void;
	public function getXbuttonButton():Int;
	static public function xselectionDisplay(xevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xconfigureWidth(xevent:java.nio.ByteBuffer,width:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXselectionrequestProperty(property:haxe.Int64):Void;
	public function setXclient(xclient:java.nio.ByteBuffer):Void;
	public function setXclientSerial(serial:haxe.Int64):Void;
	public function getXclientWindow():haxe.Int64;
	static public function xconfigureSend_event(xevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	static public function xclientDataBGet(xevent:java.nio.ByteBuffer,b:java.nio.ByteBuffer):Void;
	static public function xselectionrequestTime(xevent:java.nio.ByteBuffer,time:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xmotionY_root(xevent:java.nio.ByteBuffer,y_root:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXselectionSelection(selection:haxe.Int64):Void;
	public function setXbuttonYRoot(y_root:Int):Void;
	static public function xerrorResourceid(xevent:java.nio.ByteBuffer,resourceid:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getXmotionSameScreen():Int;
	public function setXselectionrequestSerial(serial:haxe.Int64):Void;
	public function getXproperty(xproperty:java.nio.ByteBuffer):Void;
	public function getXcookieType():Int;
	public function getXerrorMinorCode():Int;
	public function getXanyWindow():haxe.Int64;
	public function setXconfigureX(x:Int):Void;
	public function setXconfigureY(y:Int):Void;
	public function getPointer():haxe.Int64;
	static public function xerrorGet(xevent:java.nio.ByteBuffer,xerror:java.nio.ByteBuffer):Void;
	static public function xcookieCookie(xevent:java.nio.ByteBuffer,cookie:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function setXmotionXRoot(x_root:Int):Void;
	static public function xclientSet(xevent:java.nio.ByteBuffer,xclient:java.nio.ByteBuffer):Void;
	public function getXmotion(xmotion:java.nio.ByteBuffer):Void;
	static public function xselectionRequestor(xevent:java.nio.ByteBuffer,requestor:haxe.Int64):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function xbuttonX_root(xevent:java.nio.ByteBuffer,x_root:Int):Void;
	@:overload(function (xevent:java.nio.ByteBuffer):Int {})
	public function getXselectionSerial():haxe.Int64;
	public function setXconfigureOverrideRedirect(override_redirect:Int):Void;
	static public function xanyGet(xevent:java.nio.ByteBuffer,xany:java.nio.ByteBuffer):Void;
	public function getXselectionrequestSelection():haxe.Int64;
	public function setXpropertyType(type:Int):Void;
	static public function xselectionSet(xevent:java.nio.ByteBuffer,xselection:java.nio.ByteBuffer):Void;

}
