package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBImaging")
@:final
/** Native bindings to the OpenGL 1.2 optional imaging subset.  */
extern class ARBImaging 
{
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of ColorTable, CopyColorTable, ColorTableParameteriv, ColorTableParameterfv,
 * GetColorTable, GetColorTableParameteriv, and GetColorTableParameterfv.
 */
	inline static public var GL_COLOR_TABLE:Int = 32976;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of ColorTable, CopyColorTable, ColorTableParameteriv, ColorTableParameterfv,
 * GetColorTable, GetColorTableParameteriv, and GetColorTableParameterfv.
 */
	inline static public var GL_POST_CONVOLUTION_COLOR_TABLE:Int = 32977;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of ColorTable, CopyColorTable, ColorTableParameteriv, ColorTableParameterfv,
 * GetColorTable, GetColorTableParameteriv, and GetColorTableParameterfv.
 */
	inline static public var GL_POST_COLOR_MATRIX_COLOR_TABLE:Int = 32978;
/** Accepted by the {@code target} parameter of ColorTable, GetColorTableParameteriv, and GetColorTableParameterfv.  */
	inline static public var GL_PROXY_COLOR_TABLE:Int = 32979;
/** Accepted by the {@code target} parameter of ColorTable, GetColorTableParameteriv, and GetColorTableParameterfv.  */
	inline static public var GL_PROXY_POST_CONVOLUTION_COLOR_TABLE:Int = 32980;
/** Accepted by the {@code target} parameter of ColorTable, GetColorTableParameteriv, and GetColorTableParameterfv.  */
	inline static public var GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE:Int = 32981;
/**
 * Accepted by the {@code pname} parameter of ColorTableParameteriv, ColorTableParameterfv, GetColorTableParameteriv, and
 * GetColorTableParameterfv.
 */
	inline static public var GL_COLOR_TABLE_SCALE:Int = 32982;
/**
 * Accepted by the {@code pname} parameter of ColorTableParameteriv, ColorTableParameterfv, GetColorTableParameteriv, and
 * GetColorTableParameterfv.
 */
	inline static public var GL_COLOR_TABLE_BIAS:Int = 32983;
/** Accepted by the {@code pname} parameter of GetColorTableParameteriv and GetColorTableParameterfv.  */
	inline static public var GL_COLOR_TABLE_FORMAT:Int = 32984;
/** Accepted by the {@code pname} parameter of GetColorTableParameteriv and GetColorTableParameterfv.  */
	inline static public var GL_COLOR_TABLE_WIDTH:Int = 32985;
/** Accepted by the {@code pname} parameter of GetColorTableParameteriv and GetColorTableParameterfv.  */
	inline static public var GL_COLOR_TABLE_RED_SIZE:Int = 32986;
/** Accepted by the {@code pname} parameter of GetColorTableParameteriv and GetColorTableParameterfv.  */
	inline static public var GL_COLOR_TABLE_GREEN_SIZE:Int = 32987;
/** Accepted by the {@code pname} parameter of GetColorTableParameteriv and GetColorTableParameterfv.  */
	inline static public var GL_COLOR_TABLE_BLUE_SIZE:Int = 32988;
/** Accepted by the {@code pname} parameter of GetColorTableParameteriv and GetColorTableParameterfv.  */
	inline static public var GL_COLOR_TABLE_ALPHA_SIZE:Int = 32989;
/** Accepted by the {@code pname} parameter of GetColorTableParameteriv and GetColorTableParameterfv.  */
	inline static public var GL_COLOR_TABLE_LUMINANCE_SIZE:Int = 32990;
/** Accepted by the {@code pname} parameter of GetColorTableParameteriv and GetColorTableParameterfv.  */
	inline static public var GL_COLOR_TABLE_INTENSITY_SIZE:Int = 32991;
/** ErrorCode  */
	inline static public var GL_TABLE_TOO_LARGE:Int = 32817;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of ConvolutionFilter1D, CopyConvolutionFilter1D, GetConvolutionFilter, ConvolutionParameteri,
 * ConvolutionParameterf, ConvolutionParameteriv, ConvolutionParameterfv, GetConvolutionParameteriv, and GetConvolutionParameterfv.
 */
	inline static public var GL_CONVOLUTION_1D:Int = 32784;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of ConvolutionFilter2D, CopyConvolutionFilter2D, GetConvolutionFilter, ConvolutionParameteri,
 * ConvolutionParameterf, ConvolutionParameteriv, ConvolutionParameterfv, GetConvolutionParameteriv, and GetConvolutionParameterfv.
 */
	inline static public var GL_CONVOLUTION_2D:Int = 32785;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of SeparableFilter2D, SeparableFilter2D, GetSeparableFilter, ConvolutionParameteri,
 * ConvolutionParameterf, ConvolutionParameteriv, ConvolutionParameterfv, GetConvolutionParameteriv, and GetConvolutionParameterfv.
 */
	inline static public var GL_SEPARABLE_2D:Int = 32786;
/**
 * Accepted by the {@code pname} parameter of ConvolutionParameteri, ConvolutionParameterf, ConvolutionParameteriv, ConvolutionParameterfv,
 * GetConvolutionParameteriv, and GetConvolutionParameterfv.
 */
	inline static public var GL_CONVOLUTION_BORDER_MODE:Int = 32787;
/** Accepted by the {@code pname} parameter of ConvolutionParameteriv, ConvolutionParameterfv, GetConvolutionParameteriv, and GetConvolutionParameterfv.  */
	inline static public var GL_CONVOLUTION_FILTER_SCALE:Int = 32788;
/** Accepted by the {@code pname} parameter of ConvolutionParameteriv, ConvolutionParameterfv, GetConvolutionParameteriv, and GetConvolutionParameterfv.  */
	inline static public var GL_CONVOLUTION_FILTER_BIAS:Int = 32789;
/**
 * Accepted by the {@code param} parameter of ConvolutionParameteri, and ConvolutionParameterf, and by the {@code params} parameter of
 * ConvolutionParameteriv and ConvolutionParameterfv, when the {@code pname} parameter is CONVOLUTION_BORDER_MODE.
 */
	inline static public var GL_REDUCE:Int = 32790;
/** Accepted by the {@code pname} parameter of GetConvolutionParameteriv and GetConvolutionParameterfv.  */
	inline static public var GL_CONVOLUTION_FORMAT:Int = 32791;
/** Accepted by the {@code pname} parameter of GetConvolutionParameteriv and GetConvolutionParameterfv.  */
	inline static public var GL_CONVOLUTION_WIDTH:Int = 32792;
/** Accepted by the {@code pname} parameter of GetConvolutionParameteriv and GetConvolutionParameterfv.  */
	inline static public var GL_CONVOLUTION_HEIGHT:Int = 32793;
/** Accepted by the {@code pname} parameter of GetConvolutionParameteriv and GetConvolutionParameterfv.  */
	inline static public var GL_MAX_CONVOLUTION_WIDTH:Int = 32794;
/** Accepted by the {@code pname} parameter of GetConvolutionParameteriv and GetConvolutionParameterfv.  */
	inline static public var GL_MAX_CONVOLUTION_HEIGHT:Int = 32795;
/**
 * Accepted by the {@code pname} parameter of PixelTransferi, PixelTransferf, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv,
 * and GetDoublev.
 */
	inline static public var GL_POST_CONVOLUTION_RED_SCALE:Int = 32796;
/**
 * Accepted by the {@code pname} parameter of PixelTransferi, PixelTransferf, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv,
 * and GetDoublev.
 */
	inline static public var GL_POST_CONVOLUTION_GREEN_SCALE:Int = 32797;
/**
 * Accepted by the {@code pname} parameter of PixelTransferi, PixelTransferf, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv,
 * and GetDoublev.
 */
	inline static public var GL_POST_CONVOLUTION_BLUE_SCALE:Int = 32798;
/**
 * Accepted by the {@code pname} parameter of PixelTransferi, PixelTransferf, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv,
 * and GetDoublev.
 */
	inline static public var GL_POST_CONVOLUTION_ALPHA_SCALE:Int = 32799;
/**
 * Accepted by the {@code pname} parameter of PixelTransferi, PixelTransferf, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv,
 * and GetDoublev.
 */
	inline static public var GL_POST_CONVOLUTION_RED_BIAS:Int = 32800;
/**
 * Accepted by the {@code pname} parameter of PixelTransferi, PixelTransferf, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv,
 * and GetDoublev.
 */
	inline static public var GL_POST_CONVOLUTION_GREEN_BIAS:Int = 32801;
/**
 * Accepted by the {@code pname} parameter of PixelTransferi, PixelTransferf, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv,
 * and GetDoublev.
 */
	inline static public var GL_POST_CONVOLUTION_BLUE_BIAS:Int = 32802;
/**
 * Accepted by the {@code pname} parameter of PixelTransferi, PixelTransferf, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv,
 * and GetDoublev.
 */
	inline static public var GL_POST_CONVOLUTION_ALPHA_BIAS:Int = 32803;
/**
 * Accepted by the {@code param} parameter of ConvolutionParameteri, and ConvolutionParameterf, and by the {@code params} parameter of
 * ConvolutionParameteriv and ConvolutionParameterfv, when the {@code pname} parameter is CONVOLUTION_BORDER_MODE.
 */
	inline static public var GL_CONSTANT_BORDER:Int = 33105;
/**
 * Accepted by the {@code param} parameter of ConvolutionParameteri, and ConvolutionParameterf, and by the {@code params} parameter of
 * ConvolutionParameteriv and ConvolutionParameterfv, when the {@code pname} parameter is CONVOLUTION_BORDER_MODE.
 */
	inline static public var GL_REPLICATE_BORDER:Int = 33107;
/** Accepted by the {@code pname} parameter of ConvolutionParameteriv, ConvolutionParameterfv, GetConvolutionParameteriv, and GetConvolutionParameterfv.  */
	inline static public var GL_CONVOLUTION_BORDER_COLOR:Int = 33108;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_COLOR_MATRIX:Int = 32945;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_COLOR_MATRIX_STACK_DEPTH:Int = 32946;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COLOR_MATRIX_STACK_DEPTH:Int = 32947;
/** Accepted by the {@code pname} parameter of PixelTransfer*, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_POST_COLOR_MATRIX_RED_SCALE:Int = 32948;
/** Accepted by the {@code pname} parameter of PixelTransfer*, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_POST_COLOR_MATRIX_GREEN_SCALE:Int = 32949;
/** Accepted by the {@code pname} parameter of PixelTransfer*, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_POST_COLOR_MATRIX_BLUE_SCALE:Int = 32950;
/** Accepted by the {@code pname} parameter of PixelTransfer*, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_POST_COLOR_MATRIX_ALPHA_SCALE:Int = 32951;
/** Accepted by the {@code pname} parameter of PixelTransfer*, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_POST_COLOR_MATRIX_RED_BIAS:Int = 32952;
/** Accepted by the {@code pname} parameter of PixelTransfer*, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_POST_COLOR_MATRIX_GREEN_BIAS:Int = 32953;
/** Accepted by the {@code pname} parameter of PixelTransfer*, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_POST_COLOR_MATRIX_BLUE_BIAS:Int = 32954;
/** Accepted by the {@code pname} parameter of PixelTransfer*, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_POST_COLOR_MATRIX_ALPHA_BIAS:Int = 32955;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of Histogram, ResetHistogram, GetHistogram, GetHistogramParameteriv, and
 * GetHistogramParameterfv.
 */
	inline static public var GL_HISTOGRAM:Int = 32804;
/** Accepted by the {@code target} parameter of Histogram, GetHistogramParameteriv, and GetHistogramParameterfv.  */
	inline static public var GL_PROXY_HISTOGRAM:Int = 32805;
/** Accepted by the {@code pname} parameter of GetHistogramParameteriv and GetHistogramParameterfv.  */
	inline static public var GL_HISTOGRAM_WIDTH:Int = 32806;
/** Accepted by the {@code pname} parameter of GetHistogramParameteriv and GetHistogramParameterfv.  */
	inline static public var GL_HISTOGRAM_FORMAT:Int = 32807;
/** Accepted by the {@code pname} parameter of GetHistogramParameteriv and GetHistogramParameterfv.  */
	inline static public var GL_HISTOGRAM_RED_SIZE:Int = 32808;
/** Accepted by the {@code pname} parameter of GetHistogramParameteriv and GetHistogramParameterfv.  */
	inline static public var GL_HISTOGRAM_GREEN_SIZE:Int = 32809;
/** Accepted by the {@code pname} parameter of GetHistogramParameteriv and GetHistogramParameterfv.  */
	inline static public var GL_HISTOGRAM_BLUE_SIZE:Int = 32810;
/** Accepted by the {@code pname} parameter of GetHistogramParameteriv and GetHistogramParameterfv.  */
	inline static public var GL_HISTOGRAM_ALPHA_SIZE:Int = 32811;
/** Accepted by the {@code pname} parameter of GetHistogramParameteriv and GetHistogramParameterfv.  */
	inline static public var GL_HISTOGRAM_LUMINANCE_SIZE:Int = 32812;
/** Accepted by the {@code pname} parameter of GetHistogramParameteriv and GetHistogramParameterfv.  */
	inline static public var GL_HISTOGRAM_SINK:Int = 32813;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of Minmax, ResetMinmax, GetMinmax, GetMinmaxParameteriv, and GetMinmaxParameterfv.
 */
	inline static public var GL_MINMAX:Int = 32814;
/** Accepted by the {@code pname} parameter of GetMinmaxParameteriv and GetMinmaxParameterfv.  */
	inline static public var GL_MINMAX_FORMAT:Int = 32815;
/** Accepted by the {@code pname} parameter of GetMinmaxParameteriv and GetMinmaxParameterfv.  */
	inline static public var GL_MINMAX_SINK:Int = 32816;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_COLOR:Int = 32773;
/** Accepted by the {@code mode} parameter of BlendEquation.  */
	inline static public var GL_FUNC_ADD:Int = 32774;
/** Accepted by the {@code mode} parameter of BlendEquation.  */
	inline static public var GL_MIN:Int = 32775;
/** Accepted by the {@code mode} parameter of BlendEquation.  */
	inline static public var GL_MAX:Int = 32776;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_EQUATION:Int = 32777;
/** Accepted by the {@code mode} parameter of BlendEquation.  */
	inline static public var GL_FUNC_SUBTRACT:Int = 32778;
/** Accepted by the {@code mode} parameter of BlendEquation.  */
	inline static public var GL_FUNC_REVERSE_SUBTRACT:Int = 32779;
/** Function address.  */
	public var ColorTable:haxe.Int64;
/** Function address.  */
	public var CopyColorTable:haxe.Int64;
/** Function address.  */
	public var ColorTableParameteriv:haxe.Int64;
/** Function address.  */
	public var ColorTableParameterfv:haxe.Int64;
/** Function address.  */
	public var GetColorTable:haxe.Int64;
/** Function address.  */
	public var GetColorTableParameteriv:haxe.Int64;
/** Function address.  */
	public var GetColorTableParameterfv:haxe.Int64;
/** Function address.  */
	public var ColorSubTable:haxe.Int64;
/** Function address.  */
	public var CopyColorSubTable:haxe.Int64;
/** Function address.  */
	public var ConvolutionFilter1D:haxe.Int64;
/** Function address.  */
	public var ConvolutionFilter2D:haxe.Int64;
/** Function address.  */
	public var CopyConvolutionFilter1D:haxe.Int64;
/** Function address.  */
	public var CopyConvolutionFilter2D:haxe.Int64;
/** Function address.  */
	public var GetConvolutionFilter:haxe.Int64;
/** Function address.  */
	public var SeparableFilter2D:haxe.Int64;
/** Function address.  */
	public var GetSeparableFilter:haxe.Int64;
/** Function address.  */
	public var ConvolutionParameteri:haxe.Int64;
/** Function address.  */
	public var ConvolutionParameteriv:haxe.Int64;
/** Function address.  */
	public var ConvolutionParameterf:haxe.Int64;
/** Function address.  */
	public var ConvolutionParameterfv:haxe.Int64;
/** Function address.  */
	public var GetConvolutionParameteriv:haxe.Int64;
/** Function address.  */
	public var GetConvolutionParameterfv:haxe.Int64;
/** Function address.  */
	public var Histogram:haxe.Int64;
/** Function address.  */
	public var ResetHistogram:haxe.Int64;
/** Function address.  */
	public var GetHistogram:haxe.Int64;
/** Function address.  */
	public var GetHistogramParameteriv:haxe.Int64;
/** Function address.  */
	public var GetHistogramParameterfv:haxe.Int64;
/** Function address.  */
	public var Minmax:haxe.Int64;
/** Function address.  */
	public var ResetMinmax:haxe.Int64;
/** Function address.  */
	public var GetMinmax:haxe.Int64;
/** Function address.  */
	public var GetMinmaxParameteriv:haxe.Int64;
/** Function address.  */
	public var GetMinmaxParameterfv:haxe.Int64;
/** Function address.  */
	public var BlendColor:haxe.Int64;
/** Function address.  */
	public var BlendEquation:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider,fc:Bool):Void;
