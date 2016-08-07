package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBFramebufferNoAttachments")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/framebuffer_no_attachments.txt">ARB_framebuffer_no_attachments</a> extension.
 * 
 * <p>Framebuffer objects as introduced by {@link ARBFramebufferObject ARB_framebuffer_object} and OpenGL 3.0 provide a generalized mechanism for rendering to off-screen surfaces.
 * Each framebuffer object may have depth, stencil and zero or more color attachments that can be written to by the GL. The size of the framebuffer (width,
 * height, layer count, sample count) is derived from the attachments of that framebuffer. In unextended OpenGL 4.2, it is not legal to render into a
 * framebuffer object that has no attachments. Such a framebuffer would be considered incomplete with the {@link GL30#GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT}
 * status.</p>
 * 
 * <p>With OpenGL 4.2 and {@link ARBShaderImageLoadStore ARB_shader_image_load_store}, fragment shaders are capable of doing random access writes to buffer and texture memory via
 * image loads, stores, and atomics. This ability enables algorithms using the conventional rasterizer to generate a collection of fragments, where each
 * fragment shader invocation will write its outputs to buffer or texture memory using image stores or atomics. Such algorithms may have no need to write
 * color or depth values to a conventional framebuffer. However, a framebuffer with no attachments will be considered incomplete and no rasterization or
 * fragment shader exectuion will occur. To avoid such errors, an application may be required to create an otherwise unnecessary "dummy" texture and attach
 * it to the framebuffer (possibly with color writes masked off). If the algorithm requires the rasterizer to operate over a large number of pixels, this
 * dummy texture will needlessly consume a significant amount of memory.</p>
 * 
 * <p>This extension enables the algorithms described above to work even with a framebuffer with no attachments. Applications can specify default width,
 * height, layer count, and sample count parameters for a framebuffer object. When a framebuffer with no attachments is bound, it will be considered
 * complete as long as the application has specified non-zero default width and height parameters. For the purposes of rasterization, the framebuffer will
 * be considered to have a width, height, layer count, and sample count derived from its default parameters. Framebuffers with one or more attachments are
 * not affected by these default parameters; the size of the framebuffer will still be derived from the sizes of the attachments in that case.</p>
 * 
 * <p>Additionally, this extension provides queryable implementation-dependent maximums for framebuffer width, height, layer count, and sample count, which
 * may differ from similar limits on textures and renderbuffers. These maximums will be used to error-check the default framebuffer parameters and also
 * permit implementations to expose the ability to rasterize to an attachment-less framebuffer larger than the maximum supported texture size.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0} or {@link ARBFramebufferObject ARB_framebuffer_object}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBFramebufferNoAttachments 
{
/**
 * Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv, NamedFramebufferParameteriEXT, and
 * GetNamedFramebufferParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_DEFAULT_WIDTH:Int = 37648;
/**
 * Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv, NamedFramebufferParameteriEXT, and
 * GetNamedFramebufferParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_DEFAULT_HEIGHT:Int = 37649;
/**
 * Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv, NamedFramebufferParameteriEXT, and
 * GetNamedFramebufferParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_DEFAULT_LAYERS:Int = 37650;
/**
 * Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv, NamedFramebufferParameteriEXT, and
 * GetNamedFramebufferParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_DEFAULT_SAMPLES:Int = 37651;
/**
 * Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv, NamedFramebufferParameteriEXT, and
 * GetNamedFramebufferParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS:Int = 37652;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAMEBUFFER_WIDTH:Int = 37653;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAMEBUFFER_HEIGHT:Int = 37654;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAMEBUFFER_LAYERS:Int = 37655;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAMEBUFFER_SAMPLES:Int = 37656;
/** Function address.  */
	public var FramebufferParameteri:haxe.Int64;
/** Function address.  */
	public var GetFramebufferParameteriv:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferParameteriEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedFramebufferParameterivEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glGetNamedFramebufferParameterivEXT GetNamedFramebufferParameterivEXT}  */
