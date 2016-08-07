package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTessellationShader")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/tessellation_shader.txt">ARB_tessellation_shader</a> extension.
 * 
 * <p>This extension introduces new tessellation stages and two new shader types to the OpenGL primitive processing pipeline. These pipeline stages operate on
 * a new basic primitive type, called a patch. A patch consists of a fixed-size collection of vertices, each with per-vertex attributes, plus a number of
 * associated per-patch attributes. Tessellation control shaders transform an input patch specified by the application, computing per-vertex and per-patch
 * attributes for a new output patch. A fixed-function tessellation primitive generator subdivides the patch, and tessellation evaluation shaders are used
 * to compute the position and attributes of each vertex produced by the tessellator.</p>
 * 
 * <p>When tessellation is active, it begins by running the optional tessellation control shader. This shader consumes an input patch and produces a new
 * fixed-size output patch. The output patch consists of an array of vertices, and a set of per-patch attributes. The per-patch attributes include
 * tessellation levels that control how finely the patch will be tessellated. For each patch processed, multiple tessellation control shader invocations
 * are performed -- one per output patch vertex. Each tessellation control shader invocation writes all the attributes of its corresponding output patch
 * vertex. A tessellation control shader may also read the per-vertex outputs of other tessellation control shader invocations, as well as read and write
 * shared per-patch outputs. The tessellation control shader invocations for a single patch effectively run as a group. A built-in {@code barrier()}
 * function is provided to allow synchronization points where no shader invocation will continue until all shader invocations have reached the barrier.</p>
 * 
 * <p>The tessellation primitive generator then decomposes a patch into a new set of primitives using the tessellation levels to determine how finely
 * tessellated the output should be. The primitive generator begins with either a triangle or a quad, and splits each outer edge of the primitive into a
 * number of segments approximately equal to the corresponding element of the outer tessellation level array. The interior of the primitive is tessellated
 * according to elements of the inner tessellation level array. The primitive generator has three modes: "triangles" and "quads" split a triangular or
 * quad-shaped patch into a set of triangles that cover the original patch; "isolines" splits a quad-shaped patch into a set of line strips running across
 * the patch horizontally. Each vertex generated by the tessellation primitive generator is assigned a (u,v) or (u,v,w) coordinate indicating its relative
 * location in the subdivided triangle or quad.</p>
 * 
 * <p>For each vertex produced by the tessellation primitive generator, the tessellation evaluation shader is run to compute its position and other attributes
 * of the vertex, using its (u,v) or (u,v,w) coordinate. When computing final vertex attributes, the tessellation evaluation shader can also read the
 * attributes of any of the vertices of the patch written by the tessellation control shader. Tessellation evaluation shader invocations are completely
 * independent, although all invocations for a single patch share the same collection of input vertices and per-patch attributes.</p>
 * 
 * <p>The tessellator operates on vertices after they have been transformed by a vertex shader. The primitives generated by the tessellator are passed further
 * down the OpenGL pipeline, where they can be used as inputs to geometry shaders, transform feedback, and the rasterizer.</p>
 * 
 * <p>The tessellation control and evaluation shaders are both optional. If neither shader type is present, the tessellation stage has no effect. If no
 * tessellation control shader is present, the input patch provided by the application is passed directly to the tessellation primitive generator, and a
 * set of default tessellation level parameters is used to control primitive generation. In this extension, patches may not be passed beyond the
 * tessellation evaluation shader, and an error is generated if an application provides patches and the current program object contains no tessellation
 * evaluation shader.</p>
 * 
 * <p>Requires {@link GL32 GL32} and GLSL 1.50. Promoted to core in {@link GL40 OpenGL 4.0}.</p>
 */