/**
 * Float version of {@link #glColorTableParameteriv ColorTableParameteriv}.
 *
 * @param target the color table target
 * @param pname  the parameter to set
 * @param params the parameter value
 */
/** Alternative version of: {@link #glColorTableParameterfv ColorTableParameterfv}  */
	static public function glColorTableParameterfv(target:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Specifies the scale and bias of a convolution filter.
 *
 * @param target the filter target. One of:<br>{@link #GL_CONVOLUTION_1D CONVOLUTION_1D}, {@link #GL_CONVOLUTION_2D CONVOLUTION_2D}, {@link #GL_SEPARABLE_2D SEPARABLE_2D}
 * @param pname  the parameter to set. Must be:<br>{@link #GL_CONVOLUTION_BORDER_MODE CONVOLUTION_BORDER_MODE}
 * @param param  the parameter value
 */
	static public function glConvolutionParameteri(target:Int,pname:Int,param:Int):Void;
/**
 * Float version of {@link #glConvolutionParameteri ConvolutionParameteri}
 *
 * @param target the filter target
 * @param pname  the parameter to set
 * @param param  the parameter value
 */
	static public function glConvolutionParameterf(target:Int,pname:Int,param:Float):Void;
/**
 * Defines a one-dimensional filter in exactly the manner of {@link #glConvolutionFilter1D ConvolutionFilter1D}, except that image data are taken from the framebuffer, rather than from
 * client memory.
 *
 * @param target         the convolution target. Must be:<br>{@link #GL_CONVOLUTION_1D CONVOLUTION_1D}
 * @param internalformat the filter internal format. One of:<br>{@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL30#GL_RG8 RG8}, {@link GL31#GL_RG8_SNORM RG8_SNORM}, {@link GL11#GL_R3_G3_B2 R3_G3_B2}, {@link GL11#GL_RGB4 RGB4}, {@link GL11#GL_RGB5 RGB5}, {@link GL41#GL_RGB565 RGB565}, {@link GL11#GL_RGB8 RGB8}, {@link GL31#GL_RGB8_SNORM RGB8_SNORM}, {@link GL11#GL_RGB10 RGB10}, {@link GL11#GL_RGB12 RGB12}, {@link GL11#GL_RGB16 RGB16}, {@link GL31#GL_RGB16_SNORM RGB16_SNORM}, {@link GL11#GL_RGBA2 RGBA2}, {@link GL11#GL_RGBA4 RGBA4}, {@link GL11#GL_RGB5_A1 RGB5_A1}, {@link GL11#GL_RGBA8 RGBA8}, {@link GL31#GL_RGBA8_SNORM RGBA8_SNORM}, {@link GL11#GL_RGB10_A2 RGB10_A2}, {@link GL11#GL_RGBA12 RGBA12}, {@link GL11#GL_RGBA16 RGBA16}, {@link GL31#GL_RGBA16_SNORM RGBA16_SNORM}, {@link GL21#GL_SRGB8 SRGB8}, {@link GL21#GL_SRGB8_ALPHA8 SRGB8_ALPHA8}, {@link GL30#GL_RGB16F RGB16F}, {@link GL30#GL_RGBA16F RGBA16F}, {@link GL30#GL_RGB32F RGB32F}, {@link GL30#GL_RGBA32F RGBA32F}, {@link GL30#GL_R11F_G11F_B10F R11F_G11F_B10F}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL11#GL_INTENSITY INTENSITY}, {@link GL11#GL_ALPHA4 ALPHA4}, {@link GL11#GL_ALPHA8 ALPHA8}, {@link GL11#GL_ALPHA12 ALPHA12}, {@link GL11#GL_ALPHA16 ALPHA16}, {@link GL11#GL_LUMINANCE4 LUMINANCE4}, {@link GL11#GL_LUMINANCE8 LUMINANCE8}, {@link GL11#GL_LUMINANCE12 LUMINANCE12}, {@link GL11#GL_LUMINANCE16 LUMINANCE16}, {@link GL11#GL_LUMINANCE4_ALPHA4 LUMINANCE4_ALPHA4}, {@link GL11#GL_LUMINANCE6_ALPHA2 LUMINANCE6_ALPHA2}, {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}, {@link GL11#GL_LUMINANCE12_ALPHA4 LUMINANCE12_ALPHA4}, {@link GL11#GL_LUMINANCE12_ALPHA12 LUMINANCE12_ALPHA12}, {@link GL11#GL_LUMINANCE16_ALPHA16 LUMINANCE16_ALPHA16}, {@link GL11#GL_INTENSITY4 INTENSITY4}, {@link GL11#GL_INTENSITY8 INTENSITY8}, {@link GL11#GL_INTENSITY12 INTENSITY12}, {@link GL11#GL_INTENSITY16 INTENSITY16}, {@link GL21#GL_SLUMINANCE SLUMINANCE}, {@link GL21#GL_SLUMINANCE8_ALPHA8 SLUMINANCE8_ALPHA8}
 * @param x              the left framebuffer pixel coordinate
 * @param y              the lower framebuffer pixel coordinate
 * @param width          the filter width
 */
	static public function glCopyConvolutionFilter1D(target:Int,internalformat:Int,x:Int,y:Int,width:Int):Void;
/** JNI method for {@link #glResetHistogram ResetHistogram}  */
	static public function nglResetHistogram(target:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMinmax Minmax}  */
	static public function nglMinmax(target:Int,internalformat:Int,sink:Bool,__functionAddress:haxe.Int64):Void;
/**
 * Resets all counters of all elements of the histogram table to zero.
 *
 * @param target the histogram target. Must be:<br>{@link #GL_HISTOGRAM HISTOGRAM}
 */
	static public function glResetHistogram(target:Int):Void;
/**
 * Returns the integer value of the specified color table parameter.
 *
 * @param target the color table target. One of:<br>{@link #GL_COLOR_TABLE COLOR_TABLE}, {@link #GL_POST_CONVOLUTION_COLOR_TABLE POST_CONVOLUTION_COLOR_TABLE}, {@link #GL_POST_COLOR_MATRIX_COLOR_TABLE POST_COLOR_MATRIX_COLOR_TABLE}, {@link #GL_PROXY_COLOR_TABLE PROXY_COLOR_TABLE}, {@link #GL_PROXY_POST_CONVOLUTION_COLOR_TABLE PROXY_POST_CONVOLUTION_COLOR_TABLE}, {@link #GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE PROXY_POST_COLOR_MATRIX_COLOR_TABLE}
 * @param pname  the parameter to query. One of:<br>{@link #GL_COLOR_TABLE_SCALE COLOR_TABLE_SCALE}, {@link #GL_COLOR_TABLE_BIAS COLOR_TABLE_BIAS}, {@link #GL_COLOR_TABLE_FORMAT COLOR_TABLE_FORMAT}, {@link #GL_COLOR_TABLE_WIDTH COLOR_TABLE_WIDTH}, {@link #GL_COLOR_TABLE_RED_SIZE COLOR_TABLE_RED_SIZE}, {@link #GL_COLOR_TABLE_GREEN_SIZE COLOR_TABLE_GREEN_SIZE}, {@link #GL_COLOR_TABLE_BLUE_SIZE COLOR_TABLE_BLUE_SIZE}, {@link #GL_COLOR_TABLE_ALPHA_SIZE COLOR_TABLE_ALPHA_SIZE}, {@link #GL_COLOR_TABLE_LUMINANCE_SIZE COLOR_TABLE_LUMINANCE_SIZE}, {@link #GL_COLOR_TABLE_INTENSITY_SIZE COLOR_TABLE_INTENSITY_SIZE}
 * @param params a buffer in which to place the returned value
 */
/** Alternative version of: {@link #glGetColorTableParameteriv GetColorTableParameteriv}  */
	static public function glGetColorTableParameteriv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetHistogramParameterfv GetHistogramParameterfv}  */
/** JNI method for {@link #glGetHistogramParameterfv GetHistogramParameterfv}  */
	static public function nglGetHistogramParameterfv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glColorTableParameteriv ColorTableParameteriv}  */
/** JNI method for {@link #glColorTableParameteriv ColorTableParameteriv}  */
	static public function nglColorTableParameteriv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * Returns the integer values of the specified histogram parameter
 *
 * @param target the histogram target. Must be:<br>{@link #GL_HISTOGRAM HISTOGRAM}
 * @param pname  the parameter to query. One of:<br>{@link #GL_HISTOGRAM_WIDTH HISTOGRAM_WIDTH}, {@link #GL_HISTOGRAM_FORMAT HISTOGRAM_FORMAT}, {@link #GL_HISTOGRAM_RED_SIZE HISTOGRAM_RED_SIZE}, {@link #GL_HISTOGRAM_GREEN_SIZE HISTOGRAM_GREEN_SIZE}, {@link #GL_HISTOGRAM_BLUE_SIZE HISTOGRAM_BLUE_SIZE}, {@link #GL_HISTOGRAM_ALPHA_SIZE HISTOGRAM_ALPHA_SIZE}, {@link #GL_HISTOGRAM_LUMINANCE_SIZE HISTOGRAM_LUMINANCE_SIZE}, {@link #GL_HISTOGRAM_SINK HISTOGRAM_SINK}
 * @param params a buffer in which to return the parameter values
 */
/** Alternative version of: {@link #glGetHistogramParameteriv GetHistogramParameteriv}  */
	static public function glGetHistogramParameteriv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Specifies the minmax table.
 *
 * @param target         the minmax target. Must be:<br>{@link #GL_MINMAX MINMAX}
 * @param internalformat the minmax table internal format. One of:<br>{@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL30#GL_RG8 RG8}, {@link GL31#GL_RG8_SNORM RG8_SNORM}, {@link GL11#GL_R3_G3_B2 R3_G3_B2}, {@link GL11#GL_RGB4 RGB4}, {@link GL11#GL_RGB5 RGB5}, {@link GL41#GL_RGB565 RGB565}, {@link GL11#GL_RGB8 RGB8}, {@link GL31#GL_RGB8_SNORM RGB8_SNORM}, {@link GL11#GL_RGB10 RGB10}, {@link GL11#GL_RGB12 RGB12}, {@link GL11#GL_RGB16 RGB16}, {@link GL31#GL_RGB16_SNORM RGB16_SNORM}, {@link GL11#GL_RGBA2 RGBA2}, {@link GL11#GL_RGBA4 RGBA4}, {@link GL11#GL_RGB5_A1 RGB5_A1}, {@link GL11#GL_RGBA8 RGBA8}, {@link GL31#GL_RGBA8_SNORM RGBA8_SNORM}, {@link GL11#GL_RGB10_A2 RGB10_A2}, {@link GL11#GL_RGBA12 RGBA12}, {@link GL11#GL_RGBA16 RGBA16}, {@link GL31#GL_RGBA16_SNORM RGBA16_SNORM}, {@link GL21#GL_SRGB8 SRGB8}, {@link GL21#GL_SRGB8_ALPHA8 SRGB8_ALPHA8}, {@link GL30#GL_RGB16F RGB16F}, {@link GL30#GL_RGBA16F RGBA16F}, {@link GL30#GL_RGB32F RGB32F}, {@link GL30#GL_RGBA32F RGBA32F}, {@link GL30#GL_R11F_G11F_B10F R11F_G11F_B10F}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL11#GL_INTENSITY INTENSITY}, {@link GL11#GL_ALPHA4 ALPHA4}, {@link GL11#GL_ALPHA8 ALPHA8}, {@link GL11#GL_ALPHA12 ALPHA12}, {@link GL11#GL_ALPHA16 ALPHA16}, {@link GL11#GL_LUMINANCE4 LUMINANCE4}, {@link GL11#GL_LUMINANCE8 LUMINANCE8}, {@link GL11#GL_LUMINANCE12 LUMINANCE12}, {@link GL11#GL_LUMINANCE16 LUMINANCE16}, {@link GL11#GL_LUMINANCE4_ALPHA4 LUMINANCE4_ALPHA4}, {@link GL11#GL_LUMINANCE6_ALPHA2 LUMINANCE6_ALPHA2}, {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}, {@link GL11#GL_LUMINANCE12_ALPHA4 LUMINANCE12_ALPHA4}, {@link GL11#GL_LUMINANCE12_ALPHA12 LUMINANCE12_ALPHA12}, {@link GL11#GL_LUMINANCE16_ALPHA16 LUMINANCE16_ALPHA16}, {@link GL11#GL_INTENSITY4 INTENSITY4}, {@link GL11#GL_INTENSITY8 INTENSITY8}, {@link GL11#GL_INTENSITY12 INTENSITY12}, {@link GL11#GL_INTENSITY16 INTENSITY16}, {@link GL21#GL_SLUMINANCE SLUMINANCE}, {@link GL21#GL_SLUMINANCE8_ALPHA8 SLUMINANCE8_ALPHA8}
 * @param sink           whether pixel groups will be consumed by the minmax operation ({@link GL11#GL_TRUE TRUE}) or passed on to final conversion ({@link GL11#GL_FALSE FALSE})
 */
	static public function glMinmax(target:Int,internalformat:Int,sink:Bool):Void;
/** Unsafe version of {@link #glGetSeparableFilter GetSeparableFilter}  */
/** JNI method for {@link #glGetSeparableFilter GetSeparableFilter}  */
	static public function nglGetSeparableFilter(target:Int,format:Int,type:Int,row:haxe.Int64,column:haxe.Int64,span:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,format:Int,type:Int,row:haxe.Int64,column:haxe.Int64,span:haxe.Int64):Void {})
/** Unsafe version of {@link #glColorTable ColorTable}  */
/** JNI method for {@link #glColorTable ColorTable}  */
	static public function nglColorTable(target:Int,internalformat:Int,width:Int,format:Int,type:Int,table:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,internalformat:Int,width:Int,format:Int,type:Int,table:haxe.Int64):Void {})
/**
 * Returns the integer value of the specified minmax parameter.
 *
 * @param target the minmax target. Must be:<br>{@link #GL_MINMAX MINMAX}
 * @param pname  the parameter to query
 * @param params a buffer in which to place the returned value
 */
/** Alternative version of: {@link #glGetMinmaxParameteriv GetMinmaxParameteriv}  */
	static public function glGetMinmaxParameteriv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glCopyConvolutionFilter2D CopyConvolutionFilter2D}  */
	static public function nglCopyConvolutionFilter2D(target:Int,internalformat:Int,x:Int,y:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/**
 * Respecifies a portion of an existing color table using image taken from the framebuffer.
 *
 * @param target the color table target. One of:<br>{@link #GL_COLOR_TABLE COLOR_TABLE}, {@link #GL_POST_CONVOLUTION_COLOR_TABLE POST_CONVOLUTION_COLOR_TABLE}, {@link #GL_POST_COLOR_MATRIX_COLOR_TABLE POST_COLOR_MATRIX_COLOR_TABLE}
 * @param start  the start index of the subregion to respecify
 * @param x      the left framebuffer pixel coordinate
 * @param y      the lower framebuffer pixel coordinate
 * @param width  the number of colors in the subregion to respecify
 */
	static public function glCopyColorSubTable(target:Int,start:Int,x:Int,y:Int,width:Int):Void;
/** Unsafe version of {@link #glSeparableFilter2D SeparableFilter2D}  */
/** JNI method for {@link #glSeparableFilter2D SeparableFilter2D}  */
	static public function nglSeparableFilter2D(target:Int,internalformat:Int,width:Int,height:Int,format:Int,type:Int,row:haxe.Int64,column:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,internalformat:Int,width:Int,height:Int,format:Int,type:Int,row:haxe.Int64,column:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetMinmaxParameteriv GetMinmaxParameteriv}  */
	static public function glGetMinmaxParameteri(target:Int,pname:Int):Int;
/** Single return value version of: {@link #glGetMinmaxParameterfv GetMinmaxParameterfv}  */
	static public function glGetMinmaxParameterf(target:Int,pname:Int):Float;
/** Unsafe version of {@link #glGetColorTableParameteriv GetColorTableParameteriv}  */
/** JNI method for {@link #glGetColorTableParameteriv GetColorTableParameteriv}  */
	static public function nglGetColorTableParameteriv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glGetConvolutionFilter GetConvolutionFilter}  */
/**
 * Returns the contents of a convolution filter.
 *
 * @param target the convolution target. One of:<br>{@link #GL_CONVOLUTION_1D CONVOLUTION_1D}, {@link #GL_CONVOLUTION_2D CONVOLUTION_2D}
 * @param format the filter data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type   the filter data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param image  the filter data
 */
	static public function glGetConvolutionFilter(target:Int,format:Int,type:Int,image:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,format:Int,type:Int,imageOffset:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glSeparableFilter2D SeparableFilter2D}  */
/** Buffer object offset version of: {@link #glSeparableFilter2D SeparableFilter2D}  */
/**
 * Specifies a two-dimensional separable convolution filter.
 *
 * @param target         the filter target. Must be:<br>{@link #GL_SEPARABLE_2D SEPARABLE_2D}
 * @param internalformat the filter internal format. One of:<br>{@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL30#GL_RG8 RG8}, {@link GL31#GL_RG8_SNORM RG8_SNORM}, {@link GL11#GL_R3_G3_B2 R3_G3_B2}, {@link GL11#GL_RGB4 RGB4}, {@link GL11#GL_RGB5 RGB5}, {@link GL41#GL_RGB565 RGB565}, {@link GL11#GL_RGB8 RGB8}, {@link GL31#GL_RGB8_SNORM RGB8_SNORM}, {@link GL11#GL_RGB10 RGB10}, {@link GL11#GL_RGB12 RGB12}, {@link GL11#GL_RGB16 RGB16}, {@link GL31#GL_RGB16_SNORM RGB16_SNORM}, {@link GL11#GL_RGBA2 RGBA2}, {@link GL11#GL_RGBA4 RGBA4}, {@link GL11#GL_RGB5_A1 RGB5_A1}, {@link GL11#GL_RGBA8 RGBA8}, {@link GL31#GL_RGBA8_SNORM RGBA8_SNORM}, {@link GL11#GL_RGB10_A2 RGB10_A2}, {@link GL11#GL_RGBA12 RGBA12}, {@link GL11#GL_RGBA16 RGBA16}, {@link GL31#GL_RGBA16_SNORM RGBA16_SNORM}, {@link GL21#GL_SRGB8 SRGB8}, {@link GL21#GL_SRGB8_ALPHA8 SRGB8_ALPHA8}, {@link GL30#GL_RGB16F RGB16F}, {@link GL30#GL_RGBA16F RGBA16F}, {@link GL30#GL_RGB32F RGB32F}, {@link GL30#GL_RGBA32F RGBA32F}, {@link GL30#GL_R11F_G11F_B10F R11F_G11F_B10F}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL11#GL_INTENSITY INTENSITY}, {@link GL11#GL_ALPHA4 ALPHA4}, {@link GL11#GL_ALPHA8 ALPHA8}, {@link GL11#GL_ALPHA12 ALPHA12}, {@link GL11#GL_ALPHA16 ALPHA16}, {@link GL11#GL_LUMINANCE4 LUMINANCE4}, {@link GL11#GL_LUMINANCE8 LUMINANCE8}, {@link GL11#GL_LUMINANCE12 LUMINANCE12}, {@link GL11#GL_LUMINANCE16 LUMINANCE16}, {@link GL11#GL_LUMINANCE4_ALPHA4 LUMINANCE4_ALPHA4}, {@link GL11#GL_LUMINANCE6_ALPHA2 LUMINANCE6_ALPHA2}, {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}, {@link GL11#GL_LUMINANCE12_ALPHA4 LUMINANCE12_ALPHA4}, {@link GL11#GL_LUMINANCE12_ALPHA12 LUMINANCE12_ALPHA12}, {@link GL11#GL_LUMINANCE16_ALPHA16 LUMINANCE16_ALPHA16}, {@link GL11#GL_INTENSITY4 INTENSITY4}, {@link GL11#GL_INTENSITY8 INTENSITY8}, {@link GL11#GL_INTENSITY12 INTENSITY12}, {@link GL11#GL_INTENSITY16 INTENSITY16}, {@link GL21#GL_SLUMINANCE SLUMINANCE}, {@link GL21#GL_SLUMINANCE8_ALPHA8 SLUMINANCE8_ALPHA8}
 * @param width          the filter width
 * @param height         the filter height
 * @param format         the filter data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type           the filter data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param row            the horizontal filter data
 * @param column         the vertical filter data
 */
	static public function glSeparableFilter2D(target:Int,internalformat:Int,width:Int,height:Int,format:Int,type:Int,row:java.nio.ByteBuffer,column:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,width:Int,height:Int,format:Int,type:Int,rowOffset:haxe.Int64,column:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,width:Int,height:Int,format:Int,type:Int,row:java.nio.ByteBuffer,columnOffset:haxe.Int64):Void {})
/**
 * Defines a two-dimensional filter in exactly the manner of {@link #glConvolutionFilter1D ConvolutionFilter1D}, except that image data are taken from the framebuffer, rather than from
 * client memory.
 *
 * @param target         the convolution target. Must be:<br>{@link #GL_CONVOLUTION_2D CONVOLUTION_2D}
 * @param internalformat the filter internal format. One of:<br>{@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL30#GL_RG8 RG8}, {@link GL31#GL_RG8_SNORM RG8_SNORM}, {@link GL11#GL_R3_G3_B2 R3_G3_B2}, {@link GL11#GL_RGB4 RGB4}, {@link GL11#GL_RGB5 RGB5}, {@link GL41#GL_RGB565 RGB565}, {@link GL11#GL_RGB8 RGB8}, {@link GL31#GL_RGB8_SNORM RGB8_SNORM}, {@link GL11#GL_RGB10 RGB10}, {@link GL11#GL_RGB12 RGB12}, {@link GL11#GL_RGB16 RGB16}, {@link GL31#GL_RGB16_SNORM RGB16_SNORM}, {@link GL11#GL_RGBA2 RGBA2}, {@link GL11#GL_RGBA4 RGBA4}, {@link GL11#GL_RGB5_A1 RGB5_A1}, {@link GL11#GL_RGBA8 RGBA8}, {@link GL31#GL_RGBA8_SNORM RGBA8_SNORM}, {@link GL11#GL_RGB10_A2 RGB10_A2}, {@link GL11#GL_RGBA12 RGBA12}, {@link GL11#GL_RGBA16 RGBA16}, {@link GL31#GL_RGBA16_SNORM RGBA16_SNORM}, {@link GL21#GL_SRGB8 SRGB8}, {@link GL21#GL_SRGB8_ALPHA8 SRGB8_ALPHA8}, {@link GL30#GL_RGB16F RGB16F}, {@link GL30#GL_RGBA16F RGBA16F}, {@link GL30#GL_RGB32F RGB32F}, {@link GL30#GL_RGBA32F RGBA32F}, {@link GL30#GL_R11F_G11F_B10F R11F_G11F_B10F}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL11#GL_INTENSITY INTENSITY}, {@link GL11#GL_ALPHA4 ALPHA4}, {@link GL11#GL_ALPHA8 ALPHA8}, {@link GL11#GL_ALPHA12 ALPHA12}, {@link GL11#GL_ALPHA16 ALPHA16}, {@link GL11#GL_LUMINANCE4 LUMINANCE4}, {@link GL11#GL_LUMINANCE8 LUMINANCE8}, {@link GL11#GL_LUMINANCE12 LUMINANCE12}, {@link GL11#GL_LUMINANCE16 LUMINANCE16}, {@link GL11#GL_LUMINANCE4_ALPHA4 LUMINANCE4_ALPHA4}, {@link GL11#GL_LUMINANCE6_ALPHA2 LUMINANCE6_ALPHA2}, {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}, {@link GL11#GL_LUMINANCE12_ALPHA4 LUMINANCE12_ALPHA4}, {@link GL11#GL_LUMINANCE12_ALPHA12 LUMINANCE12_ALPHA12}, {@link GL11#GL_LUMINANCE16_ALPHA16 LUMINANCE16_ALPHA16}, {@link GL11#GL_INTENSITY4 INTENSITY4}, {@link GL11#GL_INTENSITY8 INTENSITY8}, {@link GL11#GL_INTENSITY12 INTENSITY12}, {@link GL11#GL_INTENSITY16 INTENSITY16}, {@link GL21#GL_SLUMINANCE SLUMINANCE}, {@link GL21#GL_SLUMINANCE8_ALPHA8 SLUMINANCE8_ALPHA8}
 * @param x              the left framebuffer pixel coordinate
 * @param y              the lower framebuffer pixel coordinate
 * @param width          the filter width
 * @param height         the filter height
 */
	static public function glCopyConvolutionFilter2D(target:Int,internalformat:Int,x:Int,y:Int,width:Int,height:Int):Void;
/** Buffer object offset version of: {@link #glGetSeparableFilter GetSeparableFilter}  */
/** Buffer object offset version of: {@link #glGetSeparableFilter GetSeparableFilter}  */
/**
 * Returns the current contents of a separable convolution filter.
 *
 * @param target the filter target. Must be:<br>{@link #GL_SEPARABLE_2D SEPARABLE_2D}
 * @param format the filter data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type   the filter data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param row    a buffer in which to return the filter row
 * @param column a buffer in which to return the filter column
 * @param span   unused
 */
	static public function glGetSeparableFilter(target:Int,format:Int,type:Int,row:java.nio.ByteBuffer,column:java.nio.ByteBuffer,span:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,format:Int,type:Int,rowOffset:haxe.Int64,column:java.nio.ByteBuffer,span:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,format:Int,type:Int,row:java.nio.ByteBuffer,columnOffset:haxe.Int64,span:java.nio.ByteBuffer):Void {})
/**
 * Specifies the scale and bias parameters for a color table.
 *
 * @param target the color table target. One of:<br>{@link #GL_COLOR_TABLE COLOR_TABLE}, {@link #GL_POST_CONVOLUTION_COLOR_TABLE POST_CONVOLUTION_COLOR_TABLE}, {@link #GL_POST_COLOR_MATRIX_COLOR_TABLE POST_COLOR_MATRIX_COLOR_TABLE}
 * @param pname  the parameter to set. One of:<br>{@link #GL_COLOR_TABLE_SCALE COLOR_TABLE_SCALE}, {@link #GL_COLOR_TABLE_BIAS COLOR_TABLE_BIAS}
 * @param params the parameter value
 */
/** Alternative version of: {@link #glColorTableParameteriv ColorTableParameteriv}  */
	static public function glColorTableParameteriv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glColorTableParameterfv ColorTableParameterfv}  */
/** JNI method for {@link #glColorTableParameterfv ColorTableParameterfv}  */
	static public function nglColorTableParameterfv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetColorTable GetColorTable}  */
