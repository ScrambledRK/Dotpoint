package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVShaderBufferLoad")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/shader_buffer_load.txt">NV_shader_buffer_load</a> extension.
 * 
 * <p>At a very coarse level, GL has evolved in a way that allows applications to replace many of the original state machine variables with blocks of
 * user-defined data. For example, the current vertex state has been augmented by vertex buffer objects, fixed-function shading state and parameters have
 * been replaced by shaders/programs and constant buffers, etc. Applications switch between coarse sets of state by binding objects to the context or to
 * other container objects (e.g. vertex array objects) instead of manipulating state variables of the context. In terms of the number of GL commands
 * required to draw an object, modern applications are orders of magnitude more efficient than legacy applications, but this explosion of objects bound to
 * other objects has led to a new bottleneck - pointer chasing and CPU L2 cache misses in the driver, and general L2 cache pollution.</p>
 * 
 * <p>This extension provides a mechanism to read from a flat, 64-bit GPU address space from programs/shaders, to query GPU addresses of buffer objects at the
 * API level, and to bind buffer objects to the context in such a way that they can be accessed via their GPU addresses in any shader stage.</p>
 * 
 * <p>The intent is that applications can avoid re-binding buffer objects or updating constants between each Draw call and instead simply use a VertexAttrib
 * (or TexCoord, or InstanceID, or...) to "point" to the new object's state. In this way, one of the cheapest "state" updates (from the CPU's point of
 * view) can be used to effect a significant state change in the shader similarly to how a pointer change may on the CPU. At the same time, this relieves
 * the limits on how many buffer objects can be accessed at once by shaders, and allows these buffer object accesses to be exposed as C-style pointer
 * dereferences in the shading language.</p>
 * 
 * <p>As a very simple example, imagine packing a group of similar objects' constants into a single buffer object and pointing your program at object
 * &lt;i&gt; by setting <pre><code style="font-family: monospace">
 * glVertexAttribI1iEXT(attrLoc, i);</code></pre> and using a shader as such:
 * <pre><code style="font-family: monospace">
 * struct MyObjectType {
 * 	mat4x4 modelView;
 *     vec4 materialPropertyX;
 *     // etc.
 * };
 * uniform MyObjectType *allObjects;
 * in int objectID; // bound to attrLoc
 * 
 * ...
 * 
 * mat4x4 thisObjectsMatrix = allObjects[objectID].modelView;
 * // do transform, shading, etc.</code></pre>
 * This is beneficial in much the same way that texture arrays allow choosing between similar, but independent, texture maps with a single coordinate
 * identifying which slice of the texture to use. It also resembles instancing, where a lightweight change (incrementing the instance ID) can be used to
 * generate a different and interesting result, but with additional flexibility over instancing because the values are app-controlled and not a single incrementing counter.</p>
 * 
 * <p>Dependent pointer fetches are allowed, so more complex scene graph structures can be built into buffer objects providing significant new flexibility in
 * the use of shaders. Another simple example, showing something you can't do with existing functionality, is to do dependent fetches into many buffer
 * objects:
 * <pre><code style="font-family: monospace">
 * GenBuffers(N, dataBuffers);
 * GenBuffers(1, &pointerBuffer);
 * 
 * GLuint64EXT gpuAddrs[N];
 * for (i = 0; i < N; ++i) {
 *     BindBuffer(target, dataBuffers[i]);
 *     BufferData(target, size[i], myData[i], STATIC_DRAW);
 * 
 *     // get the address of this buffer and make it resident.
 *     GetBufferParameterui64vNV(target, BUFFER_GPU_ADDRESS,
 *                               gpuaddrs[i]);
 *     MakeBufferResidentNV(target, READ_ONLY);
 * }
 * 
 * GLuint64EXT pointerBufferAddr;
 * BindBuffer(target, pointerBuffer);
 * BufferData(target, sizeof(GLuint64EXT)*N, gpuAddrs, STATIC_DRAW);
 * GetBufferParameterui64vNV(target, BUFFER_GPU_ADDRESS,
 *                           &pointerBufferAddr);
 * MakeBufferResidentNV(target, READ_ONLY);
 * 
 * // now in the shader, we can use a double indirection
 * vec4 **ptrToBuffers = pointerBufferAddr;
 * vec4 *ptrToBufferI = ptrToBuffers[i];</code></pre>
 * This allows simultaneous access to more buffers than <a href="http://www.opengl.org/registry/specs/EXT/bindable_uniform.txt">EXT_bindable_uniform</a> (MAX_VERTEX_BINDABLE_UNIFORMS, etc.) and each can be
 * larger than MAX_BINDABLE_UNIFORM_SIZE.</p>
 */
