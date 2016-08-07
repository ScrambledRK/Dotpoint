package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVFramebufferMixedSamples")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/framebuffer_mixed_samples.txt">NV_framebuffer_mixed_samples</a> extension.
 * 
 * <p>This extension allows multisample rendering with a raster and
 * depth/stencil sample count that is larger than the color sample count.
 * Rasterization and the results of the depth and stencil tests together
 * determine the portion of a pixel that is "covered".  It can be useful to
 * evaluate coverage at a higher frequency than color samples are stored.
 * This coverage is then "reduced" to a collection of covered color samples,
 * each having an opacity value corresponding to the fraction of the color
 * sample covered.  The opacity can optionally be blended into individual
 * color samples.</p>
 */
extern class NVFramebufferMixedSamples 
{
/** Accepted by the {@code cap} parameter of Enable, Disable, IsEnabled.  */
	inline static public var GL_RASTER_MULTISAMPLE_EXT:Int = 37671;
/** Accepted by the {@code cap} parameter of Enable, Disable, IsEnabled.  */
	inline static public var GL_COVERAGE_MODULATION_TABLE_NV:Int = 37681;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_RASTER_SAMPLES_EXT:Int = 37672;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_RASTER_SAMPLES_EXT:Int = 37673;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_RASTER_FIXED_SAMPLE_LOCATIONS_EXT:Int = 37674;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT:Int = 37675;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_EFFECTIVE_RASTER_SAMPLES_EXT:Int = 37676;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_COLOR_SAMPLES_NV:Int = 36384;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_DEPTH_SAMPLES_NV:Int = 37677;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_STENCIL_SAMPLES_NV:Int = 37678;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MIXED_DEPTH_SAMPLES_SUPPORTED_NV:Int = 37679;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MIXED_STENCIL_SAMPLES_SUPPORTED_NV:Int = 37680;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_COVERAGE_MODULATION_NV:Int = 37682;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_COVERAGE_MODULATION_TABLE_SIZE_NV:Int = 37683;
/** Function address.  */
	public var RasterSamplesEXT:haxe.Int64;
/** Function address.  */
	public var CoverageModulationTableNV:haxe.Int64;
/** Function address.  */
	public var GetCoverageModulationTableNV:haxe.Int64;
/** Function address.  */
	public var CoverageModulationNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * 
 *
 * @param n The size of the coverage modulation table. Must be equal to the value of COVERAGE_MODULATION_TABLE_SIZE_NV.
 * @param v 
 */
/** Alternative version of: {@link #glCoverageModulationTableNV CoverageModulationTableNV}  */
	static public function glCoverageModulationTableNV(n:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (n:Int,v:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param components 
 */
	static public function glCoverageModulationNV(components:Int):Void;
/**
 * 
 *
 * @param samples              
 * @param fixedsamplelocations 
 */
	static public function glRasterSamplesEXT(samples:Int,fixedsamplelocations:Bool):Void;
/** Returns the {@link NVFramebufferMixedSamples} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVFramebufferMixedSamples;
/** Unsafe version of {@link #glGetCoverageModulationTableNV GetCoverageModulationTableNV}  */
/** JNI method for {@link #glGetCoverageModulationTableNV GetCoverageModulationTableNV}  */
	static public function nglGetCoverageModulationTableNV(bufsize:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (bufsize:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glRasterSamplesEXT RasterSamplesEXT}  */
	static public function nglRasterSamplesEXT(samples:Int,fixedsamplelocations:Bool,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glCoverageModulationNV CoverageModulationNV}  */
	static public function nglCoverageModulationNV(components:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glCoverageModulationTableNV CoverageModulationTableNV}  */
/** JNI method for {@link #glCoverageModulationTableNV CoverageModulationTableNV}  */
	static public function nglCoverageModulationTableNV(n:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,v:haxe.Int64):Void {})
/**
 * 
 *
 * @param bufsize 
 * @param v       
 */
/** Alternative version of: {@link #glGetCoverageModulationTableNV GetCoverageModulationTableNV}  */
	static public function glGetCoverageModulationTableNV(bufsize:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (bufsize:Int,v:java.nio.ByteBuffer):Void {})

}