/** JNI method for {@link #glGetColorTable GetColorTable}  */
	static public function nglGetColorTable(target:Int,format:Int,type:Int,table:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,format:Int,type:Int,table:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glColorSubTable ColorSubTable}  */
/**
 * Respecifies a portion of an existing color table.
 *
 * @param target the color table target. One of:<br>{@link #GL_COLOR_TABLE COLOR_TABLE}, {@link #GL_POST_CONVOLUTION_COLOR_TABLE POST_CONVOLUTION_COLOR_TABLE}, {@link #GL_POST_COLOR_MATRIX_COLOR_TABLE POST_COLOR_MATRIX_COLOR_TABLE}
 * @param start  the starting index of the subregion to respecify
 * @param count  the number of colors in the subregion to respecify
 * @param format the color data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type   the color data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param data   the color table data
 */
	static public function glColorSubTable(target:Int,start:Int,count:Int,format:Int,type:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,start:Int,count:Int,format:Int,type:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetMinmaxParameterfv GetMinmaxParameterfv}  */
/** JNI method for {@link #glGetMinmaxParameterfv GetMinmaxParameterfv}  */
	static public function nglGetMinmaxParameterfv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glCopyConvolutionFilter1D CopyConvolutionFilter1D}  */
	static public function nglCopyConvolutionFilter1D(target:Int,internalformat:Int,x:Int,y:Int,width:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glColorSubTable ColorSubTable}  */
