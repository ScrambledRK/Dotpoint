package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTBindableUniform")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/bindable_uniform.txt">EXT_bindable_uniform</a> extension.
 * 
 * <p>This extension introduces the concept of bindable uniforms to the OpenGL Shading Language. A uniform variable can be declared bindable, which means that
 * the storage for the uniform is not allocated by the compiler/linker anymore, but is backed by a buffer object. This buffer object is bound to the
 * bindable uniform through the new command UniformBufferEXT(). Binding needs to happen after linking a program object.</p>
 * 
 * <p>Binding different buffer objects to a bindable uniform allows an application to easily use different "uniform data sets", without having to re-specify
 * the data every time.</p>
 * 
 * <p>A buffer object can be bound to bindable uniforms in different program objects. If those bindable uniforms are all of the same type, accessing a
 * bindable uniform in program object A will result in the same data if the same access is made in program object B. This provides a mechanism for
 * 'environment uniforms', uniform values that can be shared among multiple program objects.</p>
 */
extern class EXTBindableUniform 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT:Int = 36322;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT:Int = 36323;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT:Int = 36324;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_BINDABLE_UNIFORM_SIZE_EXT:Int = 36333;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_UNIFORM_BUFFER_BINDING_EXT:Int = 36335;
/** Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, and GetBufferPointerv.  */
	inline static public var GL_UNIFORM_BUFFER_EXT:Int = 36334;
/** Function address.  */
	public var UniformBufferEXT:haxe.Int64;
/** Function address.  */
	public var GetUniformBufferSizeEXT:haxe.Int64;
/** Function address.  */
	public var GetUniformOffsetEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glGetUniformBufferSizeEXT GetUniformBufferSizeEXT}  */
	static public function nglGetUniformBufferSizeEXT(program:Int,location:Int,__functionAddress:haxe.Int64):Int;
/**
 * 
 *
 * @param program  
 * @param location 
 */
	static public function glGetUniformBufferSizeEXT(program:Int,location:Int):Int;
/** JNI method for {@link #glUniformBufferEXT UniformBufferEXT}  */
	static public function nglUniformBufferEXT(program:Int,location:Int,buffer:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glGetUniformOffsetEXT GetUniformOffsetEXT}  */
	static public function nglGetUniformOffsetEXT(program:Int,location:Int,__functionAddress:haxe.Int64):haxe.Int64;
/**
 * 
 *
 * @param program  
 * @param location 
 */
	static public function glGetUniformOffsetEXT(program:Int,location:Int):haxe.Int64;
/** Returns the {@link EXTBindableUniform} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTBindableUniform;
/**
 * 
 *
 * @param program  
 * @param location 
 * @param buffer   
 */
	static public function glUniformBufferEXT(program:Int,location:Int,buffer:Int):Void;

}
