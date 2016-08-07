package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVConservativeRaster")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/conservative_raster.txt">NV_conservative_raster</a> extension.
 * 
 * <p>This extension adds a "conservative" rasterization mode where any pixel that is partially covered, even if no sample location is covered, is treated as
 * fully covered and a corresponding fragment will be shaded.</p>
 * 
 * <p>A new control is also added to modify window coordinate snapping precision.</p>
 * 
 * <p>These controls can be used to implement "binning" to a low-resolution render target, for example to determine which tiles of a sparse texture need to
 * be populated. An app can construct a framebuffer where there is one pixel per tile in the sparse texture, and adjust the number of subpixel bits such
 * that snapping occurs to the same effective grid as when rendering to the sparse texture. Then triangles should cover (at least) the same pixels in the
 * low-res framebuffer as they do tiles in the sparse texture.</p>
 */
extern class NVConservativeRaster 
{
/** Accepted by the {@code cap} parameter of Enable, Disable, IsEnabled.  */
	inline static public var GL_CONSERVATIVE_RASTERIZATION_NV:Int = 37702;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_SUBPIXEL_PRECISION_BIAS_X_BITS_NV:Int = 37703;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV:Int = 37704;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV:Int = 37705;
/** Function address.  */
	public var SubpixelPrecisionBiasNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glSubpixelPrecisionBiasNV SubpixelPrecisionBiasNV}  */
	static public function nglSubpixelPrecisionBiasNV(xbits:Int,ybits:Int,__functionAddress:haxe.Int64):Void;
/**
 * Sets the {@link #GL_SUBPIXEL_PRECISION_BIAS_X_BITS_NV SUBPIXEL_PRECISION_BIAS_X_BITS_NV} and {@link #GL_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV SUBPIXEL_PRECISION_BIAS_Y_BITS_NV} values.
 * 
 * <p>The vertex's window x and y coordinates may be optionally converted to fixed-point values with {@code N} fractional bits. If
 * {@link #GL_CONSERVATIVE_RASTERIZATION_NV CONSERVATIVE_RASTERIZATION_NV} is disabled, then {@code N} is the implementation-dependent value of {@link GL11#GL_SUBPIXEL_BITS SUBPIXEL_BITS}. If
 * {@link #GL_CONSERVATIVE_RASTERIZATION_NV CONSERVATIVE_RASTERIZATION_NV} is enabled, {@code N} is computed as the sum of the value of {@link GL11#GL_SUBPIXEL_BITS SUBPIXEL_BITS} and programmable values of
 * {@link #GL_SUBPIXEL_PRECISION_BIAS_X_BITS_NV SUBPIXEL_PRECISION_BIAS_X_BITS_NV} and {@link #GL_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV SUBPIXEL_PRECISION_BIAS_Y_BITS_NV}.</p>
 * 
 * <p>When these values are non-zero, the invariance requirement may not apply because the subpixel precision may not be the same at all window coordinates.</p>
 *
 * @param xbits the {@link #GL_SUBPIXEL_PRECISION_BIAS_X_BITS_NV SUBPIXEL_PRECISION_BIAS_X_BITS_NV} value. The initial value is zero.
 * @param ybits the {@link #GL_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV SUBPIXEL_PRECISION_BIAS_Y_BITS_NV} value. The initial value is zero.
 */
	static public function glSubpixelPrecisionBiasNV(xbits:Int,ybits:Int):Void;
/** Returns the {@link NVConservativeRaster} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVConservativeRaster;

}