/** JNI method for {@link #glColorSubTable ColorSubTable}  */
	static public function nglColorSubTable(target:Int,start:Int,count:Int,format:Int,type:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,start:Int,count:Int,format:Int,type:Int,data:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glConvolutionParameteri ConvolutionParameteri}.
 *
 * @param target the filter target
 * @param pname  the parameter to set. One of:<br>{@link #GL_CONVOLUTION_FILTER_SCALE CONVOLUTION_FILTER_SCALE}, {@link #GL_CONVOLUTION_FILTER_BIAS CONVOLUTION_FILTER_BIAS}, {@link #GL_CONVOLUTION_BORDER_COLOR CONVOLUTION_BORDER_COLOR}
 * @param params the parameter value
 */
/** Alternative version of: {@link #glConvolutionParameteriv ConvolutionParameteriv}  */
	static public function glConvolutionParameteriv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Returns the value of a convolution filter parameter.
 *
 * @param target the filter target. One of:<br>{@link #GL_CONVOLUTION_1D CONVOLUTION_1D}, {@link #GL_CONVOLUTION_2D CONVOLUTION_2D}, {@link #GL_SEPARABLE_2D SEPARABLE_2D}
 * @param pname  the parameter to query. One of:<br>{@link #GL_CONVOLUTION_FORMAT CONVOLUTION_FORMAT}, {@link #GL_CONVOLUTION_WIDTH CONVOLUTION_WIDTH}, {@link #GL_CONVOLUTION_HEIGHT CONVOLUTION_HEIGHT}, {@link #GL_MAX_CONVOLUTION_WIDTH MAX_CONVOLUTION_WIDTH}, {@link #GL_MAX_CONVOLUTION_HEIGHT MAX_CONVOLUTION_HEIGHT}
 * @param params a buffer in which to return the parameter value
 */
/** Alternative version of: {@link #glGetConvolutionParameteriv GetConvolutionParameteriv}  */
	static public function glGetConvolutionParameteriv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Specifies the histogram table.
 *
 * @param target         the histogram target. One of:<br>{@link #GL_HISTOGRAM HISTOGRAM}, {@link #GL_PROXY_HISTOGRAM PROXY_HISTOGRAM}
 * @param width          the histogram width
 * @param internalformat the histogram internal format. One of:<br>{@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL30#GL_RG8 RG8}, {@link GL31#GL_RG8_SNORM RG8_SNORM}, {@link GL11#GL_R3_G3_B2 R3_G3_B2}, {@link GL11#GL_RGB4 RGB4}, {@link GL11#GL_RGB5 RGB5}, {@link GL41#GL_RGB565 RGB565}, {@link GL11#GL_RGB8 RGB8}, {@link GL31#GL_RGB8_SNORM RGB8_SNORM}, {@link GL11#GL_RGB10 RGB10}, {@link GL11#GL_RGB12 RGB12}, {@link GL11#GL_RGB16 RGB16}, {@link GL31#GL_RGB16_SNORM RGB16_SNORM}, {@link GL11#GL_RGBA2 RGBA2}, {@link GL11#GL_RGBA4 RGBA4}, {@link GL11#GL_RGB5_A1 RGB5_A1}, {@link GL11#GL_RGBA8 RGBA8}, {@link GL31#GL_RGBA8_SNORM RGBA8_SNORM}, {@link GL11#GL_RGB10_A2 RGB10_A2}, {@link GL11#GL_RGBA12 RGBA12}, {@link GL11#GL_RGBA16 RGBA16}, {@link GL31#GL_RGBA16_SNORM RGBA16_SNORM}, {@link GL21#GL_SRGB8 SRGB8}, {@link GL21#GL_SRGB8_ALPHA8 SRGB8_ALPHA8}, {@link GL30#GL_RGB16F RGB16F}, {@link GL30#GL_RGBA16F RGBA16F}, {@link GL30#GL_RGB32F RGB32F}, {@link GL30#GL_RGBA32F RGBA32F}, {@link GL30#GL_R11F_G11F_B10F R11F_G11F_B10F}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL11#GL_INTENSITY INTENSITY}, {@link GL11#GL_ALPHA4 ALPHA4}, {@link GL11#GL_ALPHA8 ALPHA8}, {@link GL11#GL_ALPHA12 ALPHA12}, {@link GL11#GL_ALPHA16 ALPHA16}, {@link GL11#GL_LUMINANCE4 LUMINANCE4}, {@link GL11#GL_LUMINANCE8 LUMINANCE8}, {@link GL11#GL_LUMINANCE12 LUMINANCE12}, {@link GL11#GL_LUMINANCE16 LUMINANCE16}, {@link GL11#GL_LUMINANCE4_ALPHA4 LUMINANCE4_ALPHA4}, {@link GL11#GL_LUMINANCE6_ALPHA2 LUMINANCE6_ALPHA2}, {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}, {@link GL11#GL_LUMINANCE12_ALPHA4 LUMINANCE12_ALPHA4}, {@link GL11#GL_LUMINANCE12_ALPHA12 LUMINANCE12_ALPHA12}, {@link GL11#GL_LUMINANCE16_ALPHA16 LUMINANCE16_ALPHA16}, {@link GL11#GL_INTENSITY4 INTENSITY4}, {@link GL11#GL_INTENSITY8 INTENSITY8}, {@link GL11#GL_INTENSITY12 INTENSITY12}, {@link GL11#GL_INTENSITY16 INTENSITY16}, {@link GL21#GL_SLUMINANCE SLUMINANCE}, {@link GL21#GL_SLUMINANCE8_ALPHA8 SLUMINANCE8_ALPHA8}
 * @param sink           whether pixel groups will be consumed by the histogram operation ({@link GL11#GL_TRUE TRUE}) or passed on to the minmax operation ({@link GL11#GL_FALSE FALSE})
 */
	static public function glHistogram(target:Int,width:Int,internalformat:Int,sink:Bool):Void;
/** Buffer object offset version of: {@link #glGetHistogram GetHistogram}  */
/**
 * Returns the current contents of the histogram table.
 *
 * @param target the histogram target. Must be:<br>{@link #GL_HISTOGRAM HISTOGRAM}
 * @param reset  if {@link GL11#GL_TRUE TRUE}, then all counters of all elements of the histogram are reset to zero. Counters are reset whether returned or not.
 * @param format the pixel data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type   the pixel data types. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param values the pixel data
 */
	static public function glGetHistogram(target:Int,reset:Bool,format:Int,type:Int,values:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,reset:Bool,format:Int,type:Int,valuesOffset:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glConvolutionFilter2D ConvolutionFilter2D}  */
/**
 * Defines a two-dimensional convolution filter.
 *
 * @param target         the convolution target. Must be:<br>{@link #GL_CONVOLUTION_2D CONVOLUTION_2D}
 * @param internalformat the filter internal format. One of:<br>{@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL30#GL_RG8 RG8}, {@link GL31#GL_RG8_SNORM RG8_SNORM}, {@link GL11#GL_R3_G3_B2 R3_G3_B2}, {@link GL11#GL_RGB4 RGB4}, {@link GL11#GL_RGB5 RGB5}, {@link GL41#GL_RGB565 RGB565}, {@link GL11#GL_RGB8 RGB8}, {@link GL31#GL_RGB8_SNORM RGB8_SNORM}, {@link GL11#GL_RGB10 RGB10}, {@link GL11#GL_RGB12 RGB12}, {@link GL11#GL_RGB16 RGB16}, {@link GL31#GL_RGB16_SNORM RGB16_SNORM}, {@link GL11#GL_RGBA2 RGBA2}, {@link GL11#GL_RGBA4 RGBA4}, {@link GL11#GL_RGB5_A1 RGB5_A1}, {@link GL11#GL_RGBA8 RGBA8}, {@link GL31#GL_RGBA8_SNORM RGBA8_SNORM}, {@link GL11#GL_RGB10_A2 RGB10_A2}, {@link GL11#GL_RGBA12 RGBA12}, {@link GL11#GL_RGBA16 RGBA16}, {@link GL31#GL_RGBA16_SNORM RGBA16_SNORM}, {@link GL21#GL_SRGB8 SRGB8}, {@link GL21#GL_SRGB8_ALPHA8 SRGB8_ALPHA8}, {@link GL30#GL_RGB16F RGB16F}, {@link GL30#GL_RGBA16F RGBA16F}, {@link GL30#GL_RGB32F RGB32F}, {@link GL30#GL_RGBA32F RGBA32F}, {@link GL30#GL_R11F_G11F_B10F R11F_G11F_B10F}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL11#GL_INTENSITY INTENSITY}, {@link GL11#GL_ALPHA4 ALPHA4}, {@link GL11#GL_ALPHA8 ALPHA8}, {@link GL11#GL_ALPHA12 ALPHA12}, {@link GL11#GL_ALPHA16 ALPHA16}, {@link GL11#GL_LUMINANCE4 LUMINANCE4}, {@link GL11#GL_LUMINANCE8 LUMINANCE8}, {@link GL11#GL_LUMINANCE12 LUMINANCE12}, {@link GL11#GL_LUMINANCE16 LUMINANCE16}, {@link GL11#GL_LUMINANCE4_ALPHA4 LUMINANCE4_ALPHA4}, {@link GL11#GL_LUMINANCE6_ALPHA2 LUMINANCE6_ALPHA2}, {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}, {@link GL11#GL_LUMINANCE12_ALPHA4 LUMINANCE12_ALPHA4}, {@link GL11#GL_LUMINANCE12_ALPHA12 LUMINANCE12_ALPHA12}, {@link GL11#GL_LUMINANCE16_ALPHA16 LUMINANCE16_ALPHA16}, {@link GL11#GL_INTENSITY4 INTENSITY4}, {@link GL11#GL_INTENSITY8 INTENSITY8}, {@link GL11#GL_INTENSITY12 INTENSITY12}, {@link GL11#GL_INTENSITY16 INTENSITY16}, {@link GL21#GL_SLUMINANCE SLUMINANCE}, {@link GL21#GL_SLUMINANCE8_ALPHA8 SLUMINANCE8_ALPHA8}
 * @param width          the filter width
 * @param height         the filter height
 * @param format         the filter data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type           the filter data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param data           the filter data
 */
	static public function glConvolutionFilter2D(target:Int,internalformat:Int,width:Int,height:Int,format:Int,type:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,width:Int,height:Int,format:Int,type:Int,dataOffset:haxe.Int64):Void {})
/**
 * Defines a color table in exactly the manner of {@link #glColorTable ColorTable}, except that the image data are taken from the framebuffer rather than from client memory.
 *
 * @param target         the color table target. One of:<br>{@link #GL_COLOR_TABLE COLOR_TABLE}, {@link #GL_POST_CONVOLUTION_COLOR_TABLE POST_CONVOLUTION_COLOR_TABLE}, {@link #GL_POST_COLOR_MATRIX_COLOR_TABLE POST_COLOR_MATRIX_COLOR_TABLE}
 * @param internalformat the color table internal format. One of:<br>{@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL30#GL_RG8 RG8}, {@link GL31#GL_RG8_SNORM RG8_SNORM}, {@link GL11#GL_R3_G3_B2 R3_G3_B2}, {@link GL11#GL_RGB4 RGB4}, {@link GL11#GL_RGB5 RGB5}, {@link GL41#GL_RGB565 RGB565}, {@link GL11#GL_RGB8 RGB8}, {@link GL31#GL_RGB8_SNORM RGB8_SNORM}, {@link GL11#GL_RGB10 RGB10}, {@link GL11#GL_RGB12 RGB12}, {@link GL11#GL_RGB16 RGB16}, {@link GL31#GL_RGB16_SNORM RGB16_SNORM}, {@link GL11#GL_RGBA2 RGBA2}, {@link GL11#GL_RGBA4 RGBA4}, {@link GL11#GL_RGB5_A1 RGB5_A1}, {@link GL11#GL_RGBA8 RGBA8}, {@link GL31#GL_RGBA8_SNORM RGBA8_SNORM}, {@link GL11#GL_RGB10_A2 RGB10_A2}, {@link GL11#GL_RGBA12 RGBA12}, {@link GL11#GL_RGBA16 RGBA16}, {@link GL31#GL_RGBA16_SNORM RGBA16_SNORM}, {@link GL21#GL_SRGB8 SRGB8}, {@link GL21#GL_SRGB8_ALPHA8 SRGB8_ALPHA8}, {@link GL30#GL_RGB16F RGB16F}, {@link GL30#GL_RGBA16F RGBA16F}, {@link GL30#GL_RGB32F RGB32F}, {@link GL30#GL_RGBA32F RGBA32F}, {@link GL30#GL_R11F_G11F_B10F R11F_G11F_B10F}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL11#GL_INTENSITY INTENSITY}, {@link GL11#GL_ALPHA4 ALPHA4}, {@link GL11#GL_ALPHA8 ALPHA8}, {@link GL11#GL_ALPHA12 ALPHA12}, {@link GL11#GL_ALPHA16 ALPHA16}, {@link GL11#GL_LUMINANCE4 LUMINANCE4}, {@link GL11#GL_LUMINANCE8 LUMINANCE8}, {@link GL11#GL_LUMINANCE12 LUMINANCE12}, {@link GL11#GL_LUMINANCE16 LUMINANCE16}, {@link GL11#GL_LUMINANCE4_ALPHA4 LUMINANCE4_ALPHA4}, {@link GL11#GL_LUMINANCE6_ALPHA2 LUMINANCE6_ALPHA2}, {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}, {@link GL11#GL_LUMINANCE12_ALPHA4 LUMINANCE12_ALPHA4}, {@link GL11#GL_LUMINANCE12_ALPHA12 LUMINANCE12_ALPHA12}, {@link GL11#GL_LUMINANCE16_ALPHA16 LUMINANCE16_ALPHA16}, {@link GL11#GL_INTENSITY4 INTENSITY4}, {@link GL11#GL_INTENSITY8 INTENSITY8}, {@link GL11#GL_INTENSITY12 INTENSITY12}, {@link GL11#GL_INTENSITY16 INTENSITY16}, {@link GL21#GL_SLUMINANCE SLUMINANCE}, {@link GL21#GL_SLUMINANCE8_ALPHA8 SLUMINANCE8_ALPHA8}
 * @param x              the left framebuffer pixel coordinate
 * @param y              the lower framebuffer pixel coordinate
 * @param width          the color table width
 */
	static public function glCopyColorTable(target:Int,internalformat:Int,x:Int,y:Int,width:Int):Void;
/** Unsafe version of {@link #glGetConvolutionFilter GetConvolutionFilter}  */
/** JNI method for {@link #glGetConvolutionFilter GetConvolutionFilter}  */
	static public function nglGetConvolutionFilter(target:Int,format:Int,type:Int,image:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,format:Int,type:Int,image:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetColorTableParameterfv GetColorTableParameterfv}  */
/** JNI method for {@link #glGetColorTableParameterfv GetColorTableParameterfv}  */
	static public function nglGetColorTableParameterfv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetConvolutionParameterfv GetConvolutionParameterfv}  */
/** JNI method for {@link #glGetConvolutionParameterfv GetConvolutionParameterfv}  */
	static public function nglGetConvolutionParameterfv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * Float version of {@link #glGetConvolutionParameteriv GetConvolutionParameteriv}.
 *
 * @param target the filter target
 * @param pname  the parameter to query
 * @param params a buffer in which to return the parameter value
 */
/** Alternative version of: {@link #glGetConvolutionParameterfv GetConvolutionParameterfv}  */
	static public function glGetConvolutionParameterfv(target:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Controls the blend equations used for per-fragment blending.
 *
 * @param mode the blend equation. One of:<br>{@link #GL_FUNC_ADD FUNC_ADD}, {@link #GL_FUNC_SUBTRACT FUNC_SUBTRACT}, {@link #GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link #GL_MIN MIN}, {@link #GL_MAX MAX}
 */
	static public function glBlendEquation(mode:Int):Void;
/** Unsafe version of {@link #glConvolutionFilter1D ConvolutionFilter1D}  */
/** JNI method for {@link #glConvolutionFilter1D ConvolutionFilter1D}  */
	static public function nglConvolutionFilter1D(target:Int,internalformat:Int,width:Int,format:Int,type:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,internalformat:Int,width:Int,format:Int,type:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glConvolutionParameteriv ConvolutionParameteriv}  */
/** JNI method for {@link #glConvolutionParameteriv ConvolutionParameteriv}  */
	static public function nglConvolutionParameteriv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glCopyColorTable CopyColorTable}  */
	static public function nglCopyColorTable(target:Int,internalformat:Int,x:Int,y:Int,width:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glHistogram Histogram}  */
	static public function nglHistogram(target:Int,width:Int,internalformat:Int,sink:Bool,__functionAddress:haxe.Int64):Void;
/** Buffer object offset version of: {@link #glGetColorTable GetColorTable}  */
/**
 * Returns the current contents of a color table.
 *
 * @param target the color table target. One of:<br>{@link #GL_COLOR_TABLE COLOR_TABLE}, {@link #GL_POST_CONVOLUTION_COLOR_TABLE POST_CONVOLUTION_COLOR_TABLE}, {@link #GL_POST_COLOR_MATRIX_COLOR_TABLE POST_COLOR_MATRIX_COLOR_TABLE}
 * @param format the color data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type   the color data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param table  the color table data
 */
/** FloatBuffer version of: {@link #glGetColorTable GetColorTable}  */
/** IntBuffer version of: {@link #glGetColorTable GetColorTable}  */
/** ShortBuffer version of: {@link #glGetColorTable GetColorTable}  */
	static public function glGetColorTable(target:Int,format:Int,type:Int,table:java.nio.ShortBuffer):Void;
	@:overload(function (target:Int,format:Int,type:Int,tableOffset:haxe.Int64):Void {})
	@:overload(function (target:Int,format:Int,type:Int,table:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,format:Int,type:Int,table:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,format:Int,type:Int,table:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetMinmaxParameteriv GetMinmaxParameteriv}  */
/** JNI method for {@link #glGetMinmaxParameteriv GetMinmaxParameteriv}  */
	static public function nglGetMinmaxParameteriv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glResetMinmax ResetMinmax}  */
	static public function nglResetMinmax(target:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glConvolutionParameteri ConvolutionParameteri}  */
	static public function nglConvolutionParameteri(target:Int,pname:Int,param:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetConvolutionParameterfv GetConvolutionParameterfv}  */
	static public function glGetConvolutionParameterf(target:Int,pname:Int):Float;
/**
 * Specifies the constant color C<sub>c</sub> to be used in blending.
 *
 * @param red   the red color component
 * @param green the green color component
 * @param blue  the blue color component
 * @param alpha the alpha color component
 */
	static public function glBlendColor(red:Float,green:Float,blue:Float,alpha:Float):Void;
/** Single return value version of: {@link #glGetConvolutionParameteriv GetConvolutionParameteriv}  */
	static public function glGetConvolutionParameteri(target:Int,pname:Int):Int;
/**
 * Pointer version of {@link #glConvolutionParameterf ConvolutionParameterf}.
 *
 * @param target the filter target
 * @param pname  the parameter to set. One of:<br>{@link #GL_CONVOLUTION_FILTER_SCALE CONVOLUTION_FILTER_SCALE}, {@link #GL_CONVOLUTION_FILTER_BIAS CONVOLUTION_FILTER_BIAS}, {@link #GL_CONVOLUTION_BORDER_COLOR CONVOLUTION_BORDER_COLOR}
 * @param params the parameter value
 */
/** Alternative version of: {@link #glConvolutionParameterfv ConvolutionParameterfv}  */
	static public function glConvolutionParameterfv(target:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Buffer object offset version of: {@link #glConvolutionFilter1D ConvolutionFilter1D}  */
/**
 * Defines a one-dimensional convolution filter.
 *
 * @param target         the convolution target. Must be:<br>{@link #GL_CONVOLUTION_1D CONVOLUTION_1D}
 * @param internalformat the filter internal format. One of:<br>{@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL30#GL_RG8 RG8}, {@link GL31#GL_RG8_SNORM RG8_SNORM}, {@link GL11#GL_R3_G3_B2 R3_G3_B2}, {@link GL11#GL_RGB4 RGB4}, {@link GL11#GL_RGB5 RGB5}, {@link GL41#GL_RGB565 RGB565}, {@link GL11#GL_RGB8 RGB8}, {@link GL31#GL_RGB8_SNORM RGB8_SNORM}, {@link GL11#GL_RGB10 RGB10}, {@link GL11#GL_RGB12 RGB12}, {@link GL11#GL_RGB16 RGB16}, {@link GL31#GL_RGB16_SNORM RGB16_SNORM}, {@link GL11#GL_RGBA2 RGBA2}, {@link GL11#GL_RGBA4 RGBA4}, {@link GL11#GL_RGB5_A1 RGB5_A1}, {@link GL11#GL_RGBA8 RGBA8}, {@link GL31#GL_RGBA8_SNORM RGBA8_SNORM}, {@link GL11#GL_RGB10_A2 RGB10_A2}, {@link GL11#GL_RGBA12 RGBA12}, {@link GL11#GL_RGBA16 RGBA16}, {@link GL31#GL_RGBA16_SNORM RGBA16_SNORM}, {@link GL21#GL_SRGB8 SRGB8}, {@link GL21#GL_SRGB8_ALPHA8 SRGB8_ALPHA8}, {@link GL30#GL_RGB16F RGB16F}, {@link GL30#GL_RGBA16F RGBA16F}, {@link GL30#GL_RGB32F RGB32F}, {@link GL30#GL_RGBA32F RGBA32F}, {@link GL30#GL_R11F_G11F_B10F R11F_G11F_B10F}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL11#GL_INTENSITY INTENSITY}, {@link GL11#GL_ALPHA4 ALPHA4}, {@link GL11#GL_ALPHA8 ALPHA8}, {@link GL11#GL_ALPHA12 ALPHA12}, {@link GL11#GL_ALPHA16 ALPHA16}, {@link GL11#GL_LUMINANCE4 LUMINANCE4}, {@link GL11#GL_LUMINANCE8 LUMINANCE8}, {@link GL11#GL_LUMINANCE12 LUMINANCE12}, {@link GL11#GL_LUMINANCE16 LUMINANCE16}, {@link GL11#GL_LUMINANCE4_ALPHA4 LUMINANCE4_ALPHA4}, {@link GL11#GL_LUMINANCE6_ALPHA2 LUMINANCE6_ALPHA2}, {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}, {@link GL11#GL_LUMINANCE12_ALPHA4 LUMINANCE12_ALPHA4}, {@link GL11#GL_LUMINANCE12_ALPHA12 LUMINANCE12_ALPHA12}, {@link GL11#GL_LUMINANCE16_ALPHA16 LUMINANCE16_ALPHA16}, {@link GL11#GL_INTENSITY4 INTENSITY4}, {@link GL11#GL_INTENSITY8 INTENSITY8}, {@link GL11#GL_INTENSITY12 INTENSITY12}, {@link GL11#GL_INTENSITY16 INTENSITY16}, {@link GL21#GL_SLUMINANCE SLUMINANCE}, {@link GL21#GL_SLUMINANCE8_ALPHA8 SLUMINANCE8_ALPHA8}
 * @param width          the filter width
 * @param format         the filter data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type           the filter data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param data           the filter data
 */
	static public function glConvolutionFilter1D(target:Int,internalformat:Int,width:Int,format:Int,type:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,width:Int,format:Int,type:Int,dataOffset:haxe.Int64):Void {})
/** JNI method for {@link #glConvolutionParameterf ConvolutionParameterf}  */
	static public function nglConvolutionParameterf(target:Int,pname:Int,param:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glCopyColorSubTable CopyColorSubTable}  */
	static public function nglCopyColorSubTable(target:Int,start:Int,x:Int,y:Int,width:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetHistogramParameteriv GetHistogramParameteriv}  */
/** JNI method for {@link #glGetHistogramParameteriv GetHistogramParameteriv}  */
	static public function nglGetHistogramParameteriv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetConvolutionParameteriv GetConvolutionParameteriv}  */
/** JNI method for {@link #glGetConvolutionParameteriv GetConvolutionParameteriv}  */
	static public function nglGetConvolutionParameteriv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glGetMinmax GetMinmax}  */
/**
 * Returns the current contents of the minmax table.
 *
 * @param target the minmax target. Must be:<br>{@link #GL_MINMAX MINMAX}
 * @param reset  If {@link GL11#GL_TRUE TRUE}, then each minimum value is reset to the maximum representable value, and each maximum value is reset to the minimum
 *               representable value. All values are reset, whether returned or not.
 * @param format the pixel data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type   the pixel data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param values a buffer in which to place the minmax values
 */
	static public function glGetMinmax(target:Int,reset:Bool,format:Int,type:Int,values:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,reset:Bool,format:Int,type:Int,valuesOffset:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetColorTableParameteriv GetColorTableParameteriv}  */
	static public function glGetColorTableParameteri(target:Int,pname:Int):Int;
/**
 * Float version of {@link #glGetHistogramParameteriv GetHistogramParameteriv}.
 *
 * @param target the histogram target
 * @param pname  the parameter to query
 * @param params a buffer in which to place the returned value
 */
/** Alternative version of: {@link #glGetHistogramParameterfv GetHistogramParameterfv}  */
	static public function glGetHistogramParameterfv(target:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetMinmax GetMinmax}  */
/** JNI method for {@link #glGetMinmax GetMinmax}  */
	static public function nglGetMinmax(target:Int,reset:Bool,format:Int,type:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,reset:Bool,format:Int,type:Int,values:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetColorTableParameterfv GetColorTableParameterfv}  */
	static public function glGetColorTableParameterf(target:Int,pname:Int):Float;
/**
 * Float version of {@link #glGetColorTableParameteriv GetColorTableParameteriv}.
 *
 * @param target the color table target
 * @param pname  the parameter to query
 * @param params a buffer in which to place the returned value
 */
/** Alternative version of: {@link #glGetColorTableParameterfv GetColorTableParameterfv}  */
	static public function glGetColorTableParameterfv(target:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glConvolutionParameterfv ConvolutionParameterfv}  */
/** JNI method for {@link #glConvolutionParameterfv ConvolutionParameterfv}  */
	static public function nglConvolutionParameterfv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * Resets all minimum and maximum values of {@code target} to to their maximum and minimum representable values, respectively.
 *
 * @param target the minmax target. Must be:<br>{@link #GL_MINMAX MINMAX}
 */
	static public function glResetMinmax(target:Int):Void;
/** Buffer object offset version of: {@link #glColorTable ColorTable}  */
/**
 * Specifies a color lookup table.
 *
 * @param target         the color table target. One of:<br>{@link #GL_COLOR_TABLE COLOR_TABLE}, {@link #GL_POST_CONVOLUTION_COLOR_TABLE POST_CONVOLUTION_COLOR_TABLE}, {@link #GL_POST_COLOR_MATRIX_COLOR_TABLE POST_COLOR_MATRIX_COLOR_TABLE}, {@link #GL_PROXY_COLOR_TABLE PROXY_COLOR_TABLE}, {@link #GL_PROXY_POST_CONVOLUTION_COLOR_TABLE PROXY_POST_CONVOLUTION_COLOR_TABLE}, {@link #GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE PROXY_POST_COLOR_MATRIX_COLOR_TABLE}
 * @param internalformat the color table internal format. One of:<br>{@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL30#GL_RG8 RG8}, {@link GL31#GL_RG8_SNORM RG8_SNORM}, {@link GL11#GL_R3_G3_B2 R3_G3_B2}, {@link GL11#GL_RGB4 RGB4}, {@link GL11#GL_RGB5 RGB5}, {@link GL41#GL_RGB565 RGB565}, {@link GL11#GL_RGB8 RGB8}, {@link GL31#GL_RGB8_SNORM RGB8_SNORM}, {@link GL11#GL_RGB10 RGB10}, {@link GL11#GL_RGB12 RGB12}, {@link GL11#GL_RGB16 RGB16}, {@link GL31#GL_RGB16_SNORM RGB16_SNORM}, {@link GL11#GL_RGBA2 RGBA2}, {@link GL11#GL_RGBA4 RGBA4}, {@link GL11#GL_RGB5_A1 RGB5_A1}, {@link GL11#GL_RGBA8 RGBA8}, {@link GL31#GL_RGBA8_SNORM RGBA8_SNORM}, {@link GL11#GL_RGB10_A2 RGB10_A2}, {@link GL11#GL_RGBA12 RGBA12}, {@link GL11#GL_RGBA16 RGBA16}, {@link GL31#GL_RGBA16_SNORM RGBA16_SNORM}, {@link GL21#GL_SRGB8 SRGB8}, {@link GL21#GL_SRGB8_ALPHA8 SRGB8_ALPHA8}, {@link GL30#GL_RGB16F RGB16F}, {@link GL30#GL_RGBA16F RGBA16F}, {@link GL30#GL_RGB32F RGB32F}, {@link GL30#GL_RGBA32F RGBA32F}, {@link GL30#GL_R11F_G11F_B10F R11F_G11F_B10F}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL11#GL_INTENSITY INTENSITY}, {@link GL11#GL_ALPHA4 ALPHA4}, {@link GL11#GL_ALPHA8 ALPHA8}, {@link GL11#GL_ALPHA12 ALPHA12}, {@link GL11#GL_ALPHA16 ALPHA16}, {@link GL11#GL_LUMINANCE4 LUMINANCE4}, {@link GL11#GL_LUMINANCE8 LUMINANCE8}, {@link GL11#GL_LUMINANCE12 LUMINANCE12}, {@link GL11#GL_LUMINANCE16 LUMINANCE16}, {@link GL11#GL_LUMINANCE4_ALPHA4 LUMINANCE4_ALPHA4}, {@link GL11#GL_LUMINANCE6_ALPHA2 LUMINANCE6_ALPHA2}, {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}, {@link GL11#GL_LUMINANCE12_ALPHA4 LUMINANCE12_ALPHA4}, {@link GL11#GL_LUMINANCE12_ALPHA12 LUMINANCE12_ALPHA12}, {@link GL11#GL_LUMINANCE16_ALPHA16 LUMINANCE16_ALPHA16}, {@link GL11#GL_INTENSITY4 INTENSITY4}, {@link GL11#GL_INTENSITY8 INTENSITY8}, {@link GL11#GL_INTENSITY12 INTENSITY12}, {@link GL11#GL_INTENSITY16 INTENSITY16}, {@link GL21#GL_SLUMINANCE SLUMINANCE}, {@link GL21#GL_SLUMINANCE8_ALPHA8 SLUMINANCE8_ALPHA8}
 * @param width          the color table width
 * @param format         the color data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type           the color data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param table          the color table data
 */
/** FloatBuffer version of: {@link #glColorTable ColorTable}  */
/** IntBuffer version of: {@link #glColorTable ColorTable}  */
/** ShortBuffer version of: {@link #glColorTable ColorTable}  */
	static public function glColorTable(target:Int,internalformat:Int,width:Int,format:Int,type:Int,table:java.nio.ShortBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,width:Int,format:Int,type:Int,tableOffset:haxe.Int64):Void {})
	@:overload(function (target:Int,internalformat:Int,width:Int,format:Int,type:Int,table:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,width:Int,format:Int,type:Int,table:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,width:Int,format:Int,type:Int,table:java.nio.IntBuffer):Void {})
/**
 * Float version of {@link #glGetMinmaxParameteriv GetMinmaxParameteriv}.
 *
 * @param target the minmax target. Must be:<br>{@link #GL_MINMAX MINMAX}
 * @param pname  the parameter to query
 * @param params a buffer in which to place the returned value
 */
/** Alternative version of: {@link #glGetMinmaxParameterfv GetMinmaxParameterfv}  */
	static public function glGetMinmaxParameterfv(target:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glConvolutionFilter2D ConvolutionFilter2D}  */
/** JNI method for {@link #glConvolutionFilter2D ConvolutionFilter2D}  */
	static public function nglConvolutionFilter2D(target:Int,internalformat:Int,width:Int,height:Int,format:Int,type:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,internalformat:Int,width:Int,height:Int,format:Int,type:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetHistogram GetHistogram}  */
/** JNI method for {@link #glGetHistogram GetHistogram}  */
	static public function nglGetHistogram(target:Int,reset:Bool,format:Int,type:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,reset:Bool,format:Int,type:Int,values:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetHistogramParameteriv GetHistogramParameteriv}  */
	static public function glGetHistogramParameteri(target:Int,pname:Int):Int;
/** Returns the {@link ARBImaging} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBImaging;
/** Single return value version of: {@link #glGetHistogramParameterfv GetHistogramParameterfv}  */
	static public function glGetHistogramParameterf(target:Int,pname:Int):Float;

}
