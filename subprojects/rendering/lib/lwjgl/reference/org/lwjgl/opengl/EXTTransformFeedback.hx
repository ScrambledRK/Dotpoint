package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTTransformFeedback")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/transform_feedback.txt">EXT_transform_feedback</a> extension.
 * 
 * <p>This extension provides a new mode to the GL, called transform feedback, which records selected vertex attributes for each primitive processed by the
 * GL. The selected attributes are written into buffer objects, and can be written with each attribute in a separate buffer object or with all attributes
 * interleaved into a single buffer object. If a geometry shader is active, the primitives recorded are those emitted by the geometry shader. Otherwise,
 * transform feedback captures primitives whose vertices are transformed by a vertex shader. In either case, the primitives captured are those generated
 * prior to clipping. Transform feedback mode captures the values of specified varying variables emitted from GLSL vertex or geometry shaders.</p>
 * 
 * <p>The vertex data recorded in transform feedback mode is stored into buffer objects as an array of vertex attributes. The regular representation and the
 * use of buffer objects allows the recorded data to be processed directly by the GL without requiring CPU intervention to copy data. In particular,
 * transform feedback data can be used for vertex arrays (via vertex buffer objects), as the source for pixel data (via pixel buffer objects), as shader
 * constant data (via the <a href="http://www.opengl.org/registry/specs/NV/parameter_buffer_object.txt">NV_parameter_buffer_object</a> or {@link EXTBindableUniform EXT_bindable_uniform} extensions), or via any other extension that
 * makes use of buffer objects.</p>
 * 
 * <p>This extension introduces new query object support to allow transform feedback mode to operate asynchronously. Query objects allow applications to
 * determine when transform feedback results are complete, as well as the number of primitives processed and written back to buffer objects while in
 * transform feedback mode. This extension also provides a new rasterizer discard enable, which allows applications to use transform feedback to capture
 * vertex attributes without rendering anything.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0} or {@link ARBShaderObjects ARB_shader_objects}. Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class EXTTransformFeedback 
{
/**
 * Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, GetBufferPointerv,
 * BindBufferRangeEXT, BindBufferOffsetEXT and BindBufferBaseEXT.
 */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_EXT:Int = 35982;
/** Accepted by the {@code param} parameter of GetIntegerIndexedvEXT and GetBooleanIndexedvEXT.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT:Int = 35972;
/** Accepted by the {@code param} parameter of GetIntegerIndexedvEXT and GetBooleanIndexedvEXT.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT:Int = 35973;
/**
 * Accepted by the {@code param} parameter of GetIntegerIndexedvEXT and GetBooleanIndexedvEXT, and by the {@code pname} parameter of GetBooleanv,
 * GetDoublev, GetIntegerv, and GetFloatv.
 */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT:Int = 35983;
/** Accepted by the {@code bufferMode} parameter of TransformFeedbackVaryingsEXT.  */
	inline static public var GL_INTERLEAVED_ATTRIBS_EXT:Int = 35980;
/** Accepted by the {@code bufferMode} parameter of TransformFeedbackVaryingsEXT.  */
	inline static public var GL_SEPARATE_ATTRIBS_EXT:Int = 35981;
/** Accepted by the {@code target} parameter of BeginQuery, EndQuery, and GetQueryiv.  */
	inline static public var GL_PRIMITIVES_GENERATED_EXT:Int = 35975;
/** Accepted by the {@code target} parameter of BeginQuery, EndQuery, and GetQueryiv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT:Int = 35976;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_RASTERIZER_DISCARD_EXT:Int = 35977;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT:Int = 35978;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT:Int = 35979;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT:Int = 35968;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_VARYINGS_EXT:Int = 35971;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT:Int = 35967;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT:Int = 35958;
/** Function address.  */
	public var BindBufferRangeEXT:haxe.Int64;
/** Function address.  */
	public var BindBufferOffsetEXT:haxe.Int64;
/** Function address.  */
	public var BindBufferBaseEXT:haxe.Int64;
/** Function address.  */
	public var BeginTransformFeedbackEXT:haxe.Int64;
/** Function address.  */
	public var EndTransformFeedbackEXT:haxe.Int64;
/** Function address.  */
	public var TransformFeedbackVaryingsEXT:haxe.Int64;
/** Function address.  */
	public var GetTransformFeedbackVaryingEXT:haxe.Int64;
/** Function address.  */
	public var GetIntegerIndexedvEXT:haxe.Int64;
/** Function address.  */
	public var GetBooleanIndexedvEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glTransformFeedbackVaryingsEXT TransformFeedbackVaryingsEXT}  */
/** JNI method for {@link #glTransformFeedbackVaryingsEXT TransformFeedbackVaryingsEXT}  */
	static public function nglTransformFeedbackVaryingsEXT(program:Int,count:Int,varyings:haxe.Int64,bufferMode:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,count:Int,varyings:haxe.Int64,bufferMode:Int):Void {})
/** Unsafe version of {@link #glGetIntegerIndexedvEXT GetIntegerIndexedvEXT}  */
/** JNI method for {@link #glGetIntegerIndexedvEXT GetIntegerIndexedvEXT}  */
	static public function nglGetIntegerIndexedvEXT(param:Int,index:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (param:Int,index:Int,values:haxe.Int64):Void {})
