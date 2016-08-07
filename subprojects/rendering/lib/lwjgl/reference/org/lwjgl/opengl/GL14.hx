package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL14")
@:final
/**
 * The core OpenGL 1.4 functionality.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/SGIS/generate_mipmap.txt">SGIS_generate_mipmap</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/NV/blend_square.txt">NV_blend_square</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/depth_texture.txt">ARB_depth_texture</a> and <a href="http://www.opengl.org/registry/specs/ARB/shadow.txt">ARB_shadow</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/fog_coord.txt">EXT_fog_coord</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/multi_draw_arrays.txt">EXT_multi_draw_arrays</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/point_parameters.txt">ARB_point_parameters</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/secondary_color.txt">EXT_secondary_color</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/blend_func_separate.txt">EXT_blend_func_separate</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/stencil_wrap.txt">EXT_stencil_wrap</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_env_crossbar.txt">ARB_texture_env_crossbar</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/texture_lod_bias.txt">EXT_texture_lod_bias</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_mirrored_repeat.txt">ARB_texture_mirrored_repeat</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/window_pos.txt">ARB_window_pos</a></li>
 * </ul></p>
 */
extern class GL14 
{
/** Accepted by the {@code pname} parameter of TexParameteri, TexParameterf, TexParameteriv, TexParameterfv, GetTexParameteriv, and GetTexParameterfv.  */
	inline static public var GL_GENERATE_MIPMAP:Int = 33169;
/** Accepted by the {@code target} parameter of Hint, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_GENERATE_MIPMAP_HINT:Int = 33170;
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
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, CopyTexImage1D and CopyTexImage2D.  */
	inline static public var GL_DEPTH_COMPONENT16:Int = 33189;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, CopyTexImage1D and CopyTexImage2D.  */
	inline static public var GL_DEPTH_COMPONENT24:Int = 33190;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, CopyTexImage1D and CopyTexImage2D.  */
	inline static public var GL_DEPTH_COMPONENT32:Int = 33191;
/** Accepted by the {@code pname} parameter of GetTexLevelParameterfv and GetTexLevelParameteriv.  */
	inline static public var GL_TEXTURE_DEPTH_SIZE:Int = 34890;
/** Accepted by the {@code pname} parameter of TexParameterf, TexParameteri, TexParameterfv, TexParameteriv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_DEPTH_TEXTURE_MODE:Int = 34891;
/** Accepted by the {@code pname} parameter of TexParameterf, TexParameteri, TexParameterfv, TexParameteriv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_COMPARE_MODE:Int = 34892;
/** Accepted by the {@code pname} parameter of TexParameterf, TexParameteri, TexParameterfv, TexParameteriv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_COMPARE_FUNC:Int = 34893;
/**
 * Accepted by the {@code param} parameter of TexParameterf, TexParameteri, TexParameterfv, and TexParameteriv when the {@code pname} parameter is
 * TEXTURE_COMPARE_MODE.
 */
	inline static public var GL_COMPARE_R_TO_TEXTURE:Int = 34894;
/** Accepted by the {@code pname} parameter of Fogi and Fogf.  */
	inline static public var GL_FOG_COORDINATE_SOURCE:Int = 33872;
/** Accepted by the {@code param} parameter of Fogi and Fogf.  */
	inline static public var GL_FOG_COORDINATE:Int = 33873;
/** Accepted by the {@code param} parameter of Fogi and Fogf.  */
	inline static public var GL_FRAGMENT_DEPTH:Int = 33874;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CURRENT_FOG_COORDINATE:Int = 33875;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_FOG_COORDINATE_ARRAY_TYPE:Int = 33876;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_FOG_COORDINATE_ARRAY_STRIDE:Int = 33877;
/** Accepted by the {@code pname} parameter of GetPointerv.  */
	inline static public var GL_FOG_COORDINATE_ARRAY_POINTER:Int = 33878;
/** Accepted by the {@code array} parameter of EnableClientState and DisableClientState.  */
	inline static public var GL_FOG_COORDINATE_ARRAY:Int = 33879;
/** Accepted by the {@code pname} parameter of PointParameterfARB, and the {@code pname} of Get.  */
	inline static public var GL_POINT_SIZE_MIN:Int = 33062;
/** Accepted by the {@code pname} parameter of PointParameterfARB, and the {@code pname} of Get.  */
	inline static public var GL_POINT_SIZE_MAX:Int = 33063;
/** Accepted by the {@code pname} parameter of PointParameterfARB, and the {@code pname} of Get.  */
	inline static public var GL_POINT_FADE_THRESHOLD_SIZE:Int = 33064;
/** Accepted by the {@code pname} parameter of PointParameterfARB, and the {@code pname} of Get.  */
	inline static public var GL_POINT_DISTANCE_ATTENUATION:Int = 33065;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_COLOR_SUM:Int = 33880;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CURRENT_SECONDARY_COLOR:Int = 33881;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_SIZE:Int = 33882;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_TYPE:Int = 33883;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_STRIDE:Int = 33884;
/** Accepted by the {@code pname} parameter of GetPointerv.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_POINTER:Int = 33885;
/** Accepted by the {@code array} parameter of EnableClientState and DisableClientState.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY:Int = 33886;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_DST_RGB:Int = 32968;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_SRC_RGB:Int = 32969;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_DST_ALPHA:Int = 32970;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_SRC_ALPHA:Int = 32971;
/** Accepted by the {@code sfail}, {@code dpfail}, and {@code dppass} parameter of StencilOp.  */
	inline static public var GL_INCR_WRAP:Int = 34055;
/** Accepted by the {@code sfail}, {@code dpfail}, and {@code dppass} parameter of StencilOp.  */
	inline static public var GL_DECR_WRAP:Int = 34056;
/** Accepted by the {@code target} parameters of GetTexEnvfv, GetTexEnviv, TexEnvi, TexEnvf, Texenviv, and TexEnvfv.  */
	inline static public var GL_TEXTURE_FILTER_CONTROL:Int = 34048;
/**
 * When the {@code target} parameter of GetTexEnvfv, GetTexEnviv, TexEnvi, TexEnvf, TexEnviv, and TexEnvfv is TEXTURE_FILTER_CONTROL, then the value of
 * {@code pname} may be.
 */
	inline static public var GL_TEXTURE_LOD_BIAS:Int = 34049;
/** Accepted by the {@code pname} parameters of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TEXTURE_LOD_BIAS:Int = 34045;
/**
 * Accepted by the {@code param} parameter of TexParameteri and TexParameterf, and by the {@code params} parameter of TexParameteriv and TexParameterfv,
 * when their {@code pname} parameter is TEXTURE_WRAP_S, TEXTURE_WRAP_T, or TEXTURE_WRAP_R.
 */
	inline static public var GL_MIRRORED_REPEAT:Int = 33648;
/** Function address.  */
	public var BlendColor:haxe.Int64;
/** Function address.  */
	public var BlendEquation:haxe.Int64;
/** Function address.  */
	public var FogCoordf:haxe.Int64;
/** Function address.  */
	public var FogCoordd:haxe.Int64;
/** Function address.  */
	public var FogCoordfv:haxe.Int64;
/** Function address.  */
	public var FogCoorddv:haxe.Int64;
/** Function address.  */
	public var FogCoordPointer:haxe.Int64;
/** Function address.  */
	public var MultiDrawArrays:haxe.Int64;
/** Function address.  */
	public var MultiDrawElements:haxe.Int64;
/** Function address.  */
	public var PointParameterf:haxe.Int64;
/** Function address.  */
	public var PointParameteri:haxe.Int64;
/** Function address.  */
	public var PointParameterfv:haxe.Int64;
/** Function address.  */
	public var PointParameteriv:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3b:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3s:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3i:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3f:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3d:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3ub:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3us:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3ui:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3bv:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3sv:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3iv:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3fv:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3dv:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3ubv:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3usv:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3uiv:haxe.Int64;
/** Function address.  */
	public var SecondaryColorPointer:haxe.Int64;
/** Function address.  */
	public var BlendFuncSeparate:haxe.Int64;
/** Function address.  */
	public var WindowPos2i:haxe.Int64;
/** Function address.  */
	public var WindowPos2s:haxe.Int64;
/** Function address.  */
	public var WindowPos2f:haxe.Int64;
/** Function address.  */
	public var WindowPos2d:haxe.Int64;
/** Function address.  */
	public var WindowPos2iv:haxe.Int64;
/** Function address.  */
	public var WindowPos2sv:haxe.Int64;
/** Function address.  */
	public var WindowPos2fv:haxe.Int64;
/** Function address.  */
	public var WindowPos2dv:haxe.Int64;
/** Function address.  */
	public var WindowPos3i:haxe.Int64;
/** Function address.  */
	public var WindowPos3s:haxe.Int64;
/** Function address.  */
	public var WindowPos3f:haxe.Int64;
/** Function address.  */
	public var WindowPos3d:haxe.Int64;
/** Function address.  */
	public var WindowPos3iv:haxe.Int64;
/** Function address.  */
	public var WindowPos3sv:haxe.Int64;
/** Function address.  */
	public var WindowPos3fv:haxe.Int64;
/** Function address.  */
	public var WindowPos3dv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider,fc:Bool):Void;
