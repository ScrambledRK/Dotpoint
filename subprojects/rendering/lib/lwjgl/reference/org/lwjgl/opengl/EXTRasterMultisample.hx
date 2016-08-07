package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTRasterMultisample")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/raster_multisample.txt">EXT_raster_multisample</a> extension.
 * 
 * <p>This extension allows rendering to a non-multisample color buffer while rasterizing with more than one sample. The result of rasterization (coverage)
 * is available in the {@code gl_SampleMaskIn[]} fragment shader input, multisample rasterization is enabled for all primitives, and several per- fragment
 * operations operate at the raster sample rate.</p>
 * 
 * <p>When using the functionality provided by this extension, depth, stencil, and depth bounds tests must be disabled, and a multisample draw framebuffer
 * must not be used.</p>
 * 
 * <p>A fragment's "coverage", or "effective raster samples" is considered to have "N bits" (as opposed to "one bit" corresponding to the single color
 * sample) through the fragment shader, in the sample mask output, through the multisample fragment operations and occlusion query, until the coverage is
 * finally "reduced" to a single bit in a new "Coverage Reduction" stage that occurs before blending.</p>
 */
extern class EXTRasterMultisample 
{
/** Accepted by the {@code cap} parameter of Enable, Disable, IsEnabled.  */
	inline static public var GL_RASTER_MULTISAMPLE_EXT:Int = 37671;
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
/** Function address.  */
	public var RasterSamplesEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Selects the number of samples to be used for rasterization. {@code samples} represents a request for a desired minimum number of samples. Since
 * different implementations may support different sample counts, the actual sample pattern used is implementation-dependent. However, the resulting value
 * for {@link #GL_RASTER_SAMPLES_EXT RASTER_SAMPLES_EXT} is guaranteed to be greater than or equal to {@code samples} and no more than the next larger sample count supported by the
 * implementation. If {@code fixedsamplelocations} is {@link GL11#GL_TRUE TRUE}, identical sample locations will be used for all pixels. The sample locations chosen are a
 * function of only the parameters to RasterSamplesEXT and not of any other state.
 * 
 * <p>If {@link #GL_RASTER_MULTISAMPLE_EXT RASTER_MULTISAMPLE_EXT} is enabled, then the sample pattern chosen by RasterSamplesEXT will be used instead of sampling at the center of the pixel.
 * The sample locations can be queried with {@link GL32#glGetMultisamplefv GetMultisamplefv} with a {@code pname} of {@link GL32#GL_SAMPLE_POSITION SAMPLE_POSITION}, similar to normal multisample sample
 * locations.</p>
 * 
 * <p>The value {@link #GL_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT MULTISAMPLE_RASTERIZATION_ALLOWED_EXT} is {@link GL11#GL_TRUE TRUE} if {@link GL13#GL_SAMPLE_BUFFERS SAMPLE_BUFFERS} is one or if {@link #GL_RASTER_MULTISAMPLE_EXT RASTER_MULTISAMPLE_EXT} is enabled. The value
 * {@link #GL_EFFECTIVE_RASTER_SAMPLES_EXT EFFECTIVE_RASTER_SAMPLES_EXT} is equal to {@link #GL_RASTER_SAMPLES_EXT RASTER_SAMPLES_EXT} if {@link #GL_RASTER_MULTISAMPLE_EXT RASTER_MULTISAMPLE_EXT} is enabled, otherwise is equal to {@link GL13#GL_SAMPLES SAMPLES}.</p>
 * 
 * <p>Explicit multisample rasterization can not be used in conjunction with depth, stencil, or depth bounds tests, multisample framebuffers, or if
 * {@link #GL_RASTER_SAMPLES_EXT RASTER_SAMPLES_EXT} is zero. If {@link #GL_RASTER_MULTISAMPLE_EXT RASTER_MULTISAMPLE_EXT} is enabled, the error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} will be generated by Draw commands if
 * <ul>
 * <li>the value of {@link #GL_RASTER_SAMPLES_EXT RASTER_SAMPLES_EXT} is zero</li>
 * <li>the depth, stencil, or depth bounds test is enabled</li>
 * <li>a multisample draw framebuffer is bound ({@link GL13#GL_SAMPLE_BUFFERS SAMPLE_BUFFERS} is one)</li>
 * </ul>
 * <h3>Errors</h3></p>
 * 
 * <p>An {@link GL11#GL_INVALID_VALUE INVALID_VALUE} error is generated if {@code samples} is greater than the value of {@link #GL_MAX_RASTER_SAMPLES_EXT MAX_RASTER_SAMPLES_EXT} (the implementation-dependent maximum
 * number of samples).</p>
 *
 * @param samples              the number of samples to be used for rasterization
 * @param fixedsamplelocations if {@link GL11#GL_TRUE TRUE}, identical sample locations will be used for all pixels
 */
	static public function glRasterSamplesEXT(samples:Int,fixedsamplelocations:Bool):Void;
/** Returns the {@link EXTRasterMultisample} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTRasterMultisample;
/** JNI method for {@link #glRasterSamplesEXT RasterSamplesEXT}  */
	static public function nglRasterSamplesEXT(samples:Int,fixedsamplelocations:Bool,__functionAddress:haxe.Int64):Void;

}
