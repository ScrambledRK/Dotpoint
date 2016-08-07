package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVSampleLocations")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/sample_locations.txt">NV_sample_locations</a> extension.
 * 
 * <p>This extension allows an application to modify the locations of samples within a pixel used in multisample rasterization. Additionally, it allows
 * applications to specify different sample locations for each pixel in a group of adjacent pixels, which may increase antialiasing quality (particularly
 * if a custom resolve shader is used that takes advantage of these different locations).</p>
 * 
 * <p>It is common for implementations to optimize the storage of depth values by storing values that can be used to reconstruct depth at each sample
 * location, rather than storing separate depth values for each sample. For example, the depth values from a single triangle can be represented using
 * plane equations. When the depth value for a sample is needed, it is automatically evaluated at the sample location. Modifying the sample locations
 * causes the reconstruction to no longer evaluate the same depth values as when the samples were originally generated. This extension provides a command
 * to "resolve" and store per-sample depth values using the currently programmed sample locations, which allows the application to manage this issue
 * if/when necessary.</p>
 * 
 * <p>The programmable sample locations are used during rasterization and for evaluation of depth functions during normal geometric rendering. The
 * programmable locations are associated with a framebuffer object rather than an individual depth buffer, so if the depth buffer is used as a texture the
 * texture sampling may be done at the standard sample locations. Additionally, commands that do not render geometric primitives (e.g. ReadPixels,
 * BlitFramebuffer, CopyTexSubImage2D, etc.) may use the standard sample locations to resolve depth functions rather than the programmable locations. If a
 * single depth buffer is used at different times with different sample locations, the depth functions may be interpreted using the current sample
 * locations.</p>
 */
extern class NVSampleLocations 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_SAMPLE_LOCATION_SUBPIXEL_BITS_NV:Int = 37693;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV:Int = 37694;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV:Int = 37695;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV:Int = 37696;
/** Accepted by the {@code pname} parameter of GetMultisamplefv.  */
	inline static public var GL_SAMPLE_LOCATION_NV:Int = 36432;
/** Accepted by the {@code pname} parameter of GetMultisamplefv.  */
	inline static public var GL_PROGRAMMABLE_SAMPLE_LOCATION_NV:Int = 37697;
/** Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv.  */
	inline static public var GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV:Int = 37698;
/** Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv.  */
	inline static public var GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV:Int = 37699;
/** Function address.  */
	public var FramebufferSampleLocationsfvNV:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferSampleLocationsfvNV:haxe.Int64;
/** Function address.  */
	public var ResolveDepthValuesNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glFramebufferSampleLocationsfvNV FramebufferSampleLocationsfvNV}  */
/** JNI method for {@link #glFramebufferSampleLocationsfvNV FramebufferSampleLocationsfvNV}  */
	static public function nglFramebufferSampleLocationsfvNV(target:Int,start:Int,count:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,start:Int,count:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glResolveDepthValuesNV ResolveDepthValuesNV}  */
	static public function nglResolveDepthValuesNV(__functionAddress:haxe.Int64):Void;
/**
 * Evaluates depth values for all samples in the current depth buffer (subject to the pixel ownership and scissor tests) and stores each value in the
 * depth buffer. This can be used to ensure that later accesses will use depth values consistent with the sample locations used when the samples were
 * generated. If the current framebuffer has no depth buffer, ResolveDepthValuesNV will have no effect.
 */
	static public function glResolveDepthValuesNV():Void;
/** Alternative version of: {@link #glNamedFramebufferSampleLocationsfvNV NamedFramebufferSampleLocationsfvNV}  */
/**
 * Updates the programmable sample locations
 *
 * @param framebuffer the framebuffer whose programmable sample locations are modified
 * @param start       the index of the first sample location to modify
 * @param count       the number of sample locations to modify
 * @param v           a pair of floating point values in the range [0,1] for each sample location
 */
	static public function glNamedFramebufferSampleLocationsfvNV(framebuffer:Int,start:Int,count:Int,v:java.nio.ByteBuffer):Void;
	@:overload(function (framebuffer:Int,start:Int,v:java.nio.FloatBuffer):Void {})
/** Returns the {@link NVSampleLocations} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVSampleLocations;
/** Alternative version of: {@link #glFramebufferSampleLocationsfvNV FramebufferSampleLocationsfvNV}  */
/**
 * Updates the programmable sample locations
 *
 * @param target the framebuffer whose programmable sample locations are modified
 * @param start  the index of the first sample location to modify
 * @param count  the number of sample locations to modify
 * @param v      a pair of floating point values in the range [0,1] for each sample location
 */
	static public function glFramebufferSampleLocationsfvNV(target:Int,start:Int,count:Int,v:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,start:Int,v:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glNamedFramebufferSampleLocationsfvNV NamedFramebufferSampleLocationsfvNV}  */
/** JNI method for {@link #glNamedFramebufferSampleLocationsfvNV NamedFramebufferSampleLocationsfvNV}  */
	static public function nglNamedFramebufferSampleLocationsfvNV(framebuffer:Int,start:Int,count:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (framebuffer:Int,start:Int,count:Int,v:haxe.Int64):Void {})

}
