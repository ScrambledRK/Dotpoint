package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBInternalformatQuery2")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/internalformat_query2.txt">ARB_internalformat_query2</a> extension.
 * 
 * <p>This extension extends the {@link ARBInternalformatQuery#glGetInternalformativ GetInternalformativ} query that was added in the {@link ARBInternalformatQuery ARB_internalformat_query} extension to
 * provide applications with more granular per-format capability information.</p>
 * 
 * <p>This extension allows the remainder of the texture-style targets to be specified along with any possible internal format. We add queries for additional
 * properties supported for an internal format in addition to the multisample-related information that was added in ARB_internalformat_query.</p>
 * 
 * <p>The goals of this extension are to:
 * <ol type=a>
 * <li>provide a mechanism for implementations to declare support *above* the minimum required by the specification</li>
 * <li>provide API to allow universally constant information to be queried</li>
 * <li>provide a user-friendly way of finding out about version- or implementation-specific limitations.</li>
 * </ol>
 * While much of this information can be determined for a single GL version by careful examination of the specification, support for many of these
 * properties has been gradually introduced over a number of API revisions. This can observed when considering the range in functionality between the
 * various versions of GL 2, 3, and 4, as well as GL ES 2 and 3.</p>
 * 
 * <p>In the case of an application which wishes to be scalable and able to run on a variety of possible GL or GL ES versions without being specifically
 * tailored for each version, it must either have knowledge of the specifications built up into either the code or tables, or it must do a number of tests
 * on startup to determine which capabilities are present.</p>
 * 
 * <p>In OpenGL, other than the course-grained extension mechanism, many limitations of, or limited support for, an internalformat can only be signaled by
 * failing an operation or by operating at reduced performance. Thus, such tests often involve attempts to create resources, using them in specific ways
 * and benchmarking the operations to find out if it is supported in the desired form, and at a required performance level. The extension provides a way
 * for these properties and caveats to be directly queried from the implementation.</p>
 * 
 * <p>This extension is NOT intended to allow implementations to only support a subset of features that are required by a specific GL version, nor is it
 * intended to replace the proper use of extension checks for optional functionality.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0} and {@link ARBInternalformatQuery ARB_internalformat_query}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBInternalformatQuery2 
{
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_1D:Int = 3552;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_1D_ARRAY:Int = 35864;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_2D:Int = 3553;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_2D_ARRAY:Int = 35866;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_3D:Int = 32879;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_CUBE_MAP:Int = 34067;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_CUBE_MAP_ARRAY:Int = 36873;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_RECTANGLE:Int = 34037;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_BUFFER:Int = 35882;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_RENDERBUFFER:Int = 36161;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_2D_MULTISAMPLE:Int = 37120;
/** Accepted by the {@code target} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_2D_MULTISAMPLE_ARRAY:Int = 37122;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SAMPLES:Int = 32937;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_NUM_SAMPLE_COUNTS:Int = 37760;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_SUPPORTED:Int = 33391;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_PREFERRED:Int = 33392;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_RED_SIZE:Int = 33393;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_GREEN_SIZE:Int = 33394;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_BLUE_SIZE:Int = 33395;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_ALPHA_SIZE:Int = 33396;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_DEPTH_SIZE:Int = 33397;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_STENCIL_SIZE:Int = 33398;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_SHARED_SIZE:Int = 33399;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_RED_TYPE:Int = 33400;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_GREEN_TYPE:Int = 33401;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_BLUE_TYPE:Int = 33402;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_ALPHA_TYPE:Int = 33403;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_DEPTH_TYPE:Int = 33404;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_STENCIL_TYPE:Int = 33405;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MAX_WIDTH:Int = 33406;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MAX_HEIGHT:Int = 33407;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MAX_DEPTH:Int = 33408;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MAX_LAYERS:Int = 33409;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MAX_COMBINED_DIMENSIONS:Int = 33410;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_COLOR_COMPONENTS:Int = 33411;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_DEPTH_COMPONENTS:Int = 33412;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_STENCIL_COMPONENTS:Int = 33413;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_COLOR_RENDERABLE:Int = 33414;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_DEPTH_RENDERABLE:Int = 33415;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_STENCIL_RENDERABLE:Int = 33416;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FRAMEBUFFER_RENDERABLE:Int = 33417;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FRAMEBUFFER_RENDERABLE_LAYERED:Int = 33418;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FRAMEBUFFER_BLEND:Int = 33419;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_READ_PIXELS:Int = 33420;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_READ_PIXELS_FORMAT:Int = 33421;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_READ_PIXELS_TYPE:Int = 33422;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_IMAGE_FORMAT:Int = 33423;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_IMAGE_TYPE:Int = 33424;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_GET_TEXTURE_IMAGE_FORMAT:Int = 33425;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_GET_TEXTURE_IMAGE_TYPE:Int = 33426;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MIPMAP:Int = 33427;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MANUAL_GENERATE_MIPMAP:Int = 33428;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_AUTO_GENERATE_MIPMAP:Int = 33429;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_COLOR_ENCODING:Int = 33430;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SRGB_READ:Int = 33431;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SRGB_WRITE:Int = 33432;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SRGB_DECODE_ARB:Int = 33433;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FILTER:Int = 33434;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VERTEX_TEXTURE:Int = 33435;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TESS_CONTROL_TEXTURE:Int = 33436;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TESS_EVALUATION_TEXTURE:Int = 33437;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_GEOMETRY_TEXTURE:Int = 33438;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FRAGMENT_TEXTURE:Int = 33439;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_COMPUTE_TEXTURE:Int = 33440;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_SHADOW:Int = 33441;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_GATHER:Int = 33442;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_GATHER_SHADOW:Int = 33443;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SHADER_IMAGE_LOAD:Int = 33444;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SHADER_IMAGE_STORE:Int = 33445;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SHADER_IMAGE_ATOMIC:Int = 33446;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_TEXEL_SIZE:Int = 33447;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_COMPATIBILITY_CLASS:Int = 33448;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_PIXEL_FORMAT:Int = 33449;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_PIXEL_TYPE:Int = 33450;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_FORMAT_COMPATIBILITY_TYPE:Int = 37063;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST:Int = 33452;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST:Int = 33453;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE:Int = 33454;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE:Int = 33455;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_COMPRESSED:Int = 34465;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_COMPRESSED_BLOCK_WIDTH:Int = 33457;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT:Int = 33458;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_COMPRESSED_BLOCK_SIZE:Int = 33459;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_CLEAR_BUFFER:Int = 33460;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_VIEW:Int = 33461;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_COMPATIBILITY_CLASS:Int = 33462;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FULL_SUPPORT:Int = 33463;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_CAVEAT_SUPPORT:Int = 33464;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_4_X_32:Int = 33465;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_2_X_32:Int = 33466;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_1_X_32:Int = 33467;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_4_X_16:Int = 33468;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_2_X_16:Int = 33469;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_1_X_16:Int = 33470;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_4_X_8:Int = 33471;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_2_X_8:Int = 33472;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_1_X_8:Int = 33473;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_11_11_10:Int = 33474;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_10_10_10_2:Int = 33475;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_128_BITS:Int = 33476;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_96_BITS:Int = 33477;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_64_BITS:Int = 33478;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_48_BITS:Int = 33479;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_32_BITS:Int = 33480;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_24_BITS:Int = 33481;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_16_BITS:Int = 33482;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_8_BITS:Int = 33483;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_S3TC_DXT1_RGB:Int = 33484;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_S3TC_DXT1_RGBA:Int = 33485;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_S3TC_DXT3_RGBA:Int = 33486;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_S3TC_DXT5_RGBA:Int = 33487;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_RGTC1_RED:Int = 33488;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_RGTC2_RG:Int = 33489;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_BPTC_UNORM:Int = 33490;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_BPTC_FLOAT:Int = 33491;
/** Function address.  */
	public var GetInternalformati64v:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glGetInternalformati64v GetInternalformati64v}  */
	static public function nglGetInternalformati64v(target:Int,internalformat:Int,pname:Int,bufSize:Int,params:haxe.Int64):Void;
/** Single return value version of: {@link #glGetInternalformati64v GetInternalformati64v}  */
	static public function glGetInternalformati64(target:Int,internalformat:Int,pname:Int):haxe.Int64;
/** Returns the {@link ARBInternalformatQuery2} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBInternalformatQuery2;
/** Alternative version of: {@link #glGetInternalformati64v GetInternalformati64v}  */
/**
 * Retrieves information about implementation-dependent support for internal formats.
 *
 * @param target         the usage of the internal format. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}, {@link GL30#GL_RENDERBUFFER RENDERBUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL32#GL_TEXTURE_2D_MULTISAMPLE TEXTURE_2D_MULTISAMPLE}, {@link GL32#GL_TEXTURE_2D_MULTISAMPLE_ARRAY TEXTURE_2D_MULTISAMPLE_ARRAY}
 * @param internalformat the internal format about which to retrieve information
 * @param pname          the type of information to query
 * @param bufSize        the maximum number of values that may be written to params by the function
 * @param params         a variable into which to write the retrieved information
 */
	static public function glGetInternalformati64v(target:Int,internalformat:Int,pname:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,pname:Int,params:java.nio.LongBuffer):Void {})

}
