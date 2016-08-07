package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL13")
@:final
/**
 * The core OpenGL 1.3 functionality.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_compression.txt">ARB_texture_compression</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_cube_map.txt">ARB_texture_cube_map</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/multisample.txt">ARB_multisample</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/multitexture.txt">ARB_multitexture</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_env_add.txt">ARB_texture_env_add</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_env_combine.txt">ARB_texture_env_combine</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_env_dot3.txt">ARB_texture_env_dot3</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_border_clamp.txt">ARB_texture_border_clamp</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/transpose_matrix.txt">ARB_transpose_matrix</a></li>
 * </ul></p>
 */
extern class GL13 
{
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_ALPHA:Int = 34025;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_LUMINANCE:Int = 34026;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_LUMINANCE_ALPHA:Int = 34027;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_INTENSITY:Int = 34028;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_RGB:Int = 34029;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_RGBA:Int = 34030;
/** Accepted by the {@code target} parameter of Hint and the {@code value} parameter of GetIntegerv, GetBooleanv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TEXTURE_COMPRESSION_HINT:Int = 34031;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_COMPRESSED_IMAGE_SIZE:Int = 34464;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_COMPRESSED:Int = 34465;
/** Accepted by the {@code value} parameter of GetIntegerv, GetBooleanv, GetFloatv, and GetDoublev.  */
	inline static public var GL_NUM_COMPRESSED_TEXTURE_FORMATS:Int = 34466;
/** Accepted by the {@code value} parameter of GetIntegerv, GetBooleanv, GetFloatv, and GetDoublev.  */
	inline static public var GL_COMPRESSED_TEXTURE_FORMATS:Int = 34467;
/** Accepted by the {@code param} parameters of TexGend, TexGenf, and TexGeni when {@code pname} parameter is TEXTURE_GEN_MODE.  */
	inline static public var GL_NORMAL_MAP:Int = 34065;
/** Accepted by the {@code param} parameters of TexGend, TexGenf, and TexGeni when {@code pname} parameter is TEXTURE_GEN_MODE.  */
	inline static public var GL_REFLECTION_MAP:Int = 34066;
/**
 * When the {@code pname} parameter of TexGendv, TexGenfv, and TexGeniv is TEXTURE_GEN_MODE, then the array {@code params} may also contain NORMAL_MAP
 * or REFLECTION_MAP. Accepted by the {@code cap} parameter of Enable, Disable, IsEnabled, and by the {@code pname} parameter of GetBooleanv,
 * GetIntegerv, GetFloatv, and GetDoublev, and by the {@code target} parameter of BindTexture, GetTexParameterfv, GetTexParameteriv, TexParameterf,
 * TexParameteri, TexParameterfv, and TexParameteriv.
 */
	inline static public var GL_TEXTURE_CUBE_MAP:Int = 34067;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TEXTURE_BINDING_CUBE_MAP:Int = 34068;
/**
 * Accepted by the {@code target} parameter of GetTexImage, GetTexLevelParameteriv, GetTexLevelParameterfv, TexImage2D, CopyTexImage2D, TexSubImage2D, and
 * CopySubTexImage2D.
 */
	inline static public var GL_TEXTURE_CUBE_MAP_POSITIVE_X:Int = 34069;
/**
 * Accepted by the {@code target} parameter of GetTexImage, GetTexLevelParameteriv, GetTexLevelParameterfv, TexImage2D, CopyTexImage2D, TexSubImage2D, and
 * CopySubTexImage2D.
 */
	inline static public var GL_TEXTURE_CUBE_MAP_NEGATIVE_X:Int = 34070;
/**
 * Accepted by the {@code target} parameter of GetTexImage, GetTexLevelParameteriv, GetTexLevelParameterfv, TexImage2D, CopyTexImage2D, TexSubImage2D, and
 * CopySubTexImage2D.
 */
	inline static public var GL_TEXTURE_CUBE_MAP_POSITIVE_Y:Int = 34071;
/**
 * Accepted by the {@code target} parameter of GetTexImage, GetTexLevelParameteriv, GetTexLevelParameterfv, TexImage2D, CopyTexImage2D, TexSubImage2D, and
 * CopySubTexImage2D.
 */
	inline static public var GL_TEXTURE_CUBE_MAP_NEGATIVE_Y:Int = 34072;
/**
 * Accepted by the {@code target} parameter of GetTexImage, GetTexLevelParameteriv, GetTexLevelParameterfv, TexImage2D, CopyTexImage2D, TexSubImage2D, and
 * CopySubTexImage2D.
 */
	inline static public var GL_TEXTURE_CUBE_MAP_POSITIVE_Z:Int = 34073;
/**
 * Accepted by the {@code target} parameter of GetTexImage, GetTexLevelParameteriv, GetTexLevelParameterfv, TexImage2D, CopyTexImage2D, TexSubImage2D, and
 * CopySubTexImage2D.
 */
	inline static public var GL_TEXTURE_CUBE_MAP_NEGATIVE_Z:Int = 34074;
/** Accepted by the {@code target} parameter of GetTexLevelParameteriv, GetTexLevelParameterfv, GetTexParameteriv, and TexImage2D.  */
	inline static public var GL_PROXY_TEXTURE_CUBE_MAP:Int = 34075;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_CUBE_MAP_TEXTURE_SIZE:Int = 34076;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_MULTISAMPLE:Int = 32925;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_SAMPLE_ALPHA_TO_COVERAGE:Int = 32926;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_SAMPLE_ALPHA_TO_ONE:Int = 32927;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_SAMPLE_COVERAGE:Int = 32928;
/** Accepted by the {@code mask} parameter of PushAttrib.  */
	inline static public var GL_MULTISAMPLE_BIT:Int = 536870912;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_SAMPLE_BUFFERS:Int = 32936;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_SAMPLES:Int = 32937;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_SAMPLE_COVERAGE_VALUE:Int = 32938;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_SAMPLE_COVERAGE_INVERT:Int = 32939;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE0:Int = 33984;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE1:Int = 33985;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE2:Int = 33986;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE3:Int = 33987;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE4:Int = 33988;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE5:Int = 33989;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE6:Int = 33990;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE7:Int = 33991;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE8:Int = 33992;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE9:Int = 33993;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE10:Int = 33994;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE11:Int = 33995;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE12:Int = 33996;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE13:Int = 33997;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE14:Int = 33998;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE15:Int = 33999;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE16:Int = 34000;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE17:Int = 34001;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE18:Int = 34002;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE19:Int = 34003;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE20:Int = 34004;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE21:Int = 34005;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE22:Int = 34006;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE23:Int = 34007;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE24:Int = 34008;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE25:Int = 34009;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE26:Int = 34010;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE27:Int = 34011;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE28:Int = 34012;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE29:Int = 34013;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE30:Int = 34014;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE31:Int = 34015;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_ACTIVE_TEXTURE:Int = 34016;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_CLIENT_ACTIVE_TEXTURE:Int = 34017;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_TEXTURE_UNITS:Int = 34018;
/** Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is TEXTURE_ENV_MODE.  */
	inline static public var GL_COMBINE:Int = 34160;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_COMBINE_RGB:Int = 34161;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_COMBINE_ALPHA:Int = 34162;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE0_RGB:Int = 34176;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE1_RGB:Int = 34177;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE2_RGB:Int = 34178;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE0_ALPHA:Int = 34184;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE1_ALPHA:Int = 34185;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE2_ALPHA:Int = 34186;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND0_RGB:Int = 34192;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND1_RGB:Int = 34193;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND2_RGB:Int = 34194;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND0_ALPHA:Int = 34200;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND1_ALPHA:Int = 34201;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND2_ALPHA:Int = 34202;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_RGB_SCALE:Int = 34163;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is COMBINE_RGB or
 * COMBINE_ALPHA.
 */
	inline static public var GL_ADD_SIGNED:Int = 34164;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is COMBINE_RGB or
 * COMBINE_ALPHA.
 */
	inline static public var GL_INTERPOLATE:Int = 34165;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is COMBINE_RGB or
 * COMBINE_ALPHA.
 */
	inline static public var GL_SUBTRACT:Int = 34023;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is SOURCE0_RGB,
 * SOURCE1_RGB, SOURCE2_RGB, SOURCE0_ALPHA, SOURCE1_ALPHA, or SOURCE2_ALPHA.
 */
	inline static public var GL_CONSTANT:Int = 34166;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is SOURCE0_RGB,
 * SOURCE1_RGB, SOURCE2_RGB, SOURCE0_ALPHA, SOURCE1_ALPHA, or SOURCE2_ALPHA.
 */
	inline static public var GL_PRIMARY_COLOR:Int = 34167;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is SOURCE0_RGB,
 * SOURCE1_RGB, SOURCE2_RGB, SOURCE0_ALPHA, SOURCE1_ALPHA, or SOURCE2_ALPHA.
 */
	inline static public var GL_PREVIOUS:Int = 34168;
/** Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is COMBINE_RGB_ARB.  */
	inline static public var GL_DOT3_RGB:Int = 34478;
/** Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is COMBINE_RGB_ARB.  */
	inline static public var GL_DOT3_RGBA:Int = 34479;
/**
 * Accepted by the {@code param} parameter of TexParameteri and TexParameterf, and by the {@code params} parameter of TexParameteriv and TexParameterfv,
 * when their {@code pname} parameter is TEXTURE_WRAP_S, TEXTURE_WRAP_T, or TEXTURE_WRAP_R.
 */
	inline static public var GL_CLAMP_TO_BORDER:Int = 33069;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TRANSPOSE_MODELVIEW_MATRIX:Int = 34019;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TRANSPOSE_PROJECTION_MATRIX:Int = 34020;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TRANSPOSE_TEXTURE_MATRIX:Int = 34021;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TRANSPOSE_COLOR_MATRIX:Int = 34022;
/** Function address.  */
	public var CompressedTexImage3D:haxe.Int64;
/** Function address.  */
	public var CompressedTexImage2D:haxe.Int64;
/** Function address.  */
	public var CompressedTexImage1D:haxe.Int64;
/** Function address.  */
	public var CompressedTexSubImage3D:haxe.Int64;
/** Function address.  */
	public var CompressedTexSubImage2D:haxe.Int64;
/** Function address.  */
	public var CompressedTexSubImage1D:haxe.Int64;
/** Function address.  */
	public var GetCompressedTexImage:haxe.Int64;
/** Function address.  */
	public var SampleCoverage:haxe.Int64;
/** Function address.  */
	public var ActiveTexture:haxe.Int64;
/** Function address.  */
	public var ClientActiveTexture:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1f:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1s:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1i:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1d:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1fv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1sv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1iv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1dv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2f:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2s:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2i:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2d:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2fv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2sv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2iv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2dv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3f:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3s:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3i:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3d:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3fv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3sv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3iv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3dv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4f:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4s:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4i:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4d:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4fv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4sv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4iv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4dv:haxe.Int64;
/** Function address.  */
	public var LoadTransposeMatrixf:haxe.Int64;
/** Function address.  */
	public var LoadTransposeMatrixd:haxe.Int64;
/** Function address.  */
	public var MultTransposeMatrixf:haxe.Int64;
/** Function address.  */
	public var MultTransposeMatrixd:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider,fc:Bool):Void;