extern class ARBTessellationShader 
{
/** Accepted by the {@code mode} parameter of Begin and all vertex array functions that implicitly call Begin.  */
	inline static public var GL_PATCHES:Int = 14;
/** Accepted by the {@code pname} parameter of PatchParameteri, GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_PATCH_VERTICES:Int = 36466;
/** Accepted by the {@code pname} parameter of PatchParameterfv, GetBooleanv, GetDoublev, GetFloatv, and GetIntegerv, and GetInteger64v.  */
	inline static public var GL_PATCH_DEFAULT_INNER_LEVEL:Int = 36467;
/** Accepted by the {@code pname} parameter of PatchParameterfv, GetBooleanv, GetDoublev, GetFloatv, and GetIntegerv, and GetInteger64v.  */
	inline static public var GL_PATCH_DEFAULT_OUTER_LEVEL:Int = 36468;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TESS_CONTROL_OUTPUT_VERTICES:Int = 36469;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TESS_GEN_MODE:Int = 36470;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TESS_GEN_SPACING:Int = 36471;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TESS_GEN_VERTEX_ORDER:Int = 36472;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TESS_GEN_POINT_MODE:Int = 36473;
/** Returned by GetProgramiv when {@code pname} is TESS_GEN_MODE.  */
	inline static public var GL_ISOLINES:Int = 36474;
/** Returned by GetProgramiv when {@code pname} is TESS_GEN_SPACING.  */
	inline static public var GL_FRACTIONAL_ODD:Int = 36475;
/** Returned by GetProgramiv when {@code pname} is TESS_GEN_SPACING.  */
	inline static public var GL_FRACTIONAL_EVEN:Int = 36476;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_PATCH_VERTICES:Int = 36477;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_GEN_LEVEL:Int = 36478;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS:Int = 36479;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS:Int = 36480;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS:Int = 36481;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS:Int = 36482;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS:Int = 36483;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_PATCH_COMPONENTS:Int = 36484;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS:Int = 36485;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS:Int = 36486;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS:Int = 36489;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS:Int = 36490;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_INPUT_COMPONENTS:Int = 34924;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS:Int = 34925;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS:Int = 36382;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS:Int = 36383;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER:Int = 34032;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER:Int = 34033;
/** Accepted by the {@code type} parameter of CreateShader and returned by the {@code params} parameter of GetShaderiv.  */
	inline static public var GL_TESS_EVALUATION_SHADER:Int = 36487;
/** Accepted by the {@code type} parameter of CreateShader and returned by the {@code params} parameter of GetShaderiv.  */
	inline static public var GL_TESS_CONTROL_SHADER:Int = 36488;
/** Function address.  */
	public var PatchParameteri:haxe.Int64;
/** Function address.  */
	public var PatchParameterfv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Specifies an array of float values for the specified parameter for patch primitives.
 *
 * @param pname  the name of the parameter to set. One of:<br>{@link #GL_PATCH_DEFAULT_OUTER_LEVEL PATCH_DEFAULT_OUTER_LEVEL}, {@link #GL_PATCH_DEFAULT_INNER_LEVEL PATCH_DEFAULT_INNER_LEVEL}
 * @param values an array containing the new values for the parameter given by {@code pname}
 */
/** Alternative version of: {@link #glPatchParameterfv PatchParameterfv}  */
	static public function glPatchParameterfv(pname:Int,values:java.nio.FloatBuffer):Void;
	@:overload(function (pname:Int,values:java.nio.ByteBuffer):Void {})
/**
 * Specifies the integer value of the specified parameter for patch primitives.
 *
 * @param pname the name of the parameter to set. Must be:<br>{@link #GL_PATCH_VERTICES PATCH_VERTICES}
 * @param value the new value for the parameter given by {@code pname}
 */
	static public function glPatchParameteri(pname:Int,value:Int):Void;
/** Returns the {@link ARBTessellationShader} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTessellationShader;
/** Unsafe version of {@link #glPatchParameterfv PatchParameterfv}  */
	static public function nglPatchParameterfv(pname:Int,values:haxe.Int64):Void;

}
