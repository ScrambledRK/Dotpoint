package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBGeometryShader4")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/geometry_shader4.txt">ARB_geometry_shader4</a> extension.
 * 
 * <p>ARB_geometry_shader4 defines a new shader type available to be run on the GPU, called a geometry shader. Geometry shaders are run after vertices are
 * transformed, but prior to color clamping, flat shading and clipping.</p>
 * 
 * <p>A geometry shader begins with a single primitive (point, line, triangle). It can read the attributes of any of the vertices in the primitive and use
 * them to generate new primitives. A geometry shader has a fixed output primitive type (point, line strip, or triangle strip) and emits vertices to define
 * a new primitive. A geometry shader can emit multiple disconnected primitives. The primitives emitted by the geometry shader are clipped and then
 * processed like an equivalent OpenGL primitive specified by the application.</p>
 * 
 * <p>Furthermore, ARB_geometry_shader4 provides four additional primitive types: lines with adjacency, line strips with adjacency, separate triangles with
 * adjacency, and triangle strips with adjacency.  Some of the vertices specified in these new primitive types are not part of the ordinary primitives,
 * instead they represent neighboring vertices that are adjacent to the two line segment end points (lines/strips) or the three triangle edges
 * (triangles/tstrips). These vertices can be accessed by geometry shaders and used to match up the vertices emitted by the geometry shader with those of
 * neighboring primitives.</p>
 * 
 * <p>Since geometry shaders expect a specific input primitive type, an error will occur if the application presents primitives of a different type. For
 * example, if a geometry shader expects points, an error will occur at {@link GL11#glBegin Begin} time, if a primitive mode of {@link GL11#GL_TRIANGLES TRIANGLES} is specified.</p>
 * 
 * <p>Promoted to core in {@link GL32 OpenGL 3.2}.</p>
 */
extern class ARBGeometryShader4 
{
/** Accepted by the {@code type} parameter of CreateShader and returned by the {@code params} parameter of GetShaderiv.  */
	inline static public var GL_GEOMETRY_SHADER_ARB:Int = 36313;
/** Accepted by the {@code pname} parameter of ProgramParameteriARB and GetProgramiv.  */
	inline static public var GL_GEOMETRY_VERTICES_OUT_ARB:Int = 36314;
/** Accepted by the {@code pname} parameter of ProgramParameteriARB and GetProgramiv.  */
	inline static public var GL_GEOMETRY_INPUT_TYPE_ARB:Int = 36315;
/** Accepted by the {@code pname} parameter of ProgramParameteriARB and GetProgramiv.  */
	inline static public var GL_GEOMETRY_OUTPUT_TYPE_ARB:Int = 36316;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB:Int = 35881;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB:Int = 36317;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_VARYING_COMPONENTS_ARB:Int = 36318;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB:Int = 36319;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB:Int = 36320;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB:Int = 36321;
/** Accepted by the {@code mode} parameter of Begin, DrawArrays, MultiDrawArrays, DrawElements, MultiDrawElements, and DrawRangeElements.  */
	inline static public var GL_LINES_ADJACENCY_ARB:Int = 10;
/** Accepted by the {@code mode} parameter of Begin, DrawArrays, MultiDrawArrays, DrawElements, MultiDrawElements, and DrawRangeElements.  */
	inline static public var GL_LINE_STRIP_ADJACENCY_ARB:Int = 11;
/** Accepted by the {@code mode} parameter of Begin, DrawArrays, MultiDrawArrays, DrawElements, MultiDrawElements, and DrawRangeElements.  */
	inline static public var GL_TRIANGLES_ADJACENCY_ARB:Int = 12;
/** Accepted by the {@code mode} parameter of Begin, DrawArrays, MultiDrawArrays, DrawElements, MultiDrawElements, and DrawRangeElements.  */
	inline static public var GL_TRIANGLE_STRIP_ADJACENCY_ARB:Int = 13;
/** Returned by CheckFramebufferStatusARB.  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB:Int = 36264;
/** Returned by CheckFramebufferStatusARB.  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB:Int = 36265;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachment- ParameterivARB.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB:Int = 36263;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachment- ParameterivARB.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER:Int = 36052;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetIntegerv, GetFloatv, GetDoublev, and
 * GetBooleanv.
 */
	inline static public var GL_PROGRAM_POINT_SIZE_ARB:Int = 34370;
/** Function address.  */
	public var ProgramParameteriARB:haxe.Int64;
/** Function address.  */
	public var FramebufferTextureARB:haxe.Int64;
/** Function address.  */
	public var FramebufferTextureLayerARB:haxe.Int64;
/** Function address.  */
	public var FramebufferTextureFaceARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glFramebufferTextureLayerARB FramebufferTextureLayerARB}  */
	static public function nglFramebufferTextureLayerARB(target:Int,attachment:Int,texture:Int,level:Int,layer:Int,__functionAddress:haxe.Int64):Void;
/**
 * Sets a program object parameter.
 * 
 * <p>The error {@link GL11#GL_INVALID_VALUE INVALID_VALUE} is generated if {@code pname} is {@link #GL_GEOMETRY_INPUT_TYPE_ARB GEOMETRY_INPUT_TYPE_ARB} and {@code value} is not one of {@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINES LINES},
 * {@link #GL_LINES_ADJACENCY_ARB LINES_ADJACENCY_ARB}, {@link GL11#GL_TRIANGLES TRIANGLES} or {@link #GL_TRIANGLES_ADJACENCY_ARB TRIANGLES_ADJACENCY_ARB}.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_VALUE INVALID_VALUE} is generated if {@code pname} is {@link #GL_GEOMETRY_OUTPUT_TYPE_ARB GEOMETRY_OUTPUT_TYPE_ARB} and {@code value} is not one of {@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP} or
 * {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_VALUE INVALID_VALUE} is generated if {@code pname} is {@link #GL_GEOMETRY_VERTICES_OUT_ARB GEOMETRY_VERTICES_OUT_ARB} and {@code value} is negative.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_VALUE INVALID_VALUE} is generated if {@code pname} is {@link #GL_GEOMETRY_VERTICES_OUT_ARB GEOMETRY_VERTICES_OUT_ARB} and {@code value} exceeds {@link #GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB MAX_GEOMETRY_OUTPUT_VERTICES_ARB}.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_VALUE INVALID_VALUE} is generated if {@code pname} is set to {@link #GL_GEOMETRY_VERTICES_OUT_ARB GEOMETRY_VERTICES_OUT_ARB} and the product of {@code value} and the sum of all
 * components of all active varying variables exceeds {@link #GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB}.</p>
 *
 * @param program the program object
 * @param pname   the parameter to set. One of:<br>{@link #GL_GEOMETRY_VERTICES_OUT_ARB GEOMETRY_VERTICES_OUT_ARB}, {@link #GL_GEOMETRY_INPUT_TYPE_ARB GEOMETRY_INPUT_TYPE_ARB}, {@link #GL_GEOMETRY_OUTPUT_TYPE_ARB GEOMETRY_OUTPUT_TYPE_ARB}
 * @param value   the value being set
 */
	static public function glProgramParameteriARB(program:Int,pname:Int,value:Int):Void;
/** JNI method for {@link #glProgramParameteriARB ProgramParameteriARB}  */
	static public function nglProgramParameteriARB(program:Int,pname:Int,value:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glFramebufferTextureARB FramebufferTextureARB}  */
	static public function nglFramebufferTextureARB(target:Int,attachment:Int,texture:Int,level:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glFramebufferTextureFaceARB FramebufferTextureFaceARB}  */
	static public function nglFramebufferTextureFaceARB(target:Int,attachment:Int,texture:Int,level:Int,face:Int,__functionAddress:haxe.Int64):Void;
/**
 * Attaches a specified level of a texture object as one of the logical buffers of the currently bound framebuffer object, to render directly into the
 * texture image.
 * 
 * <p>If {@code texture} is zero, any image or array of images attached to the attachment point named by {@code attachment} is detached, and the state of the
 * attachment point is reset to its initial values.  {@code level} is ignored if {@code texture} is zero.</p>
 * 
 * <p>If {@code texture} is non-zero, FramebufferTextureARB attaches level {@code level} of the texture object named {@code texture} to the framebuffer
 * attachment point named by {@code attachment}. The error {@link GL11#GL_INVALID_VALUE INVALID_VALUE} is generated if {@code texture} is not the name of a texture object, or if
 * {@code level} is not a supported texture level number for textures of the type corresponding to {@code target}. The error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is
 * generated if {@code texture} is the name of a buffer texture.</p>
 * 
 * <p>If {@code texture} is the name of a three-dimensional texture, cube map texture, or one- or two-dimensional array texture, the texture level attached to
 * the framebuffer attachment point is an array of images, and the framebuffer attachment is considered layered.</p>
 *
 * @param target     the render target. Must be:<br>{@link ARBFramebufferObject#GL_FRAMEBUFFER FRAMEBUFFER}
 * @param attachment must be one of the attachments points of the framebuffer
 * @param texture    the texture object name
 * @param level      the texture level
 */
	static public function glFramebufferTextureARB(target:Int,attachment:Int,texture:Int,level:Int):Void;
/**
 * Operates like {@link #glFramebufferTextureARB FramebufferTextureARB}, except that only a single face of a cube map texture, given by {@code face}, is attached to the attachment
 * point.
 * 
 * <p>If {@code texture} is non-zero, the error {@link GL11#GL_INVALID_VALUE INVALID_VALUE} is generated if {@code texture} is not the name of a texture object. The error
 * {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated unless {@code texture} is zero or the name of a cube map texture.</p>
 *
 * @param target     the render target. Must be:<br>{@link ARBFramebufferObject#GL_FRAMEBUFFER FRAMEBUFFER}
 * @param attachment must be one of the attachments points of the framebuffer
 * @param texture    the texture object name
 * @param level      the texture level
 * @param face       the cube map face. One of:<br>{@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_X TEXTURE_CUBE_MAP_POSITIVE_X}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_X TEXTURE_CUBE_MAP_NEGATIVE_X}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_Y TEXTURE_CUBE_MAP_POSITIVE_Y}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_Y TEXTURE_CUBE_MAP_NEGATIVE_Y}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_Z TEXTURE_CUBE_MAP_POSITIVE_Z}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_Z TEXTURE_CUBE_MAP_NEGATIVE_Z}
 */
	static public function glFramebufferTextureFaceARB(target:Int,attachment:Int,texture:Int,level:Int,face:Int):Void;
/** Returns the {@link ARBGeometryShader4} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBGeometryShader4;
/**
 * Operates like {@link #glFramebufferTextureARB FramebufferTextureARB}, except that only a single layer of the texture level, numbered {@code layer}, is attached to the attachment
 * point.
 * 
 * <p>If {@code texture} is non-zero, the error {@link GL11#GL_INVALID_VALUE INVALID_VALUE} is generated if {@code layer} is negative, or if {@code texture} is not the name of a
 * texture object.  The error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated unless {@code texture} is zero or the name of a three-dimensional or one- or
 * two-dimensional array texture.</p>
 *
 * @param target     the render target. Must be:<br>{@link ARBFramebufferObject#GL_FRAMEBUFFER FRAMEBUFFER}
 * @param attachment must be one of the attachments points of the framebuffer
 * @param texture    the texture object name
 * @param level      the texture level
 * @param layer      the texture layer
 */
	static public function glFramebufferTextureLayerARB(target:Int,attachment:Int,texture:Int,level:Int,layer:Int):Void;

}