/** String return (w/ implicit max length) version of: {@link #glGetTransformFeedbackVaryingEXT GetTransformFeedbackVaryingEXT}  */
/** String return version of: {@link #glGetTransformFeedbackVaryingEXT GetTransformFeedbackVaryingEXT}  */
/** Alternative version of: {@link #glGetTransformFeedbackVaryingEXT GetTransformFeedbackVaryingEXT}  */
/**
 * 
 *
 * @param program 
 * @param index   
 * @param bufSize 
 * @param length  
 * @param size    
 * @param type    
 * @param name    
 */
	static public function glGetTransformFeedbackVaryingEXT(program:Int,index:Int,bufSize:Int,length:java.nio.ByteBuffer,size:java.nio.ByteBuffer,type:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,index:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (program:Int,index:Int,bufSize:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (program:Int,index:Int,length:java.nio.IntBuffer,size:java.nio.IntBuffer,type:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param target 
 * @param index  
 * @param buffer 
 * @param offset 
 * @param size   
 */
	static public function glBindBufferRangeEXT(target:Int,index:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64):Void;
/** Single varying version of: {@link #glTransformFeedbackVaryingsEXT TransformFeedbackVaryingsEXT}  */
/** Array version of: {@link #glTransformFeedbackVaryingsEXT TransformFeedbackVaryingsEXT}  */
/** Alternative version of: {@link #glTransformFeedbackVaryingsEXT TransformFeedbackVaryingsEXT}  */
/**
 * 
 *
 * @param program    
 * @param count      
 * @param varyings   
 * @param bufferMode 
 */
	static public function glTransformFeedbackVaryingsEXT(program:Int,count:Int,varyings:java.nio.ByteBuffer,bufferMode:Int):Void;
	@:overload(function (program:Int,varying:java.lang.CharSequence,bufferMode:Int):Void {})
	@:overload(function (program:Int,varyings:java.NativeArray<java.lang.CharSequence>,bufferMode:Int):Void {})
	@:overload(function (program:Int,varyings:org.lwjgl.PointerBuffer,bufferMode:Int):Void {})
/**
 * 
 *
 * @param target 
 * @param index  
 * @param buffer 
 */
	static public function glBindBufferBaseEXT(target:Int,index:Int,buffer:Int):Void;
/** JNI method for {@link #glBindBufferRangeEXT BindBufferRangeEXT}  */
	static public function nglBindBufferRangeEXT(target:Int,index:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBindBufferOffsetEXT BindBufferOffsetEXT}  */
	static public function nglBindBufferOffsetEXT(target:Int,index:Int,buffer:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
	static public function glEndTransformFeedbackEXT():Void;
/** JNI method for {@link #glBindBufferBaseEXT BindBufferBaseEXT}  */
	static public function nglBindBufferBaseEXT(target:Int,index:Int,buffer:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetBooleanIndexedvEXT GetBooleanIndexedvEXT}  */
	static public function glGetBooleanIndexedEXT(param:Int,index:Int):Bool;
/** JNI method for {@link #glEndTransformFeedbackEXT EndTransformFeedbackEXT}  */
	static public function nglEndTransformFeedbackEXT(__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBeginTransformFeedbackEXT BeginTransformFeedbackEXT}  */
	static public function nglBeginTransformFeedbackEXT(primitiveMode:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param target 
 * @param index  
 * @param buffer 
 * @param offset 
 */
	static public function glBindBufferOffsetEXT(target:Int,index:Int,buffer:Int,offset:haxe.Int64):Void;
/**
 * 
 *
 * @param primitiveMode 
 */
	static public function glBeginTransformFeedbackEXT(primitiveMode:Int):Void;
/** Unsafe version of {@link #glGetTransformFeedbackVaryingEXT GetTransformFeedbackVaryingEXT}  */
/** JNI method for {@link #glGetTransformFeedbackVaryingEXT GetTransformFeedbackVaryingEXT}  */
	static public function nglGetTransformFeedbackVaryingEXT(program:Int,index:Int,bufSize:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,index:Int,bufSize:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64):Void {})
/**
 * 
 *
 * @param param  
 * @param index  
 * @param values 
 */
/** Alternative version of: {@link #glGetIntegerIndexedvEXT GetIntegerIndexedvEXT}  */
	static public function glGetIntegerIndexedvEXT(param:Int,index:Int,values:java.nio.IntBuffer):Void;
	@:overload(function (param:Int,index:Int,values:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param param  
 * @param index  
 * @param values 
 */
	static public function glGetBooleanIndexedvEXT(param:Int,index:Int,values:java.nio.ByteBuffer):Void;
/** Returns the {@link EXTTransformFeedback} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTTransformFeedback;
/** Single return value version of: {@link #glGetIntegerIndexedvEXT GetIntegerIndexedvEXT}  */
	static public function glGetIntegerIndexedEXT(param:Int,index:Int):Int;
/** Unsafe version of {@link #glGetBooleanIndexedvEXT GetBooleanIndexedvEXT}  */
/** JNI method for {@link #glGetBooleanIndexedvEXT GetBooleanIndexedvEXT}  */
	static public function nglGetBooleanIndexedvEXT(param:Int,index:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (param:Int,index:Int,values:haxe.Int64):Void {})

}
