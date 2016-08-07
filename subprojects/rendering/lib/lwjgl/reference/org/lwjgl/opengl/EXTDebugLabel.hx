package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTDebugLabel")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/debug_label.txt">EXT_debug_label</a> extension.
 * 
 * <p>This extension defines a mechanism for OpenGL and OpenGL ES applications to label their objects (textures, buffers, shaders, etc.) with a descriptive
 * string.</p>
 * 
 * <p>When profiling or debugging such an application within a debugger or profiler it is difficult to identify resources from their object names. Even when
 * the resource itself is viewed it can be problematic to differentiate between similar resources. Attaching a label to an object helps obviate this
 * difficulty.</p>
 * 
 * <p>The intended purpose of this is purely to improve the user experience within OpenGL and OpenGL ES development tools.</p>
 */
extern class EXTDebugLabel 
{
/** Function address.  */
	public var LabelObjectEXT:haxe.Int64;
/** Function address.  */
	public var GetObjectLabelEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** String return version of: {@link #glGetObjectLabelEXT GetObjectLabelEXT}  */
/** Alternative version of: {@link #glGetObjectLabelEXT GetObjectLabelEXT}  */
/**
 * 
 *
 * @param type    
 * @param object  
 * @param bufSize 
 * @param length  
 * @param label   
 */
	static public function glGetObjectLabelEXT(type:Int,object:Int,bufSize:Int,length:java.nio.ByteBuffer,label:java.nio.ByteBuffer):Void;
	@:overload(function (type:Int,object:Int,bufSize:Int):String {})
	@:overload(function (type:Int,object:Int,length:java.nio.IntBuffer,label:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glLabelObjectEXT LabelObjectEXT}  */
/** JNI method for {@link #glLabelObjectEXT LabelObjectEXT}  */
	static public function nglLabelObjectEXT(type:Int,object:Int,length:Int,label:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,object:Int,length:Int,label:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetObjectLabelEXT GetObjectLabelEXT}  */
/** JNI method for {@link #glGetObjectLabelEXT GetObjectLabelEXT}  */
	static public function nglGetObjectLabelEXT(type:Int,object:Int,bufSize:Int,length:haxe.Int64,label:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,object:Int,bufSize:Int,length:haxe.Int64,label:haxe.Int64):Void {})
/** Returns the {@link EXTDebugLabel} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTDebugLabel;
/** CharSequence version of: {@link #glLabelObjectEXT LabelObjectEXT}  */
/** Alternative version of: {@link #glLabelObjectEXT LabelObjectEXT}  */
/**
 * 
 *
 * @param type   
 * @param object 
 * @param length 
 * @param label  
 */
	static public function glLabelObjectEXT(type:Int,object:Int,length:Int,label:java.nio.ByteBuffer):Void;
	@:overload(function (type:Int,object:Int,label:java.lang.CharSequence):Void {})
	@:overload(function (type:Int,object:Int,label:java.nio.ByteBuffer):Void {})

}