/** JNI method for {@link #glGetNamedFramebufferParameterivEXT GetNamedFramebufferParameterivEXT}  */
	static public function nglGetNamedFramebufferParameterivEXT(framebuffer:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (framebuffer:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetNamedFramebufferParameterivEXT GetNamedFramebufferParameterivEXT}  */
	static public function glGetNamedFramebufferParameteriEXT(framebuffer:Int,pname:Int):Int;
/**
 * Sets a named parameter of a framebuffer.
 *
 * @param target target of the operation. One of:<br>{@link GL30#GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link GL30#GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}, {@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}
 * @param pname  a token indicating the parameter to be modified. One of:<br>{@link #GL_FRAMEBUFFER_DEFAULT_WIDTH FRAMEBUFFER_DEFAULT_WIDTH}, {@link #GL_FRAMEBUFFER_DEFAULT_HEIGHT FRAMEBUFFER_DEFAULT_HEIGHT}, {@link #GL_FRAMEBUFFER_DEFAULT_LAYERS FRAMEBUFFER_DEFAULT_LAYERS}, {@link #GL_FRAMEBUFFER_DEFAULT_SAMPLES FRAMEBUFFER_DEFAULT_SAMPLES}, {@link #GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS}
 * @param param  the new value for the parameter named {@code pname}
 */
	static public function glFramebufferParameteri(target:Int,pname:Int,param:Int):Void;
/**
 * DSA version of {@link #glGetFramebufferParameteriv GetFramebufferParameteriv}.
 *
 * @param framebuffer the framebuffer object
 * @param pname       a token indicating the parameter to be retrieved. One of:<br>{@link GL43#GL_FRAMEBUFFER_DEFAULT_WIDTH FRAMEBUFFER_DEFAULT_WIDTH}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_HEIGHT FRAMEBUFFER_DEFAULT_HEIGHT}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_LAYERS FRAMEBUFFER_DEFAULT_LAYERS}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_SAMPLES FRAMEBUFFER_DEFAULT_SAMPLES}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS}
 * @param params      a variable to receive the value of the parameter named {@code pname}
 */
/** Alternative version of: {@link #glGetNamedFramebufferParameterivEXT GetNamedFramebufferParameterivEXT}  */
	static public function glGetNamedFramebufferParameterivEXT(framebuffer:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (framebuffer:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glNamedFramebufferParameteriEXT NamedFramebufferParameteriEXT}  */
	static public function nglNamedFramebufferParameteriEXT(framebuffer:Int,pname:Int,param:Int,__functionAddress:haxe.Int64):Void;
/** Returns the {@link ARBFramebufferNoAttachments} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBFramebufferNoAttachments;
/** Unsafe version of {@link #glGetFramebufferParameteriv GetFramebufferParameteriv}  */
	static public function nglGetFramebufferParameteriv(target:Int,pname:Int,params:haxe.Int64):Void;
/** Single return value version of: {@link #glGetFramebufferParameteriv GetFramebufferParameteriv}  */
	static public function glGetFramebufferParameteri(target:Int,pname:Int):Int;
/**
 * Retrieves a named parameter from a framebuffer.
 *
 * @param target target of the operation. One of:<br>{@link GL30#GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link GL30#GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}, {@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}
 * @param pname  a token indicating the parameter to be retrieved. One of:<br>{@link #GL_FRAMEBUFFER_DEFAULT_WIDTH FRAMEBUFFER_DEFAULT_WIDTH}, {@link #GL_FRAMEBUFFER_DEFAULT_HEIGHT FRAMEBUFFER_DEFAULT_HEIGHT}, {@link #GL_FRAMEBUFFER_DEFAULT_LAYERS FRAMEBUFFER_DEFAULT_LAYERS}, {@link #GL_FRAMEBUFFER_DEFAULT_SAMPLES FRAMEBUFFER_DEFAULT_SAMPLES}, {@link #GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS}
 * @param params a variable to receive the value of the parameter named {@code pname}
 */
/** Alternative version of: {@link #glGetFramebufferParameteriv GetFramebufferParameteriv}  */
	static public function glGetFramebufferParameteriv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link #glFramebufferParameteri FramebufferParameteri}.
 *
 * @param framebuffer the framebuffer object
 * @param pname       a token indicating the parameter to be modified. One of:<br>{@link GL43#GL_FRAMEBUFFER_DEFAULT_WIDTH FRAMEBUFFER_DEFAULT_WIDTH}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_HEIGHT FRAMEBUFFER_DEFAULT_HEIGHT}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_LAYERS FRAMEBUFFER_DEFAULT_LAYERS}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_SAMPLES FRAMEBUFFER_DEFAULT_SAMPLES}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS}
 * @param param       the new value for the parameter named {@code pname}
 */
	static public function glNamedFramebufferParameteriEXT(framebuffer:Int,pname:Int,param:Int):Void;

}