/** Unsafe version of {@link #glLoadTransposeMatrixd LoadTransposeMatrixd}  */
/** JNI method for {@link #glLoadTransposeMatrixd LoadTransposeMatrixd}  */
	static public function nglLoadTransposeMatrixd(m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (m:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexCoord1d MultiTexCoord1d}  */
	static public function nglMultiTexCoord1d(texture:Int,s:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glLoadTransposeMatrixf LoadTransposeMatrixf}  */
/** JNI method for {@link #glLoadTransposeMatrixf LoadTransposeMatrixf}  */
	static public function nglLoadTransposeMatrixf(m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (m:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord2f.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Sets the current two-dimensional texture coordinate for the specified texture coordinate set. {@code r} is implicitly set to 0 and {@code q} to 1.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 */
	static public function glMultiTexCoord2f(texture:Int,s:Float,t:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord2d.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Double version of {@link #glMultiTexCoord2f MultiTexCoord2f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 */
	static public function glMultiTexCoord2d(texture:Int,s:Float,t:Float):Void;
/** Alternative version of: {@link #glCompressedTexImage3D CompressedTexImage3D}  */
/** Buffer object offset version of: {@link #glCompressedTexImage3D CompressedTexImage3D}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCompressedTexImage3D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies a three-dimensional texture image in a compressed format.
 *
 * @param target         the target texture. One of:<br>{@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}, {@link GL12#GL_PROXY_TEXTURE_3D PROXY_TEXTURE_3D}, {@link GL30#GL_PROXY_TEXTURE_2D_ARRAY PROXY_TEXTURE_2D_ARRAY}, {@link GL40#GL_PROXY_TEXTURE_CUBE_MAP_ARRAY PROXY_TEXTURE_CUBE_MAP_ARRAY}
 * @param level          the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param internalformat the format of the compressed image data. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param width          the width of the texture image
 * @param height         the height of the texture image
 * @param depth          the depth of the texture image
 * @param border         must be 0
 * @param imageSize      the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data           a pointer to the compressed image data
 */
	static public function glCompressedTexImage3D(target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTexImage2D CompressedTexImage2D}  */
/** JNI method for {@link #glCompressedTexImage2D CompressedTexImage2D}  */
	static public function nglCompressedTexImage2D(target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord3f MultiTexCoord3f}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord3fv MultiTexCoord3fv}  */
	static public function glMultiTexCoord3fv(texture:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexCoord1f MultiTexCoord1f}  */
	static public function nglMultiTexCoord1f(texture:Int,s:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord2i.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Integer version of {@link #glMultiTexCoord2f MultiTexCoord2f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 */
	static public function glMultiTexCoord2i(texture:Int,s:Int,t:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord2d MultiTexCoord2d}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord2dv MultiTexCoord2dv}  */
	static public function glMultiTexCoord2dv(texture:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord4.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord4d MultiTexCoord4d}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord4dv MultiTexCoord4dv}  */
	static public function glMultiTexCoord4dv(texture:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexCoord3dv MultiTexCoord3dv}  */
/** JNI method for {@link #glMultiTexCoord3dv MultiTexCoord3dv}  */
	static public function nglMultiTexCoord3dv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexCoord1i MultiTexCoord1i}  */
	static public function nglMultiTexCoord1i(texture:Int,s:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glMultiTexCoord4fv MultiTexCoord4fv}  */
/** JNI method for {@link #glMultiTexCoord4fv MultiTexCoord4fv}  */
	static public function nglMultiTexCoord4fv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord1dv MultiTexCoord1dv}  */
/** JNI method for {@link #glMultiTexCoord1dv MultiTexCoord1dv}  */
	static public function nglMultiTexCoord1dv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord2fv MultiTexCoord2fv}  */
/** JNI method for {@link #glMultiTexCoord2fv MultiTexCoord2fv}  */
	static public function nglMultiTexCoord2fv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glGetCompressedTexImage GetCompressedTexImage}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetCompressedTexImage.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns a compressed texture image.
 *
 * @param target the target texture. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link #GL_TEXTURE_CUBE_MAP_POSITIVE_X TEXTURE_CUBE_MAP_POSITIVE_X}, {@link #GL_TEXTURE_CUBE_MAP_NEGATIVE_X TEXTURE_CUBE_MAP_NEGATIVE_X}, {@link #GL_TEXTURE_CUBE_MAP_POSITIVE_Y TEXTURE_CUBE_MAP_POSITIVE_Y}, {@link #GL_TEXTURE_CUBE_MAP_NEGATIVE_Y TEXTURE_CUBE_MAP_NEGATIVE_Y}, {@link #GL_TEXTURE_CUBE_MAP_POSITIVE_Z TEXTURE_CUBE_MAP_POSITIVE_Z}, {@link #GL_TEXTURE_CUBE_MAP_NEGATIVE_Z TEXTURE_CUBE_MAP_NEGATIVE_Z}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}
 * @param level  the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param pixels a buffer in which to return the compressed texture image
 */
	static public function glGetCompressedTexImage(target:Int,level:Int,pixels:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,pixelsOffset:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord2i MultiTexCoord2i}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord2iv MultiTexCoord2iv}  */
	static public function glMultiTexCoord2iv(texture:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexCoord1s MultiTexCoord1s}  */
	static public function nglMultiTexCoord1s(texture:Int,s:Int16,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord4.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord4i MultiTexCoord4i}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord4iv MultiTexCoord4iv}  */
	static public function glMultiTexCoord4iv(texture:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord1s.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Short version of {@link #glMultiTexCoord1f MultiTexCoord1f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 */
	static public function glMultiTexCoord1s(texture:Int,s:Int16):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord1.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord1s MultiTexCoord1s}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord1sv MultiTexCoord1sv}  */
	static public function glMultiTexCoord1sv(texture:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord3s MultiTexCoord3s}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord3sv MultiTexCoord3sv}  */
	static public function glMultiTexCoord3sv(texture:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord1f.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Sets the current one-dimensional texture coordinate for the specified texture coordinate set. {@code t} and {@code r} are implicitly set to 0 and {@code q} to 1.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 */
	static public function glMultiTexCoord1f(texture:Int,s:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glLoadTransposeMatrix.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Double version of {@link #glLoadTransposeMatrixf LoadTransposeMatrixf}.
 *
 * @param m the matrix data
 */
/** Alternative version of: {@link #glLoadTransposeMatrixd LoadTransposeMatrixd}  */
	static public function glLoadTransposeMatrixd(m:java.nio.DoubleBuffer):Void;
	@:overload(function (m:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetCompressedTexImage GetCompressedTexImage}  */
/** JNI method for {@link #glGetCompressedTexImage GetCompressedTexImage}  */
	static public function nglGetCompressedTexImage(target:Int,level:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,pixels:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexCoord4f MultiTexCoord4f}  */
	static public function nglMultiTexCoord4f(texture:Int,s:Float,t:Float,r:Float,q:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord1d.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Double version of {@link #glMultiTexCoord1f MultiTexCoord1f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 */
	static public function glMultiTexCoord1d(texture:Int,s:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glLoadTransposeMatrix.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Sets the current matrix to a 4 &times; 4 matrix in row-major order.
 * 
 * <p>The matrix is stored as 16 consecutive values, i.e. as:
 * <table border=1 cellspacing=0 cellpadding=2 class="lwjgl matrix">
 * <tr><td>a1</td><td>a2</td><td>a3</td><td>a4</td></tr>
 * <tr><td>a5</td><td>a6</td><td>a7</td><td>a8</td></tr>
 * <tr><td>a9</td><td>a10</td><td>a11</td><td>a12</td></tr>
 * <tr><td>a13</td><td>a14</td><td>a15</td><td>a16</td></tr>
 * </table></p>
 *
 * @param m the matrix data
 */
/** Alternative version of: {@link #glLoadTransposeMatrixf LoadTransposeMatrixf}  */
	static public function glLoadTransposeMatrixf(m:java.nio.FloatBuffer):Void;
	@:overload(function (m:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexCoord4d MultiTexCoord4d}  */
	static public function nglMultiTexCoord4d(texture:Int,s:Float,t:Float,r:Float,q:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glSampleCoverage.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies multisample coverage parameters.
 * 
 * <p>Multisampling samples a pixel multiple times at various implementation-dependent subpixel locations to generate antialiasing effects. Multisampling
 * transparently antialiases points, lines, polygons, and images if it is enabled.</p>
 * 
 * <p>{@code value} is used in constructing a temporary mask used in determining which samples will be used in resolving the final fragment color. This mask
 * is bitwise-ANDed with the coverage mask generated from the multisampling computation. If the {@code invert} flag is set, the temporary mask is inverted
 * (all bits flipped) and then the bitwise-AND is computed.</p>
 * 
 * <p>If an implementation does not have any multisample buffers available, or multisampling is disabled, rasterization occurs with only a single sample
 * computing a pixel's final RGB color.</p>
 * 
 * <p>Provided an implementation supports multisample buffers, and multisampling is enabled, then a pixel's final color is generated by combining several
 * samples per pixel. Each sample contains color, depth, and stencil information, allowing those operations to be performed on each sample.</p>
 *
 * @param value  a sample coverage value. The value is clamped to the range [0, 1]. The initial value is 1.0.
 * @param invert if the coverage masks should be inverted. The initial value is false.
 */
	static public function glSampleCoverage(value:Float,invert:Bool):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord1i.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Integer version of {@link #glMultiTexCoord1f MultiTexCoord1f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 */
	static public function glMultiTexCoord1i(texture:Int,s:Int):Void;
/** JNI method for {@link #glMultiTexCoord4i MultiTexCoord4i}  */
	static public function nglMultiTexCoord4i(texture:Int,s:Int,t:Int,r:Int,q:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glCompressedTexImage3D CompressedTexImage3D}  */
/** JNI method for {@link #glCompressedTexImage3D CompressedTexImage3D}  */
	static public function nglCompressedTexImage3D(target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexCoord4s MultiTexCoord4s}  */
	static public function nglMultiTexCoord4s(texture:Int,s:Int16,t:Int16,r:Int16,q:Int16,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord4s.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Short version of {@link #glMultiTexCoord4f MultiTexCoord4f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 * @param q       the q component of the current texture coordinates
 */
	static public function glMultiTexCoord4s(texture:Int,s:Int16,t:Int16,r:Int16,q:Int16):Void;
/** Unsafe version of {@link #glMultiTexCoord4iv MultiTexCoord4iv}  */
/** JNI method for {@link #glMultiTexCoord4iv MultiTexCoord4iv}  */
	static public function nglMultiTexCoord4iv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTexSubImage1D CompressedTexSubImage1D}  */
/** JNI method for {@link #glCompressedTexSubImage1D CompressedTexSubImage1D}  */
	static public function nglCompressedTexSubImage1D(target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord2iv MultiTexCoord2iv}  */
/** JNI method for {@link #glMultiTexCoord2iv MultiTexCoord2iv}  */
	static public function nglMultiTexCoord2iv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glSampleCoverage SampleCoverage}  */
	static public function nglSampleCoverage(value:Float,invert:Bool,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glMultiTexCoord3sv MultiTexCoord3sv}  */
/** JNI method for {@link #glMultiTexCoord3sv MultiTexCoord3sv}  */
	static public function nglMultiTexCoord3sv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedTexSubImage3D CompressedTexSubImage3D}  */
/** Buffer object offset version of: {@link #glCompressedTexSubImage3D CompressedTexSubImage3D}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCompressedTexSubImage3D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Respecifies only a cubic subregion of an existing 3D texel array, with incoming data stored in a specific compressed image format.
 *
 * @param target    the target texture. One of:<br>{@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}
 * @param level     the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param xoffset   a texel offset in the x direction within the texture array
 * @param yoffset   a texel offset in the y direction within the texture array
 * @param zoffset   a texel offset in the z direction within the texture array
 * @param width     the width of the texture subimage
 * @param height    the height of the texture subimage
 * @param depth     the depth of the texture subimage
 * @param format    the format of the compressed image data stored at address {@code data}. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param imageSize the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data      a pointer to the compressed image data
 */
	static public function glCompressedTexSubImage3D(target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord1sv MultiTexCoord1sv}  */
/** JNI method for {@link #glMultiTexCoord1sv MultiTexCoord1sv}  */
	static public function nglMultiTexCoord1sv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glClientActiveTexture.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Selects the vertex array client state parameters to be modified by the TexCoordPointer command and the array affected by EnableClientState and
 * DisableClientState with parameter TEXTURE_COORD_ARRAY.
 *
 * @param texture which texture coordinate array to make active. One of:<br>{@link #GL_TEXTURE0 TEXTURE0}, GL_TEXTURE[1-31]
 */
	static public function glClientActiveTexture(texture:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord4d.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Double version of {@link #glMultiTexCoord4f MultiTexCoord4f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 * @param q       the q component of the current texture coordinates
 */
	static public function glMultiTexCoord4d(texture:Int,s:Float,t:Float,r:Float,q:Float):Void;
/** JNI method for {@link #glMultiTexCoord3f MultiTexCoord3f}  */
	static public function nglMultiTexCoord3f(texture:Int,s:Float,t:Float,r:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord4i.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Integer version of {@link #glMultiTexCoord4f MultiTexCoord4f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 * @param q       the q component of the current texture coordinates
 */
	static public function glMultiTexCoord4i(texture:Int,s:Int,t:Int,r:Int,q:Int):Void;
/** JNI method for {@link #glMultiTexCoord3d MultiTexCoord3d}  */
	static public function nglMultiTexCoord3d(texture:Int,s:Float,t:Float,r:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord4f.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Sets the current four-dimensional texture coordinate for the specified texture coordinate set.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 * @param q       the q component of the current texture coordinates
 */
	static public function glMultiTexCoord4f(texture:Int,s:Float,t:Float,r:Float,q:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord1.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord1d MultiTexCoord1d}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord1dv MultiTexCoord1dv}  */
	static public function glMultiTexCoord1dv(texture:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord2f MultiTexCoord2f}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord2fv MultiTexCoord2fv}  */
	static public function glMultiTexCoord2fv(texture:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexCoord3i MultiTexCoord3i}  */
	static public function nglMultiTexCoord3i(texture:Int,s:Int,t:Int,r:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glMultTransposeMatrixd MultTransposeMatrixd}  */
/** JNI method for {@link #glMultTransposeMatrixd MultTransposeMatrixd}  */
	static public function nglMultTransposeMatrixd(m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (m:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTexSubImage3D CompressedTexSubImage3D}  */
/** JNI method for {@link #glCompressedTexSubImage3D CompressedTexSubImage3D}  */
	static public function nglCompressedTexSubImage3D(target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord3d MultiTexCoord3d}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord3dv MultiTexCoord3dv}  */
	static public function glMultiTexCoord3dv(texture:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord4.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord4f MultiTexCoord4f}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord4fv MultiTexCoord4fv}  */
	static public function glMultiTexCoord4fv(texture:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultTransposeMatrixf MultTransposeMatrixf}  */
/** JNI method for {@link #glMultTransposeMatrixf MultTransposeMatrixf}  */
	static public function nglMultTransposeMatrixf(m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (m:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord4dv MultiTexCoord4dv}  */
/** JNI method for {@link #glMultiTexCoord4dv MultiTexCoord4dv}  */
	static public function nglMultiTexCoord4dv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedTexImage1D CompressedTexImage1D}  */
/** Buffer object offset version of: {@link #glCompressedTexImage1D CompressedTexImage1D}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCompressedTexImage1D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies a one-dimensional texture image in a compressed format.
 *
 * @param target         the target texture. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_PROXY_TEXTURE_1D PROXY_TEXTURE_1D}
 * @param level          the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param internalformat the format of the compressed image data. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param width          the width of the texture image
 * @param border         must be 0
 * @param imageSize      the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data           a pointer to the compressed image data
 */
	static public function glCompressedTexImage1D(target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,border:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord2dv MultiTexCoord2dv}  */
/** JNI method for {@link #glMultiTexCoord2dv MultiTexCoord2dv}  */
	static public function nglMultiTexCoord2dv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord3fv MultiTexCoord3fv}  */
/** JNI method for {@link #glMultiTexCoord3fv MultiTexCoord3fv}  */
	static public function nglMultiTexCoord3fv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord3s.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Short version of {@link #glMultiTexCoord3f MultiTexCoord3f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 */
	static public function glMultiTexCoord3s(texture:Int,s:Int16,t:Int16,r:Int16):Void;
/** Unsafe version of {@link #glMultiTexCoord1fv MultiTexCoord1fv}  */
/** JNI method for {@link #glMultiTexCoord1fv MultiTexCoord1fv}  */
	static public function nglMultiTexCoord1fv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTexSubImage2D CompressedTexSubImage2D}  */
/** JNI method for {@link #glCompressedTexSubImage2D CompressedTexSubImage2D}  */
	static public function nglCompressedTexSubImage2D(target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord1.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord1i MultiTexCoord1i}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord1iv MultiTexCoord1iv}  */
	static public function glMultiTexCoord1iv(texture:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultTransposeMatrix.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Multiplies the current matrix with a 4 &times; 4 matrix in row-major order. See {@link #glLoadTransposeMatrixf LoadTransposeMatrixf} for details.
 *
 * @param m the matrix data
 */
/** Alternative version of: {@link #glMultTransposeMatrixf MultTransposeMatrixf}  */
	static public function glMultTransposeMatrixf(m:java.nio.FloatBuffer):Void;
	@:overload(function (m:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexCoord3s MultiTexCoord3s}  */
	static public function nglMultiTexCoord3s(texture:Int,s:Int16,t:Int16,r:Int16,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord3i MultiTexCoord3i}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord3iv MultiTexCoord3iv}  */
	static public function glMultiTexCoord3iv(texture:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord2s MultiTexCoord2s}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord2sv MultiTexCoord2sv}  */
	static public function glMultiTexCoord2sv(texture:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord4.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord4s MultiTexCoord4s}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord4sv MultiTexCoord4sv}  */
	static public function glMultiTexCoord4sv(texture:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glCompressedTexSubImage2D CompressedTexSubImage2D}  */
/** Buffer object offset version of: {@link #glCompressedTexSubImage2D CompressedTexSubImage2D}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCompressedTexSubImage2D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Respecifies only a rectangular subregion of an existing 2D texel array, with incoming data stored in a specific compressed image format.
 *
 * @param target    the target texture. One of:<br>{@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link #GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}
 * @param level     the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param xoffset   a texel offset in the x direction within the texture array
 * @param yoffset   a texel offset in the y direction within the texture array
 * @param width     the width of the texture subimage
 * @param height    the height of the texture subimage
 * @param format    the format of the compressed image data stored at address {@code data}. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param imageSize the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data      a pointer to the compressed image data
 */
	static public function glCompressedTexSubImage2D(target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord3d.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Double version of {@link #glMultiTexCoord3f MultiTexCoord3f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 */
	static public function glMultiTexCoord3d(texture:Int,s:Float,t:Float,r:Float):Void;
/** JNI method for {@link #glMultiTexCoord2d MultiTexCoord2d}  */
	static public function nglMultiTexCoord2d(texture:Int,s:Float,t:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord3f.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Sets the current three-dimensional texture coordinate for the specified texture coordinate set. {@code q} is implicitly set to 1.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 */
	static public function glMultiTexCoord3f(texture:Int,s:Float,t:Float,r:Float):Void;
/** JNI method for {@link #glMultiTexCoord2i MultiTexCoord2i}  */
	static public function nglMultiTexCoord2i(texture:Int,s:Int,t:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glCompressedTexImage1D CompressedTexImage1D}  */
/** JNI method for {@link #glCompressedTexImage1D CompressedTexImage1D}  */
	static public function nglCompressedTexImage1D(target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexCoord2f MultiTexCoord2f}  */
	static public function nglMultiTexCoord2f(texture:Int,s:Float,t:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord3i.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Integer version of {@link #glMultiTexCoord3f MultiTexCoord3f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 */
	static public function glMultiTexCoord3i(texture:Int,s:Int,t:Int,r:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultTransposeMatrix.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Double version of {@link #glMultTransposeMatrixf MultTransposeMatrixf}.
 *
 * @param m the matrix data
 */
/** Alternative version of: {@link #glMultTransposeMatrixd MultTransposeMatrixd}  */
	static public function glMultTransposeMatrixd(m:java.nio.DoubleBuffer):Void;
	@:overload(function (m:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glClientActiveTexture ClientActiveTexture}  */
	static public function nglClientActiveTexture(texture:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glCompressedTexImage2D CompressedTexImage2D}  */
/** Buffer object offset version of: {@link #glCompressedTexImage2D CompressedTexImage2D}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCompressedTexImage2D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies a two-dimensional texture image in a compressed format.
 *
 * @param target         the target texture. One of:<br>{@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link #GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}, {@link GL11#GL_PROXY_TEXTURE_2D PROXY_TEXTURE_2D}, {@link GL30#GL_PROXY_TEXTURE_1D_ARRAY PROXY_TEXTURE_1D_ARRAY}, {@link GL31#GL_PROXY_TEXTURE_RECTANGLE PROXY_TEXTURE_RECTANGLE}, {@link #GL_PROXY_TEXTURE_CUBE_MAP PROXY_TEXTURE_CUBE_MAP}
 * @param level          the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param internalformat the format of the compressed image data. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param width          the width of the texture image
 * @param height         the height of the texture image
 * @param border         must be 0
 * @param imageSize      the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data           a pointer to the compressed image data
 */
	static public function glCompressedTexImage2D(target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord2s.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Short version of {@link #glMultiTexCoord2f MultiTexCoord2f}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 */
	static public function glMultiTexCoord2s(texture:Int,s:Int16,t:Int16):Void;
/** Unsafe version of {@link #glMultiTexCoord3iv MultiTexCoord3iv}  */
/** JNI method for {@link #glMultiTexCoord3iv MultiTexCoord3iv}  */
	static public function nglMultiTexCoord3iv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glActiveTexture ActiveTexture}  */
	static public function nglActiveTexture(texture:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glMultiTexCoord1iv MultiTexCoord1iv}  */
/** JNI method for {@link #glMultiTexCoord1iv MultiTexCoord1iv}  */
	static public function nglMultiTexCoord1iv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoord1.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoord1f MultiTexCoord1f}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord1fv MultiTexCoord1fv}  */
	static public function glMultiTexCoord1fv(texture:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexCoord2s MultiTexCoord2s}  */
	static public function nglMultiTexCoord2s(texture:Int,s:Int16,t:Int16,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glActiveTexture.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Selects which texture unit subsequent texture state calls will affect. The number of texture units an implementation supports is implementation
 * dependent.
 *
 * @param texture which texture unit to make active. One of:<br>{@link #GL_TEXTURE0 TEXTURE0}, GL_TEXTURE[1-31]
 */
	static public function glActiveTexture(texture:Int):Void;
/** Returns the {@link GL13} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL13;
/** Alternative version of: {@link #glCompressedTexSubImage1D CompressedTexSubImage1D}  */
/** Buffer object offset version of: {@link #glCompressedTexSubImage1D CompressedTexSubImage1D}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCompressedTexSubImage1D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Respecifies only a subregion of an existing 1D texel array, with incoming data stored in a specific compressed image format.
 *
 * @param target    the target texture. Must be:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}
 * @param level     the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param xoffset   a texel offset in the x direction within the texture array
 * @param width     the width of the texture subimage
 * @param format    the format of the compressed image data stored at address {@code data}. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param imageSize the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data      a pointer to the compressed image data
 */
	static public function glCompressedTexSubImage1D(target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,width:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord4sv MultiTexCoord4sv}  */
/** JNI method for {@link #glMultiTexCoord4sv MultiTexCoord4sv}  */
	static public function nglMultiTexCoord4sv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord2sv MultiTexCoord2sv}  */
/** JNI method for {@link #glMultiTexCoord2sv MultiTexCoord2sv}  */
	static public function nglMultiTexCoord2sv(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})

}