/** Unsafe version of {@link #glSecondaryColorPointer SecondaryColorPointer}  */
/** JNI method for {@link #glSecondaryColorPointer SecondaryColorPointer}  */
	static public function nglSecondaryColorPointer(size:Int,type:Int,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,type:Int,stride:Int,pointer:haxe.Int64):Void {})
/** Unsafe version of {@link #glFogCoordfv FogCoordfv}  */
/** JNI method for {@link #glFogCoordfv FogCoordfv}  */
	static public function nglFogCoordfv(coord:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (coord:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBlendFuncSeparate.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies pixel arithmetic for RGB and alpha components separately.
 *
 * @param sfactorRGB   how the red, green, and blue blending factors are computed. The initial value is GL_ONE.
 * @param dfactorRGB   how the red, green, and blue destination blending factors are computed. The initial value is GL_ZERO.
 * @param sfactorAlpha how the alpha source blending factor is computed. The initial value is GL_ONE.
 * @param dfactorAlpha how the alpha destination blending factor is computed. The initial value is GL_ZERO.
 */
	static public function glBlendFuncSeparate(sfactorRGB:Int,dfactorRGB:Int,sfactorAlpha:Int,dfactorAlpha:Int):Void;
/** Unsafe version of {@link #glWindowPos3dv WindowPos3dv}  */
/** JNI method for {@link #glWindowPos3dv WindowPos3dv}  */
	static public function nglWindowPos3dv(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glPointParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glPointParameteri PointParameteri}.
 *
 * @param pname  the parameter to set. Must be:<br>{@link #GL_POINT_DISTANCE_ATTENUATION POINT_DISTANCE_ATTENUATION}
 * @param params the parameter value
 */
/** Alternative version of: {@link #glPointParameteriv PointParameteriv}  */
	static public function glPointParameteriv(pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glSecondaryColor3fv SecondaryColor3fv}  */
/** JNI method for {@link #glSecondaryColor3fv SecondaryColor3fv}  */
	static public function nglSecondaryColor3fv(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/** Unsafe version of {@link #glWindowPos2fv WindowPos2fv}  */
/** JNI method for {@link #glWindowPos2fv WindowPos2fv}  */
	static public function nglWindowPos2fv(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glSecondaryColor3i SecondaryColor3i}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3iv SecondaryColor3iv}  */
	static public function glSecondaryColor3iv(v:java.nio.IntBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glSecondaryColor3bv SecondaryColor3bv}  */
/** JNI method for {@link #glSecondaryColor3bv SecondaryColor3bv}  */
	static public function nglSecondaryColor3bv(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/** JNI method for {@link #glPointParameterf PointParameterf}  */
	static public function nglPointParameterf(pname:Int,param:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glPointParameteri.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Integer version of {@link #glPointParameterf PointParameterf}.
 *
 * @param pname the parameter to set. One of:<br>{@link #GL_POINT_SIZE_MIN POINT_SIZE_MIN}, {@link #GL_POINT_SIZE_MAX POINT_SIZE_MAX}, {@link #GL_POINT_FADE_THRESHOLD_SIZE POINT_FADE_THRESHOLD_SIZE}
 * @param param the parameter value
 */
	static public function glPointParameteri(pname:Int,param:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glPointParameterf.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets the float value of a pointer parameter.
 *
 * @param pname the parameter to set. One of:<br>{@link #GL_POINT_SIZE_MIN POINT_SIZE_MIN}, {@link #GL_POINT_SIZE_MAX POINT_SIZE_MAX}, {@link #GL_POINT_FADE_THRESHOLD_SIZE POINT_FADE_THRESHOLD_SIZE}
 * @param param the parameter value
 */
	static public function glPointParameterf(pname:Int,param:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glFogCoordf.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Sets the current fog coordinate.
 *
 * @param coord the fog coordinate value
 */
	static public function glFogCoordf(coord:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glFogCoordd.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Double version of {@link #glFogCoordf FogCoordf}.
 *
 * @param coord the fog coordinate value
 */
	static public function glFogCoordd(coord:Float):Void;
/** JNI method for {@link #glPointParameteri PointParameteri}  */
	static public function nglPointParameteri(pname:Int,param:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glWindowPos3i WindowPos3i}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos3iv WindowPos3iv}  */
	static public function glWindowPos3iv(p:java.nio.IntBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glMultiDrawArrays MultiDrawArrays}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glMultiDrawArrays.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders multiple sets of primitives from array data.
 *
 * @param mode      the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param first     an array of starting indices in the enabled arrays
 * @param count     an array of the number of indices to be rendered
 * @param primcount the size of {@code first} and {@code count}
 */
	static public function glMultiDrawArrays(mode:Int,first:java.nio.ByteBuffer,count:java.nio.ByteBuffer,primcount:Int):Void;
	@:overload(function (mode:Int,first:java.nio.IntBuffer,count:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glMultiDrawElements MultiDrawElements}  */
/** JNI method for {@link #glMultiDrawElements MultiDrawElements}  */
	static public function nglMultiDrawElements(mode:Int,count:haxe.Int64,type:Int,indices:haxe.Int64,primcount:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,count:haxe.Int64,type:Int,indices:haxe.Int64,primcount:Int):Void {})
/** JNI method for {@link #glSecondaryColor3s SecondaryColor3s}  */
	static public function nglSecondaryColor3s(red:Int16,green:Int16,blue:Int16,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBlendColor BlendColor}  */
	static public function nglBlendColor(red:Float,green:Float,blue:Float,alpha:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glSecondaryColor3ubv SecondaryColor3ubv}  */
/** JNI method for {@link #glSecondaryColor3ubv SecondaryColor3ubv}  */
	static public function nglSecondaryColor3ubv(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/** Unsafe version of {@link #glSecondaryColor3sv SecondaryColor3sv}  */
/** JNI method for {@link #glSecondaryColor3sv SecondaryColor3sv}  */
	static public function nglSecondaryColor3sv(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3ub.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glSecondaryColor3ub SecondaryColor3ub}.
 *
 * @param v the secondary color buffer
 */
	static public function glSecondaryColor3ubv(v:java.nio.ByteBuffer):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glWindowPos2s WindowPos2s}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos2sv WindowPos2sv}  */
	static public function glWindowPos2sv(p:java.nio.ShortBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3d.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Double version of {@link #glSecondaryColor3b SecondaryColor3b}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3d(red:Float,green:Float,blue:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glFogCoord.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glFogCoordd FogCoordd}.
 *
 * @param coord the fog coordinate value
 */
/** Alternative version of: {@link #glFogCoorddv FogCoorddv}  */
	static public function glFogCoorddv(coord:java.nio.DoubleBuffer):Void;
	@:overload(function (coord:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glSecondaryColor3i SecondaryColor3i}  */
	static public function nglSecondaryColor3i(red:Int,green:Int,blue:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3f.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Float version of {@link #glSecondaryColor3b SecondaryColor3b}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3f(red:Float,green:Float,blue:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3b.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Sets the R, G, and B components of the current secondary color. The alpha component is set to 1.0.
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3b(red:Int8,green:Int8,blue:Int8):Void;
/** JNI method for {@link #glFogCoordf FogCoordf}  */
	static public function nglFogCoordf(coord:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glSecondaryColor3d SecondaryColor3d}  */
	static public function nglSecondaryColor3d(red:Float,green:Float,blue:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glWindowPos3d WindowPos3d}  */
	static public function nglWindowPos3d(x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glFogCoordPointer FogCoordPointer}  */
/** JNI method for {@link #glFogCoordPointer FogCoordPointer}  */
	static public function nglFogCoordPointer(type:Int,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,stride:Int,pointer:haxe.Int64):Void {})
/** JNI method for {@link #glSecondaryColor3b SecondaryColor3b}  */
	static public function nglSecondaryColor3b(red:Int8,green:Int8,blue:Int8,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glWindowPos3i WindowPos3i}  */
	static public function nglWindowPos3i(x:Int,y:Int,z:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glFogCoordd FogCoordd}  */
	static public function nglFogCoordd(coord:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3i.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Integer version of {@link #glSecondaryColor3b SecondaryColor3b}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3i(red:Int,green:Int,blue:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glSecondaryColor3f SecondaryColor3f}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3fv SecondaryColor3fv}  */
	static public function glSecondaryColor3fv(v:java.nio.FloatBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glSecondaryColor3f SecondaryColor3f}  */
	static public function nglSecondaryColor3f(red:Float,green:Float,blue:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glWindowPos3f WindowPos3f}  */
	static public function nglWindowPos3f(x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3s.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Short version of {@link #glSecondaryColor3b SecondaryColor3b}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3s(red:Int16,green:Int16,blue:Int16):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glWindowPos3d WindowPos3d}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos3dv WindowPos3dv}  */
	static public function glWindowPos3dv(p:java.nio.DoubleBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3b.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Byte pointer version of {@link #glSecondaryColor3b SecondaryColor3b}.
 *
 * @param v the secondary color buffer
 */
	static public function glSecondaryColor3bv(v:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glSecondaryColor3uiv SecondaryColor3uiv}  */
/** JNI method for {@link #glSecondaryColor3uiv SecondaryColor3uiv}  */
	static public function nglSecondaryColor3uiv(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glSecondaryColor3us SecondaryColor3us}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3usv SecondaryColor3usv}  */
	static public function glSecondaryColor3usv(v:java.nio.ShortBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glWindowPos2iv WindowPos2iv}  */
/** JNI method for {@link #glWindowPos2iv WindowPos2iv}  */
	static public function nglWindowPos2iv(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/** JNI method for {@link #glSecondaryColor3ub SecondaryColor3ub}  */
	static public function nglSecondaryColor3ub(red:Int8,green:Int8,blue:Int8,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glWindowPos2f WindowPos2f}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos2fv WindowPos2fv}  */
	static public function glWindowPos2fv(p:java.nio.FloatBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glWindowPos3sv WindowPos3sv}  */
/** JNI method for {@link #glWindowPos3sv WindowPos3sv}  */
	static public function nglWindowPos3sv(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/** GL_FLOAT version of: {@link #glSecondaryColorPointer SecondaryColorPointer}  */
/** GL_UNSIGNED_BYTE / GL_BYTE version of: {@link #glSecondaryColorPointer SecondaryColorPointer}  */
/** GL_UNSIGNED_SHORT / GL_SHORT version of: {@link #glSecondaryColorPointer SecondaryColorPointer}  */
/** Buffer object offset version of: {@link #glSecondaryColorPointer SecondaryColorPointer}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColorPointer.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Specifies the location and organization of a secondary color array.
 *
 * @param size    the number of values per vertex that are stored in the array, as well as their component ordering. Must be:<br>3
 * @param type    the data type of the values stored in the array. One of:<br>{@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_INT INT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL11#GL_DOUBLE DOUBLE}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL33#GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}
 * @param stride  the vertex stride in bytes. If specified as zero, then array elements are stored sequentially
 * @param pointer the secondary color array data
 */
	static public function glSecondaryColorPointer(size:Int,type:Int,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (size:Int,stride:Int,pointer:java.nio.FloatBuffer):Void {})
	@:overload(function (size:Int,unsigned:Bool,stride:Int,pointer:java.nio.ByteBuffer):Void {})
	@:overload(function (size:Int,unsigned:Bool,stride:Int,pointer:java.nio.ShortBuffer):Void {})
	@:overload(function (size:Int,type:Int,stride:Int,pointerOffset:haxe.Int64):Void {})
/** JNI method for {@link #glWindowPos3s WindowPos3s}  */
	static public function nglWindowPos3s(x:Int16,y:Int16,z:Int16,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBlendFuncSeparate BlendFuncSeparate}  */
	static public function nglBlendFuncSeparate(sfactorRGB:Int,dfactorRGB:Int,sfactorAlpha:Int,dfactorAlpha:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glSecondaryColor3s SecondaryColor3s}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3sv SecondaryColor3sv}  */
	static public function glSecondaryColor3sv(v:java.nio.ShortBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glWindowPos2i WindowPos2i}  */
	static public function nglWindowPos2i(x:Int,y:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBlendEquation.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Controls the blend equations used for per-fragment blending.
 *
 * @param mode the blend equation. One of:<br>{@link #GL_FUNC_ADD FUNC_ADD}, {@link #GL_FUNC_SUBTRACT FUNC_SUBTRACT}, {@link #GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link #GL_MIN MIN}, {@link #GL_MAX MAX}
 */
	static public function glBlendEquation(mode:Int):Void;
/** Unsafe version of {@link #glFogCoorddv FogCoorddv}  */
/** JNI method for {@link #glFogCoorddv FogCoorddv}  */
	static public function nglFogCoorddv(coord:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (coord:haxe.Int64):Void {})
/** JNI method for {@link #glSecondaryColor3us SecondaryColor3us}  */
	static public function nglSecondaryColor3us(red:Int16,green:Int16,blue:Int16,__functionAddress:haxe.Int64):Void;
/** GL_FLOAT version of: {@link #glFogCoordPointer FogCoordPointer}  */
/** Buffer object offset version of: {@link #glFogCoordPointer FogCoordPointer}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glFogCoordPointer.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Specifies the location and organization of a fog coordinate array.
 *
 * @param type    the data type of the values stored in the array. One of:<br>{@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL11#GL_DOUBLE DOUBLE}
 * @param stride  the vertex stride in bytes. If specified as zero, then array elements are stored sequentially
 * @param pointer the fog coordinate array data
 */
	static public function glFogCoordPointer(type:Int,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (stride:Int,pointer:java.nio.FloatBuffer):Void {})
	@:overload(function (type:Int,stride:Int,pointerOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glSecondaryColor3dv SecondaryColor3dv}  */
/** JNI method for {@link #glSecondaryColor3dv SecondaryColor3dv}  */
	static public function nglSecondaryColor3dv(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos2i.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Alternate way to set the current raster position. {@code z} is implictly set to 0.
 *
 * @param x the x value
 * @param y the y value
 */
	static public function glWindowPos2i(x:Int,y:Int):Void;
/** JNI method for {@link #glWindowPos2d WindowPos2d}  */
	static public function nglWindowPos2d(x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glSecondaryColor3ui SecondaryColor3ui}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3uiv SecondaryColor3uiv}  */
	static public function glSecondaryColor3uiv(v:java.nio.IntBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos2f.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Float version of {@link #glWindowPos2i WindowPos2i}.
 *
 * @param x the x value
 * @param y the y value
 */
	static public function glWindowPos2f(x:Float,y:Float):Void;
/** Unsafe version of {@link #glPointParameteriv PointParameteriv}  */
/** JNI method for {@link #glPointParameteriv PointParameteriv}  */
	static public function nglPointParameteriv(pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glSecondaryColor3ui SecondaryColor3ui}  */
	static public function nglSecondaryColor3ui(red:Int,green:Int,blue:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glWindowPos2f WindowPos2f}  */
	static public function nglWindowPos2f(x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glWindowPos2dv WindowPos2dv}  */
/** JNI method for {@link #glWindowPos2dv WindowPos2dv}  */
	static public function nglWindowPos2dv(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos2d.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Double version of {@link #glWindowPos2i WindowPos2i}.
 *
 * @param x the x value
 * @param y the y value
 */
	static public function glWindowPos2d(x:Float,y:Float):Void;
/** Unsafe version of {@link #glWindowPos3fv WindowPos3fv}  */
/** JNI method for {@link #glWindowPos3fv WindowPos3fv}  */
	static public function nglWindowPos3fv(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/** Unsafe version of {@link #glSecondaryColor3iv SecondaryColor3iv}  */
/** JNI method for {@link #glSecondaryColor3iv SecondaryColor3iv}  */
	static public function nglSecondaryColor3iv(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glWindowPos2i WindowPos2i}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos2iv WindowPos2iv}  */
	static public function glWindowPos2iv(p:java.nio.IntBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBlendColor.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the constant color C<sub>c</sub> to be used in blending.
 *
 * @param red   the red color component
 * @param green the green color component
 * @param blue  the blue color component
 * @param alpha the alpha color component
 */
	static public function glBlendColor(red:Float,green:Float,blue:Float,alpha:Float):Void;
/** JNI method for {@link #glWindowPos2s WindowPos2s}  */
	static public function nglWindowPos2s(x:Int16,y:Int16,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glMultiDrawArrays MultiDrawArrays}  */
/** JNI method for {@link #glMultiDrawArrays MultiDrawArrays}  */
	static public function nglMultiDrawArrays(mode:Int,first:haxe.Int64,count:haxe.Int64,primcount:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,first:haxe.Int64,count:haxe.Int64,primcount:Int):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glFogCoord.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glFogCoordf FogCoordf}.
 *
 * @param coord the fog coordinate value
 */
/** Alternative version of: {@link #glFogCoordfv FogCoordfv}  */
	static public function glFogCoordfv(coord:java.nio.FloatBuffer):Void;
	@:overload(function (coord:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glMultiDrawElements MultiDrawElements}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glMultiDrawElements.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders multiple sets of primitives by specifying indices of array data elements.
 * 
 * <p><b>LWJGL note</b>: Use {@link MemoryUtil#memAddress} to retrieve pointers to the index buffers.</p>
 *
 * @param mode      the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count     an array of the elements counts
 * @param type      the type of the values in indices. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices   a pointer to the location where the indices are stored
 * @param primcount the size of the {@code count} array
 */
	static public function glMultiDrawElements(mode:Int,count:java.nio.ByteBuffer,type:Int,indices:java.nio.ByteBuffer,primcount:Int):Void;
	@:overload(function (mode:Int,count:java.nio.IntBuffer,type:Int,indices:org.lwjgl.PointerBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos3s.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Short version of {@link #glWindowPos3i WindowPos3i}.
 *
 * @param x the x value
 * @param y the y value
 * @param z the z value
 */
	static public function glWindowPos3s(x:Int16,y:Int16,z:Int16):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glWindowPos3s WindowPos3s}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos3sv WindowPos3sv}  */
	static public function glWindowPos3sv(p:java.nio.ShortBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glBlendEquation BlendEquation}  */
	static public function nglBlendEquation(mode:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glSecondaryColor3usv SecondaryColor3usv}  */
/** JNI method for {@link #glSecondaryColor3usv SecondaryColor3usv}  */
	static public function nglSecondaryColor3usv(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/** Unsafe version of {@link #glPointParameterfv PointParameterfv}  */
/** JNI method for {@link #glPointParameterfv PointParameterfv}  */
	static public function nglPointParameterfv(pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos3i.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Alternate way to set the current raster position.
 *
 * @param x the x value
 * @param y the y value
 * @param z the z value
 */
	static public function glWindowPos3i(x:Int,y:Int,z:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos3f.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Float version of {@link #glWindowPos3i WindowPos3i}.
 *
 * @param x the x value
 * @param y the y value
 * @param z the z value
 */
	static public function glWindowPos3f(x:Float,y:Float,z:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3ub.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Unsigned version of {@link #glSecondaryColor3b SecondaryColor3b}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3ub(red:Int8,green:Int8,blue:Int8):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos3d.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Double version of {@link #glWindowPos3i WindowPos3i}.
 *
 * @param x the x value
 * @param y the y value
 * @param z the z value
 */
	static public function glWindowPos3d(x:Float,y:Float,z:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glPointParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glPointParameterf PointParameterf}.
 *
 * @param pname  the parameter to set. Must be:<br>{@link #GL_POINT_DISTANCE_ATTENUATION POINT_DISTANCE_ATTENUATION}
 * @param params the parameter value
 */
/** Alternative version of: {@link #glPointParameterfv PointParameterfv}  */
	static public function glPointParameterfv(pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glSecondaryColor3d SecondaryColor3d}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3dv SecondaryColor3dv}  */
	static public function glSecondaryColor3dv(v:java.nio.DoubleBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Unsigned int version of {@link #glSecondaryColor3b SecondaryColor3b}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3ui(red:Int,green:Int,blue:Int):Void;
/** Unsafe version of {@link #glWindowPos3iv WindowPos3iv}  */
/** JNI method for {@link #glWindowPos3iv WindowPos3iv}  */
	static public function nglWindowPos3iv(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glWindowPos3f WindowPos3f}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos3fv WindowPos3fv}  */
	static public function glWindowPos3fv(p:java.nio.FloatBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glWindowPos2d WindowPos2d}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos2dv WindowPos2dv}  */
	static public function glWindowPos2dv(p:java.nio.DoubleBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glWindowPos2sv WindowPos2sv}  */
/** JNI method for {@link #glWindowPos2sv WindowPos2sv}  */
	static public function nglWindowPos2sv(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/** Returns the {@link GL14} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL14;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColor3us.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Unsigned short version of {@link #glSecondaryColor3b SecondaryColor3b}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3us(red:Int16,green:Int16,blue:Int16):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glWindowPos2s.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Short version of {@link #glWindowPos2i WindowPos2i}.
 *
 * @param x the x value
 * @param y the y value
 */
	static public function glWindowPos2s(x:Int16,y:Int16):Void;

}