extern class NVShaderBufferLoad 
{
/** Accepted by the {@code pname} parameter of GetBufferParameterui64vNV, GetNamedBufferParameterui64vNV.  */
	inline static public var GL_BUFFER_GPU_ADDRESS_NV:Int = 36637;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_GPU_ADDRESS_NV:Int = 36660;
/** Accepted by the {@code value} parameter of GetIntegerui64vNV.  */
	inline static public var GL_MAX_SHADER_BUFFER_ADDRESS_NV:Int = 36661;
/** Function address.  */
	public var MakeBufferResidentNV:haxe.Int64;
/** Function address.  */
	public var MakeBufferNonResidentNV:haxe.Int64;
/** Function address.  */
	public var IsBufferResidentNV:haxe.Int64;
/** Function address.  */
	public var MakeNamedBufferResidentNV:haxe.Int64;
/** Function address.  */
	public var MakeNamedBufferNonResidentNV:haxe.Int64;
/** Function address.  */
	public var IsNamedBufferResidentNV:haxe.Int64;
/** Function address.  */
	public var GetBufferParameterui64vNV:haxe.Int64;
/** Function address.  */
	public var GetNamedBufferParameterui64vNV:haxe.Int64;
/** Function address.  */
	public var GetIntegerui64vNV:haxe.Int64;
/** Function address.  */
	public var Uniformui64NV:haxe.Int64;
/** Function address.  */
	public var Uniformui64vNV:haxe.Int64;
/** Function address.  */
	public var GetUniformui64vNV:haxe.Int64;
/** Function address.  */
	public var ProgramUniformui64NV:haxe.Int64;
/** Function address.  */
	public var ProgramUniformui64vNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * 
 *
 * @param value  
 * @param result 
 */
/** Alternative version of: {@link #glGetIntegerui64vNV GetIntegerui64vNV}  */
	static public function glGetIntegerui64vNV(value:Int,result:java.nio.LongBuffer):Void;
	@:overload(function (value:Int,result:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMakeNamedBufferNonResidentNV MakeNamedBufferNonResidentNV}  */
	static public function nglMakeNamedBufferNonResidentNV(buffer:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMakeBufferNonResidentNV MakeBufferNonResidentNV}  */
	static public function nglMakeBufferNonResidentNV(target:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param target 
 */
	static public function glIsBufferResidentNV(target:Int):Bool;
/** Alternative version of: {@link #glProgramUniformui64vNV ProgramUniformui64vNV}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniformui64vNV(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.LongBuffer):Void {})
/** JNI method for {@link #glIsNamedBufferResidentNV IsNamedBufferResidentNV}  */
	static public function nglIsNamedBufferResidentNV(buffer:Int,__functionAddress:haxe.Int64):Bool;
/**
 * 
 *
 * @param program  
 * @param location 
 * @param params   
 */
/** Alternative version of: {@link #glGetUniformui64vNV GetUniformui64vNV}  */
	static public function glGetUniformui64vNV(program:Int,location:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param target 
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glGetBufferParameterui64vNV GetBufferParameterui64vNV}  */
	static public function glGetBufferParameterui64vNV(target:Int,pname:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glUniformui64NV Uniformui64NV}  */
	static public function nglUniformui64NV(location:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetUniformui64vNV GetUniformui64vNV}  */
/** JNI method for {@link #glGetUniformui64vNV GetUniformui64vNV}  */
	static public function nglGetUniformui64vNV(program:Int,location:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetUniformui64vNV GetUniformui64vNV}  */
	static public function glGetUniformui64NV(program:Int,location:Int):haxe.Int64;
/** Unsafe version of {@link #glGetIntegerui64vNV GetIntegerui64vNV}  */
/** JNI method for {@link #glGetIntegerui64vNV GetIntegerui64vNV}  */
	static public function nglGetIntegerui64vNV(value:Int,result:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (value:Int,result:haxe.Int64):Void {})
/**
 * 
 *
 * @param target 
 */
	static public function glMakeBufferNonResidentNV(target:Int):Void;
/** Unsafe version of {@link #glGetNamedBufferParameterui64vNV GetNamedBufferParameterui64vNV}  */
/** JNI method for {@link #glGetNamedBufferParameterui64vNV GetNamedBufferParameterui64vNV}  */
	static public function nglGetNamedBufferParameterui64vNV(buffer:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param buffer 
 */
	static public function glMakeNamedBufferNonResidentNV(buffer:Int):Void;
/** Unsafe version of {@link #glProgramUniformui64vNV ProgramUniformui64vNV}  */
/** JNI method for {@link #glProgramUniformui64vNV ProgramUniformui64vNV}  */
	static public function nglProgramUniformui64vNV(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetBufferParameterui64vNV GetBufferParameterui64vNV}  */
	static public function glGetBufferParameterui64NV(target:Int,pname:Int):haxe.Int64;
/**
 * 
 *
 * @param location 
 * @param value    
 */
	static public function glUniformui64NV(location:Int,value:haxe.Int64):Void;
/** Alternative version of: {@link #glUniformui64vNV Uniformui64vNV}  */
/**
 * 
 *
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glUniformui64vNV(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.LongBuffer):Void {})
/**
 * 
 *
 * @param buffer 
 * @param access 
 */
	static public function glMakeNamedBufferResidentNV(buffer:Int,access:Int):Void;
/** JNI method for {@link #glMakeNamedBufferResidentNV MakeNamedBufferResidentNV}  */
	static public function nglMakeNamedBufferResidentNV(buffer:Int,access:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glIsBufferResidentNV IsBufferResidentNV}  */
	static public function nglIsBufferResidentNV(target:Int,__functionAddress:haxe.Int64):Bool;
/**
 * 
 *
 * @param buffer 
 */
	static public function glIsNamedBufferResidentNV(buffer:Int):Bool;
/** Unsafe version of {@link #glGetBufferParameterui64vNV GetBufferParameterui64vNV}  */
/** JNI method for {@link #glGetBufferParameterui64vNV GetBufferParameterui64vNV}  */
	static public function nglGetBufferParameterui64vNV(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Returns the {@link NVShaderBufferLoad} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVShaderBufferLoad;
/**
 * 
 *
 * @param buffer 
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glGetNamedBufferParameterui64vNV GetNamedBufferParameterui64vNV}  */
	static public function glGetNamedBufferParameterui64vNV(buffer:Int,pname:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (buffer:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetNamedBufferParameterui64vNV GetNamedBufferParameterui64vNV}  */
	static public function glGetNamedBufferParameterui64NV(buffer:Int,pname:Int):haxe.Int64;
/**
 * 
 *
 * @param target 
 * @param access 
 */
	static public function glMakeBufferResidentNV(target:Int,access:Int):Void;
/** Single return value version of: {@link #glGetIntegerui64vNV GetIntegerui64vNV}  */
	static public function glGetIntegerui64NV(value:Int):haxe.Int64;
/** JNI method for {@link #glProgramUniformui64NV ProgramUniformui64NV}  */
	static public function nglProgramUniformui64NV(program:Int,location:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniformui64vNV Uniformui64vNV}  */
/** JNI method for {@link #glUniformui64vNV Uniformui64vNV}  */
	static public function nglUniformui64vNV(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glMakeBufferResidentNV MakeBufferResidentNV}  */
	static public function nglMakeBufferResidentNV(target:Int,access:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param program  
 * @param location 
 * @param value    
 */
	static public function glProgramUniformui64NV(program:Int,location:Int,value:haxe.Int64):Void;

}
