package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXEXTImportContext")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/import_context.txt">GLX_EXT_import_context</a> extension.
 * 
 * <p>This extension allows multiple X clients to share an indirect rendering context.</p>
 * 
 * <p>Additional convenience procedures to get the current Display* bound to a context as well as other context information are also added.</p>
 */
extern class GLXEXTImportContext 
{
/** Accepted by the {@code attribute} parameter of {@link #glXQueryContextInfoEXT QueryContextInfoEXT}.  */
	inline static public var GLX_SHARE_CONTEXT_EXT:Int = 32778;
/** Accepted by the {@code attribute} parameter of {@link #glXQueryContextInfoEXT QueryContextInfoEXT}.  */
	inline static public var GLX_VISUAL_ID_EXT:Int = 32779;
/** Accepted by the {@code attribute} parameter of {@link #glXQueryContextInfoEXT QueryContextInfoEXT}.  */
	inline static public var GLX_SCREEN_EXT:Int = 32780;
/** Function address.  */
	public var GetCurrentDisplayEXT:haxe.Int64;
/** Function address.  */
	public var QueryContextInfoEXT:haxe.Int64;
/** Function address.  */
	public var GetContextIDEXT:haxe.Int64;
/** Function address.  */
	public var ImportContextEXT:haxe.Int64;
/** Function address.  */
	public var FreeContextEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Returns the XID of a GLXContext.
 *
 * @param context the context
 */
	static public function glXGetContextIDEXT(context:haxe.Int64):haxe.Int64;
/**
 * Frees the client-side part of a GLXContext that was created  with {@link #glXImportContextEXT ImportContextEXT}.
 *
 * @param display the connection to the X server
 * @param context the context to free
 */
	static public function glXFreeContextEXT(display:haxe.Int64,context:haxe.Int64):Void;
/**
 * May be used in place of glXCreateContext to share another process's indirect rendering context.
 *
 * @param display   the connection to the X server
 * @param contextID the context XID
 */
	static public function glXImportContextEXT(display:haxe.Int64,contextID:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glXGetCurrentDisplayEXT GetCurrentDisplayEXT}  */
	static public function nglXGetCurrentDisplayEXT(__functionAddress:haxe.Int64):haxe.Int64;
/**
 * Obtains the value of a context's attribute.
 *
 * @param display   the connection to the X server
 * @param context   the context being queried
 * @param attribute the attribute to query
 * @param value     returns the attribute value
 */
/** Alternative version of: {@link #glXQueryContextInfoEXT QueryContextInfoEXT}  */
	static public function glXQueryContextInfoEXT(display:haxe.Int64,context:haxe.Int64,attribute:Int,value:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,context:haxe.Int64,attribute:Int,value:java.nio.ByteBuffer):Int {})
/** Unsafe version of {@link #glXQueryContextInfoEXT QueryContextInfoEXT}  */
/** JNI method for {@link #glXQueryContextInfoEXT QueryContextInfoEXT}  */
	static public function nglXQueryContextInfoEXT(display:haxe.Int64,context:haxe.Int64,attribute:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (display:haxe.Int64,context:haxe.Int64,attribute:Int,value:haxe.Int64):Int {})
/** JNI method for {@link #glXGetContextIDEXT GetContextIDEXT}  */
	static public function nglXGetContextIDEXT(context:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
/** Returns the {@link GLXEXTImportContext} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXEXTImportContext;
/** JNI method for {@link #glXFreeContextEXT FreeContextEXT}  */
	static public function nglXFreeContextEXT(display:haxe.Int64,context:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Returns the display associated with the current context.  */
	static public function glXGetCurrentDisplayEXT():haxe.Int64;
/** JNI method for {@link #glXImportContextEXT ImportContextEXT}  */
	static public function nglXImportContextEXT(display:haxe.Int64,contextID:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;

}
