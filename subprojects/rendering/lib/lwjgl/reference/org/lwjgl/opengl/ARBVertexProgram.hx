package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBVertexProgram")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/vertex_program.txt">ARB_vertex_program</a> extension.
 * 
 * <p>Unextended OpenGL mandates a certain set of configurable per-vertex computations defining vertex transformation, texture coordinate generation and
 * transformation, and lighting. Several extensions have added further per-vertex computations to OpenGL. For example, extensions have defined new texture
 * coordinate generation modes ({@link ARBTextureCubeMap ARB_texture_cube_map}, <a href="http://www.opengl.org/registry/specs/NV/texgen_reflection.txt">NV_texgen_reflection</a>, <a href="http://www.opengl.org/registry/specs/NV/texgen_emboss.txt">NV_texgen_emboss</a>),
 * new vertex transformation modes ({@link ARBVertexBlend ARB_vertex_blend}, <a href="http://www.opengl.org/registry/specs/EXT/vertex_weighting.txt">EXT_vertex_weighting</a>), new lighting modes (OpenGL 1.2's separate
 * specular and rescale normal functionality), several modes for fog distance generation (<a href="http://www.opengl.org/registry/specs/NV/fog_distance.txt">NV_fog_distance</a>), and eye-distance point
 * size attenuation ({@link ARBPointParameters ARB_point_parameters}).</p>
 * 
 * <p>Each such extension adds a small set of relatively inflexible per-vertex computations.</p>
 * 
 * <p>This inflexibility is in contrast to the typical flexibility provided by the underlying programmable floating point engines (whether micro-coded vertex
 * engines, DSPs, or CPUs) that are traditionally used to implement OpenGL's per-vertex computations. The purpose of this extension is to expose to the
 * OpenGL application writer a significant degree of per-vertex programmability for computing vertex parameters.</p>
 * 
 * <p>For the purposes of discussing this extension, a vertex program is a sequence of floating-point 4-component vector operations that determines how a set
 * of program parameters (defined outside of OpenGL's {@link GL11#glBegin Begin}/{@link GL11#glEnd End} pair) and an input set of per-vertex parameters are transformed to a set of
 * per-vertex result parameters.</p>
 * 
 * <p>The per-vertex computations for standard OpenGL given a particular set of lighting and texture coordinate generation modes (along with any state for
 * extensions defining per-vertex computations) is, in essence, a vertex program. However, the sequence of operations is defined implicitly by the current
 * OpenGL state settings rather than defined explicitly as a sequence of instructions.</p>
 * 
 * <p>This extension provides an explicit mechanism for defining vertex program instruction sequences for application-defined vertex programs. In order to
 * define such vertex programs, this extension defines a vertex programming model including a floating-point 4-component vector instruction set and a
 * relatively large set of floating-point 4-component registers.</p>
 * 
 * <p>The extension's vertex programming model is designed for efficient hardware implementation and to support a wide variety of vertex programs. By design,
 * the entire set of existing vertex programs defined by existing OpenGL per-vertex computation extensions can be implemented using the extension's vertex
 * programming model.</p>
 */
extern class ARBVertexProgram 
{
/**
 * Accepted by the {@code cap} parameter of Disable, Enable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of ProgramStringARB, BindProgramARB, ProgramEnvParameter4[df][v]ARB, ProgramLocalParameter4[df][v]ARB,
 * GetProgramEnvParameter[df]vARB, GetProgramLocalParameter[df]vARB, GetProgramivARB, and GetProgramStringARB.
 */
	inline static public var GL_VERTEX_PROGRAM_ARB:Int = 34336;
/**
 * Accepted by the {@code cap} parameter of Disable, Enable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_VERTEX_PROGRAM_POINT_SIZE_ARB:Int = 34370;
/**
 * Accepted by the {@code cap} parameter of Disable, Enable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_VERTEX_PROGRAM_TWO_SIDE_ARB:Int = 34371;
/**
 * Accepted by the {@code cap} parameter of Disable, Enable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_COLOR_SUM_ARB:Int = 33880;
/** Accepted by the {@code format} parameter of ProgramStringARB.  */
	inline static public var GL_PROGRAM_FORMAT_ASCII_ARB:Int = 34933;
/** Accepted by the {@code pname} parameter of GetVertexAttrib[dfi]vARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB:Int = 36215;
/** Accepted by the {@code pname} parameter of GetVertexAttrib[dfi]vARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB:Int = 34339;
/** Accepted by the {@code pname} parameter of GetVertexAttrib[dfi]vARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB:Int = 34340;
/** Accepted by the {@code pname} parameter of GetVertexAttrib[dfi]vARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB:Int = 36218;
/** Accepted by the {@code pname} parameter of GetVertexAttrib[dfi]vARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB:Int = 34922;
/** Accepted by the {@code pname} parameter of GetVertexAttrib[dfi]vARB.  */
	inline static public var GL_CURRENT_VERTEX_ATTRIB_ARB:Int = 34342;
/** Accepted by the {@code pname} parameter of GetVertexAttribPointervARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB:Int = 34373;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_LENGTH_ARB:Int = 36222;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_FORMAT_ARB:Int = 34934;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_BINDING_ARB:Int = 34423;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_INSTRUCTIONS_ARB:Int = 36225;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_INSTRUCTIONS_ARB:Int = 36226;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB:Int = 34978;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB:Int = 34979;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_TEMPORARIES_ARB:Int = 34980;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_TEMPORARIES_ARB:Int = 36230;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_NATIVE_TEMPORARIES_ARB:Int = 34982;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB:Int = 36232;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_PARAMETERS_ARB:Int = 34984;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_PARAMETERS_ARB:Int = 34985;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_NATIVE_PARAMETERS_ARB:Int = 34986;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB:Int = 34987;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_ATTRIBS_ARB:Int = 34988;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_ATTRIBS_ARB:Int = 34989;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_NATIVE_ATTRIBS_ARB:Int = 34990;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB:Int = 34991;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_ADDRESS_REGISTERS_ARB:Int = 34992;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB:Int = 34993;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB:Int = 34994;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB:Int = 34995;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB:Int = 34996;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_MAX_PROGRAM_ENV_PARAMETERS_ARB:Int = 34997;
/** Accepted by the {@code pname} parameter of GetProgramivARB.  */
	inline static public var GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB:Int = 34998;
/** Accepted by the {@code pname} parameter of GetProgramStringARB.  */
	inline static public var GL_PROGRAM_STRING_ARB:Int = 34344;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_PROGRAM_ERROR_POSITION_ARB:Int = 34379;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CURRENT_MATRIX_ARB:Int = 34369;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TRANSPOSE_CURRENT_MATRIX_ARB:Int = 34999;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CURRENT_MATRIX_STACK_DEPTH_ARB:Int = 34368;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_ATTRIBS_ARB:Int = 34921;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_PROGRAM_MATRICES_ARB:Int = 34351;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB:Int = 34350;
/** Accepted by the {@code name} parameter of GetString.  */
	inline static public var GL_PROGRAM_ERROR_STRING_ARB:Int = 34932;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX0_ARB:Int = 35008;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX1_ARB:Int = 35009;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX2_ARB:Int = 35010;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX3_ARB:Int = 35011;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX4_ARB:Int = 35012;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX5_ARB:Int = 35013;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX6_ARB:Int = 35014;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX7_ARB:Int = 35015;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX8_ARB:Int = 35016;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX9_ARB:Int = 35017;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX10_ARB:Int = 35018;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX11_ARB:Int = 35019;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX12_ARB:Int = 35020;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX13_ARB:Int = 35021;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX14_ARB:Int = 35022;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX15_ARB:Int = 35023;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX16_ARB:Int = 35024;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX17_ARB:Int = 35025;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX18_ARB:Int = 35026;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX19_ARB:Int = 35027;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX20_ARB:Int = 35028;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX21_ARB:Int = 35029;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX22_ARB:Int = 35030;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX23_ARB:Int = 35031;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX24_ARB:Int = 35032;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX25_ARB:Int = 35033;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX26_ARB:Int = 35034;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX27_ARB:Int = 35035;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX28_ARB:Int = 35036;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX29_ARB:Int = 35037;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX30_ARB:Int = 35038;
/** Accepted by the {@code mode} parameter of MatrixMode.  */
	inline static public var GL_MATRIX31_ARB:Int = 35039;
/** Function address.  */
	public var VertexAttrib1sARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1fARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1dARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2sARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2fARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2dARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3sARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3fARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3dARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4sARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4fARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4dARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NubARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1svARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1fvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1dvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2svARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2fvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2dvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3svARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3fvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3dvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4fvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4bvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4svARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4ivARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4ubvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4usvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4uivARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4dvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NbvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NsvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NivARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NubvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NusvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NuivARB:haxe.Int64;
/** Function address.  */
	public var VertexAttribPointerARB:haxe.Int64;
/** Function address.  */
	public var EnableVertexAttribArrayARB:haxe.Int64;
/** Function address.  */
	public var DisableVertexAttribArrayARB:haxe.Int64;
/** Function address.  */
	public var ProgramStringARB:haxe.Int64;
/** Function address.  */
	public var BindProgramARB:haxe.Int64;
/** Function address.  */
	public var DeleteProgramsARB:haxe.Int64;
/** Function address.  */
	public var GenProgramsARB:haxe.Int64;
/** Function address.  */
	public var ProgramEnvParameter4dARB:haxe.Int64;
/** Function address.  */
	public var ProgramEnvParameter4dvARB:haxe.Int64;
/** Function address.  */
	public var ProgramEnvParameter4fARB:haxe.Int64;
/** Function address.  */
	public var ProgramEnvParameter4fvARB:haxe.Int64;
/** Function address.  */
	public var ProgramLocalParameter4dARB:haxe.Int64;
/** Function address.  */
	public var ProgramLocalParameter4dvARB:haxe.Int64;
/** Function address.  */
	public var ProgramLocalParameter4fARB:haxe.Int64;
/** Function address.  */
	public var ProgramLocalParameter4fvARB:haxe.Int64;
/** Function address.  */
	public var GetProgramEnvParameterfvARB:haxe.Int64;
/** Function address.  */
	public var GetProgramEnvParameterdvARB:haxe.Int64;
/** Function address.  */
	public var GetProgramLocalParameterfvARB:haxe.Int64;
/** Function address.  */
	public var GetProgramLocalParameterdvARB:haxe.Int64;
/** Function address.  */
	public var GetProgramivARB:haxe.Int64;
/** Function address.  */
	public var GetProgramStringARB:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribfvARB:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribdvARB:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribivARB:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribPointervARB:haxe.Int64;
/** Function address.  */
	public var IsProgramARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Pointer version of {@link #glVertexAttrib1dARB VertexAttrib1dARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib1dvARB VertexAttrib1dvARB}  */
	static public function glVertexAttrib1dvARB(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttrib2sARB VertexAttrib2sARB}  */
	static public function nglVertexAttrib2sARB(index:Int,x:Int16,y:Int16,__functionAddress:haxe.Int64):Void;
/**
 * Integer version of {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib4ivARB VertexAttrib4ivARB}  */
	static public function glVertexAttrib4ivARB(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4usvARB VertexAttrib4usvARB}  */
/** JNI method for {@link #glVertexAttrib4usvARB VertexAttrib4usvARB}  */
	static public function nglVertexAttrib4usvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Double version of {@link #glProgramEnvParameter4fARB ProgramEnvParameter4fARB}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param x      the {@code x} parameter component
 * @param y      the {@code y} parameter component
 * @param z      the {@code z} parameter component
 * @param w      the {@code w} parameter component
 */
	static public function glProgramEnvParameter4dARB(target:Int,index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/** JNI method for {@link #glVertexAttrib1dARB VertexAttrib1dARB}  */
	static public function nglVertexAttrib1dARB(index:Int,x:Float,__functionAddress:haxe.Int64):Void;
/**
 * Fixed-point unsigned byte version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 * @param y     the {@code y} attribute component
 * @param z     the {@code z} attribute component
 * @param w     the {@code w} attribute component
 */
	static public function glVertexAttrib4NubARB(index:Int,x:Int8,y:Int8,z:Int8,w:Int8):Void;
/**
 * Fixed-point version of {@link #glVertexAttrib4ivARB VertexAttrib4ivARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib4NivARB VertexAttrib4NivARB}  */
	static public function glVertexAttrib4NivARB(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetProgramEnvParameterdvARB GetProgramEnvParameterdvARB}  */
/** JNI method for {@link #glGetProgramEnvParameterdvARB GetProgramEnvParameterdvARB}  */
	static public function nglGetProgramEnvParameterdvARB(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glProgramEnvParameter4dARB ProgramEnvParameter4dARB}  */
	static public function nglProgramEnvParameter4dARB(target:Int,index:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/**
 * Obtains the vertex attribute state named by {@code pname} for the vertex attribute numbered {@code index} and places the information in the array
 * {@code params}.
 *
 * @param index  the vertex attribute index
 * @param pname  the parameter to query. Must be:<br>{@link #GL_CURRENT_VERTEX_ATTRIB_ARB CURRENT_VERTEX_ATTRIB_ARB}
 * @param params an array in which to place the parameter value
 */
/** Alternative version of: {@link #glGetVertexAttribfvARB GetVertexAttribfvARB}  */
	static public function glGetVertexAttribfvARB(index:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Specifies the {@code x} and {@code y} components of the current vertex attribute numbered {@code index}. Component {@code z} is set to 0 and {@code w} to 1.
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 * @param y     the {@code y} attribute component
 */
	static public function glVertexAttrib2fARB(index:Int,x:Float,y:Float):Void;
/**
 * Creates a named program object by binding an unused program object name to a valid program target. Also can be used to bind an existing program object
 * to a program target.
 *
 * @param target  the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param program the program object to bind. If {@code program} is zero, the default program object for {@code target} is bound.  If {@code program} is the name of
 *                an existing program object whose associated program target is {@code target}, the named program object is bound.
 */
	static public function glBindProgramARB(target:Int,program:Int):Void;
/**
 * Pointer version of {@link #glVertexAttrib2dARB VertexAttrib2dARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib2dvARB VertexAttrib2dvARB}  */
	static public function glVertexAttrib2dvARB(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetProgramivARB GetProgramivARB}  */
	static public function glGetProgramiARB(target:Int,pname:Int):Int;
/**
 * Pointer version of {@link #glVertexAttrib1fARB VertexAttrib1fARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib1fvARB VertexAttrib1fvARB}  */
	static public function glVertexAttrib1fvARB(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttrib4fARB VertexAttrib4fARB}  */
	static public function nglVertexAttrib4fARB(index:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/**
 * Fixed-point version of {@link #glVertexAttrib4bvARB VertexAttrib4bvARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
	static public function glVertexAttrib4NbvARB(index:Int,v:java.nio.ByteBuffer):Void;
/**
 * Double version of {@link #glGetProgramEnvParameterfvARB GetProgramEnvParameterfvARB}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param params a buffer in which to place the current parameter value
 */
/** Alternative version of: {@link #glGetProgramEnvParameterdvARB GetProgramEnvParameterdvARB}  */
	static public function glGetProgramEnvParameterdvARB(target:Int,index:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4NubvARB VertexAttrib4NubvARB}  */
/** JNI method for {@link #glVertexAttrib4NubvARB VertexAttrib4NubvARB}  */
	static public function nglVertexAttrib4NubvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttrib3dARB VertexAttrib3dARB}  */
	static public function nglVertexAttrib3dARB(index:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version of {@link #glVertexAttrib2fARB VertexAttrib2fARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib2fvARB VertexAttrib2fvARB}  */
	static public function glVertexAttrib2fvARB(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Double version of {@link #glGetVertexAttribfvARB GetVertexAttribfvARB}.
 *
 * @param index  the vertex attribute index
 * @param pname  the parameter to query. Must be:<br>{@link #GL_CURRENT_VERTEX_ATTRIB_ARB CURRENT_VERTEX_ATTRIB_ARB}
 * @param params an array in which to place the parameter value
 */
/** Alternative version of: {@link #glGetVertexAttribdvARB GetVertexAttribdvARB}  */
	static public function glGetVertexAttribdvARB(index:Int,pname:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4svARB VertexAttrib4svARB}  */
/** JNI method for {@link #glVertexAttrib4svARB VertexAttrib4svARB}  */
	static public function nglVertexAttrib4svARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glProgramLocalParameter4dARB ProgramLocalParameter4dARB}  */
	static public function nglProgramLocalParameter4dARB(target:Int,index:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttrib4NubARB VertexAttrib4NubARB}  */
	static public function nglVertexAttrib4NubARB(index:Int,x:Int8,y:Int8,z:Int8,w:Int8,__functionAddress:haxe.Int64):Void;
/**
 * Specifies the current vertex attribute numbered {@code index}.
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 * @param y     the {@code y} attribute component
 * @param z     the {@code z} attribute component
 * @param w     the {@code w} attribute component
 */
	static public function glVertexAttrib4fARB(index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/** Unsafe version of {@link #glGetVertexAttribivARB GetVertexAttribivARB}  */
/** JNI method for {@link #glGetVertexAttribivARB GetVertexAttribivARB}  */
	static public function nglGetVertexAttribivARB(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * Double version of {@link #glGetProgramLocalParameterfvARB GetProgramLocalParameterfvARB}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param params a buffer in which to place the current parameter value
 */
/** Alternative version of: {@link #glGetProgramLocalParameterdvARB GetProgramLocalParameterdvARB}  */
	static public function glGetProgramLocalParameterdvARB(target:Int,index:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib3svARB VertexAttrib3svARB}  */
/** JNI method for {@link #glVertexAttrib3svARB VertexAttrib3svARB}  */
	static public function nglVertexAttrib3svARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib1sARB VertexAttrib1sARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib1svARB VertexAttrib1svARB}  */
	static public function glVertexAttrib1svARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4NusvARB VertexAttrib4NusvARB}  */
/** JNI method for {@link #glVertexAttrib4NusvARB VertexAttrib4NusvARB}  */
	static public function nglVertexAttrib4NusvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Single return value version of: {@link #glGenProgramsARB GenProgramsARB}  */
/** Alternative version of: {@link #glGenProgramsARB GenProgramsARB}  */
/**
 * Returns {@code n} currently unused program names in {@code programs}. These names are marked as used, for the purposes of GenProgramsARB only, but
 * objects are created only when they are first bound using {@link #glBindProgramARB BindProgramARB}.
 *
 * @param n        the number of program names to genereate
 * @param programs an array in which to return the generated program names
 */
	static public function glGenProgramsARB(n:Int,programs:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (programs:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetVertexAttribPointervARB GetVertexAttribPointervARB}  */
	static public function glGetVertexAttribPointerARB(index:Int,pname:Int):haxe.Int64;
/**
 * Short version of {@link #glVertexAttrib1fARB VertexAttrib1fARB}
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 */
	static public function glVertexAttrib1sARB(index:Int,x:Int16):Void;
/**
 * Pointer version of {@link #glProgramEnvParameter4fARB ProgramEnvParameter4fARB}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param params a buffer from which to read the parameter value
 */
/** Alternative version of: {@link #glProgramEnvParameter4fvARB ProgramEnvParameter4fvARB}  */
	static public function glProgramEnvParameter4fvARB(target:Int,index:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glDisableVertexAttribArrayARB DisableVertexAttribArrayARB}  */
	static public function nglDisableVertexAttribArrayARB(index:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib1dvARB VertexAttrib1dvARB}  */
/** JNI method for {@link #glVertexAttrib1dvARB VertexAttrib1dvARB}  */
	static public function nglVertexAttrib1dvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Double version of {@link #glVertexAttrib2fARB VertexAttrib2fARB}
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 * @param y     the {@code y} attribute component
 */
	static public function glVertexAttrib2dARB(index:Int,x:Float,y:Float):Void;
/**
 * Obtains the program string for the program object bound to {@code target} and places the information in the array {@code string}.
 * 
 * <p>{@code n} ubytes are returned into the array program where {@code n} is the length of the program in ubytes, as returned by {@link #glGetProgramivARB GetProgramivARB} when
 * {@code pname} is {@link #GL_PROGRAM_LENGTH_ARB PROGRAM_LENGTH_ARB}. The program string is always returned using the format given when the program string was specified.</p>
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param pname  the parameter to query. Must be:<br>{@link #GL_PROGRAM_STRING_ARB PROGRAM_STRING_ARB}
 * @param string an array in which to place the program string
 */
	static public function glGetProgramStringARB(target:Int,pname:Int,string:java.nio.ByteBuffer):Void;
/**
 * Pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}  */
	static public function glVertexAttrib4fvARB(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glBindProgramARB BindProgramARB}  */
	static public function nglBindProgramARB(target:Int,program:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib1fvARB VertexAttrib1fvARB}  */
/** JNI method for {@link #glVertexAttrib1fvARB VertexAttrib1fvARB}  */
	static public function nglVertexAttrib1fvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glEnableVertexAttribArrayARB EnableVertexAttribArrayARB}  */
	static public function nglEnableVertexAttribArrayARB(index:Int,__functionAddress:haxe.Int64):Void;
/**
 * Fixed-point unsigned version of {@link #glVertexAttrib4svARB VertexAttrib4svARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib4NusvARB VertexAttrib4NusvARB}  */
	static public function glVertexAttrib4NusvARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Obtains program state for the program target {@code target}, writing the state into the array given by {@code params}. GetProgramivARB can be used to
 * determine the properties of the currently bound program object or implementation limits for {@code target}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param pname  the parameter to query. One of:<br>{@link #GL_PROGRAM_LENGTH_ARB PROGRAM_LENGTH_ARB}, {@link #GL_PROGRAM_FORMAT_ARB PROGRAM_FORMAT_ARB}, {@link #GL_PROGRAM_BINDING_ARB PROGRAM_BINDING_ARB}, {@link #GL_PROGRAM_INSTRUCTIONS_ARB PROGRAM_INSTRUCTIONS_ARB}, {@link #GL_MAX_PROGRAM_INSTRUCTIONS_ARB MAX_PROGRAM_INSTRUCTIONS_ARB}, {@link #GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB PROGRAM_NATIVE_INSTRUCTIONS_ARB}, {@link #GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB}, {@link #GL_PROGRAM_TEMPORARIES_ARB PROGRAM_TEMPORARIES_ARB}, {@link #GL_MAX_PROGRAM_TEMPORARIES_ARB MAX_PROGRAM_TEMPORARIES_ARB}, {@link #GL_PROGRAM_NATIVE_TEMPORARIES_ARB PROGRAM_NATIVE_TEMPORARIES_ARB}, {@link #GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB MAX_PROGRAM_NATIVE_TEMPORARIES_ARB}, {@link #GL_PROGRAM_PARAMETERS_ARB PROGRAM_PARAMETERS_ARB}, {@link #GL_MAX_PROGRAM_PARAMETERS_ARB MAX_PROGRAM_PARAMETERS_ARB}, {@link #GL_PROGRAM_NATIVE_PARAMETERS_ARB PROGRAM_NATIVE_PARAMETERS_ARB}, {@link #GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB MAX_PROGRAM_NATIVE_PARAMETERS_ARB}, {@link #GL_PROGRAM_ATTRIBS_ARB PROGRAM_ATTRIBS_ARB}, {@link #GL_MAX_PROGRAM_ATTRIBS_ARB MAX_PROGRAM_ATTRIBS_ARB}, {@link #GL_PROGRAM_NATIVE_ATTRIBS_ARB PROGRAM_NATIVE_ATTRIBS_ARB}, {@link #GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB MAX_PROGRAM_NATIVE_ATTRIBS_ARB}, {@link #GL_PROGRAM_ADDRESS_REGISTERS_ARB PROGRAM_ADDRESS_REGISTERS_ARB}, {@link #GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB MAX_PROGRAM_ADDRESS_REGISTERS_ARB}, {@link #GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB}, {@link #GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB}, {@link #GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB MAX_PROGRAM_LOCAL_PARAMETERS_ARB}, {@link #GL_MAX_PROGRAM_ENV_PARAMETERS_ARB MAX_PROGRAM_ENV_PARAMETERS_ARB}, {@link #GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB PROGRAM_UNDER_NATIVE_LIMITS_ARB}
 * @param params an array in which to place the parameter value
 */
/** Alternative version of: {@link #glGetProgramivARB GetProgramivARB}  */
	static public function glGetProgramivARB(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4NsvARB VertexAttrib4NsvARB}  */
/** JNI method for {@link #glVertexAttrib4NsvARB VertexAttrib4NsvARB}  */
	static public function nglVertexAttrib4NsvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetProgramEnvParameterfvARB GetProgramEnvParameterfvARB}  */
/** JNI method for {@link #glGetProgramEnvParameterfvARB GetProgramEnvParameterfvARB}  */
	static public function nglGetProgramEnvParameterfvARB(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/**
 * Unsigned short version of {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib4usvARB VertexAttrib4usvARB}  */
	static public function glVertexAttrib4usvARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Short version of {@link #glVertexAttrib3fARB VertexAttrib3fARB}
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 * @param y     the {@code y} attribute component
 * @param z     the {@code z} attribute component
 */
	static public function glVertexAttrib3sARB(index:Int,x:Int16,y:Int16,z:Int16):Void;
/** JNI method for {@link #glProgramLocalParameter4fARB ProgramLocalParameter4fARB}  */
	static public function nglProgramLocalParameter4fARB(target:Int,index:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttrib4sARB VertexAttrib4sARB}  */
	static public function nglVertexAttrib4sARB(index:Int,x:Int16,y:Int16,z:Int16,w:Int16,__functionAddress:haxe.Int64):Void;
/**
 * Double version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 * @param y     the {@code y} attribute component
 * @param z     the {@code z} attribute component
 * @param w     the {@code w} attribute component
 */
	static public function glVertexAttrib4dARB(index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/**
 * Obtain the current value for the program local parameter numbered {@code index} for the specified program target {@code target}, and places the
 * information in the array {@code params}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param params a buffer in which to place the current parameter value
 */
/** Alternative version of: {@link #glGetProgramLocalParameterfvARB GetProgramLocalParameterfvARB}  */
	static public function glGetProgramLocalParameterfvARB(target:Int,index:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttrib2fARB VertexAttrib2fARB}  */
	static public function nglVertexAttrib2fARB(index:Int,x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/**
 * Integer version of {@link #glGetVertexAttribfvARB GetVertexAttribfvARB}.
 *
 * @param index  the vertex attribute index
 * @param pname  the parameter to query. One of:<br>{@link #GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB VERTEX_ATTRIB_ARRAY_ENABLED_ARB}, {@link #GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB VERTEX_ATTRIB_ARRAY_SIZE_ARB}, {@link #GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB VERTEX_ATTRIB_ARRAY_STRIDE_ARB}, {@link #GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB VERTEX_ATTRIB_ARRAY_TYPE_ARB}, {@link #GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB}, {@link #GL_CURRENT_VERTEX_ATTRIB_ARB CURRENT_VERTEX_ATTRIB_ARB}
 * @param params an array in which to place the parameter value
 */
/** Alternative version of: {@link #glGetVertexAttribivARB GetVertexAttribivARB}  */
	static public function glGetVertexAttribivARB(index:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glProgramEnvParameter4dARB ProgramEnvParameter4dARB}
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param params a buffer from which to read the parameter value
 */
/** Alternative version of: {@link #glProgramEnvParameter4dvARB ProgramEnvParameter4dvARB}  */
	static public function glProgramEnvParameter4dvARB(target:Int,index:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}  */
/** JNI method for {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}  */
	static public function nglVertexAttrib4fvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Specifies the {@code x} component of the current vertex attribute numbered {@code index}. Components {@code y} and {@code z} are set to 0 and {@code w} to 1.
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 */
	static public function glVertexAttrib1fARB(index:Int,x:Float):Void;
/**
 * Pointer version of {@link #glProgramLocalParameter4fARB ProgramLocalParameter4fARB}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param params a buffer from which to read the parameter value
 */
/** Alternative version of: {@link #glProgramLocalParameter4fvARB ProgramLocalParameter4fvARB}  */
	static public function glProgramLocalParameter4fvARB(target:Int,index:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetProgramivARB GetProgramivARB}  */
/** JNI method for {@link #glGetProgramivARB GetProgramivARB}  */
	static public function nglGetProgramivARB(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * Fixed-point version of {@link #glVertexAttrib4svARB VertexAttrib4svARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib4NsvARB VertexAttrib4NsvARB}  */
	static public function glVertexAttrib4NsvARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttrib3sARB VertexAttrib3sARB}  */
	static public function nglVertexAttrib3sARB(index:Int,x:Int16,y:Int16,z:Int16,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib3dvARB VertexAttrib3dvARB}  */
/** JNI method for {@link #glVertexAttrib3dvARB VertexAttrib3dvARB}  */
	static public function nglVertexAttrib3dvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Fixed-point unsigned version of {@link #glVertexAttrib4bvARB VertexAttrib4bvARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
	static public function glVertexAttrib4NubvARB(index:Int,v:java.nio.ByteBuffer):Void;
/**
 * Unsigned byte version of {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
	static public function glVertexAttrib4ubvARB(index:Int,v:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glGetProgramStringARB GetProgramStringARB}  */
/** JNI method for {@link #glGetProgramStringARB GetProgramStringARB}  */
	static public function nglGetProgramStringARB(target:Int,pname:Int,string:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,string:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetVertexAttribfvARB GetVertexAttribfvARB}  */
/** JNI method for {@link #glGetVertexAttribfvARB GetVertexAttribfvARB}  */
	static public function nglGetVertexAttribfvARB(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib4dvARB VertexAttrib4dvARB}  */
/** JNI method for {@link #glVertexAttrib4dvARB VertexAttrib4dvARB}  */
	static public function nglVertexAttrib4dvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetVertexAttribivARB GetVertexAttribivARB}  */
	static public function glGetVertexAttribiARB(index:Int,pname:Int):Int;
/** JNI method for {@link #glIsProgramARB IsProgramARB}  */
	static public function nglIsProgramARB(program:Int,__functionAddress:haxe.Int64):Bool;
/** Unsafe version of {@link #glVertexAttrib2fvARB VertexAttrib2fvARB}  */
/** JNI method for {@link #glVertexAttrib2fvARB VertexAttrib2fvARB}  */
	static public function nglVertexAttrib2fvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Fixed-point unsigned version of {@link #glVertexAttrib4ivARB VertexAttrib4ivARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib4NuivARB VertexAttrib4NuivARB}  */
	static public function glVertexAttrib4NuivARB(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Obtains the pointer named {@code pname} for vertex attribute numbered {@code index} and places the information in the array {@code pointer}.
 *
 * @param index   the vertex attribute index
 * @param pname   the parameter to query. Must be:<br>{@link #GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB VERTEX_ATTRIB_ARRAY_POINTER_ARB}
 * @param pointer an array in which to place the vertex attribute array pointer
 */
/** Alternative version of: {@link #glGetVertexAttribPointervARB GetVertexAttribPointervARB}  */
	static public function glGetVertexAttribPointervARB(index:Int,pname:Int,pointer:org.lwjgl.PointerBuffer):Void;
	@:overload(function (index:Int,pname:Int,pointer:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexAttrib4sARB VertexAttrib4sARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib4svARB VertexAttrib4svARB}  */
	static public function glVertexAttrib4svARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4ubvARB VertexAttrib4ubvARB}  */
/** JNI method for {@link #glVertexAttrib4ubvARB VertexAttrib4ubvARB}  */
	static public function nglVertexAttrib4ubvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib2dvARB VertexAttrib2dvARB}  */
/** JNI method for {@link #glVertexAttrib2dvARB VertexAttrib2dvARB}  */
	static public function nglVertexAttrib2dvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Specifies the {@code x}, {@code y} and {@code z} components of the current vertex attribute numbered {@code index}. Component {@code w} is set to 1.
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 * @param y     the {@code y} attribute component
 * @param z     the {@code z} attribute component
 */
	static public function glVertexAttrib3fARB(index:Int,x:Float,y:Float,z:Float):Void;
/** Unsafe version of {@link #glProgramLocalParameter4fvARB ProgramLocalParameter4fvARB}  */
/** JNI method for {@link #glProgramLocalParameter4fvARB ProgramLocalParameter4fvARB}  */
	static public function nglProgramLocalParameter4fvARB(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glDeleteProgramsARB DeleteProgramsARB}  */
/** JNI method for {@link #glDeleteProgramsARB DeleteProgramsARB}  */
	static public function nglDeleteProgramsARB(n:Int,programs:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,programs:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib3fvARB VertexAttrib3fvARB}  */
/** JNI method for {@link #glVertexAttrib3fvARB VertexAttrib3fvARB}  */
	static public function nglVertexAttrib3fvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Alternative version of: {@link #glDeleteProgramsARB DeleteProgramsARB}  */
/**
 * Deletes program objects.
 *
 * @param n        the number of program object to delete
 * @param programs an array of {@code n} program objects to be deleted
 */
	static public function glDeleteProgramsARB(n:Int,programs:java.nio.ByteBuffer):Void;
	@:overload(function (programs:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib1svARB VertexAttrib1svARB}  */
/** JNI method for {@link #glVertexAttrib1svARB VertexAttrib1svARB}  */
	static public function nglVertexAttrib1svARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib3sARB VertexAttrib3sARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib3svARB VertexAttrib3svARB}  */
	static public function glVertexAttrib3svARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glProgramEnvParameter4fvARB ProgramEnvParameter4fvARB}  */
/** JNI method for {@link #glProgramEnvParameter4fvARB ProgramEnvParameter4fvARB}  */
	static public function nglProgramEnvParameter4fvARB(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib4ivARB VertexAttrib4ivARB}  */
/** JNI method for {@link #glVertexAttrib4ivARB VertexAttrib4ivARB}  */
	static public function nglVertexAttrib4ivARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttrib1sARB VertexAttrib1sARB}  */
	static public function nglVertexAttrib1sARB(index:Int,x:Int16,__functionAddress:haxe.Int64):Void;
/**
 * Updates the values of the program local parameter numbered {@code index} for the specified program target {@code target}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param x      the {@code x} parameter component
 * @param y      the {@code y} parameter component
 * @param z      the {@code z} parameter component
 * @param w      the {@code w} parameter component
 */
	static public function glProgramLocalParameter4fARB(target:Int,index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/** Unsafe version of {@link #glVertexAttrib4bvARB VertexAttrib4bvARB}  */
/** JNI method for {@link #glVertexAttrib4bvARB VertexAttrib4bvARB}  */
	static public function nglVertexAttrib4bvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramLocalParameter4dvARB ProgramLocalParameter4dvARB}  */
/** JNI method for {@link #glProgramLocalParameter4dvARB ProgramLocalParameter4dvARB}  */
	static public function nglProgramLocalParameter4dvARB(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glProgramLocalParameter4dARB ProgramLocalParameter4dARB}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param params a buffer from which to read the parameter value
 */
/** Alternative version of: {@link #glProgramLocalParameter4dvARB ProgramLocalParameter4dvARB}  */
	static public function glProgramLocalParameter4dvARB(target:Int,index:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttrib2dARB VertexAttrib2dARB}  */
	static public function nglVertexAttrib2dARB(index:Int,x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib4uivARB VertexAttrib4uivARB}  */
/** JNI method for {@link #glVertexAttrib4uivARB VertexAttrib4uivARB}  */
	static public function nglVertexAttrib4uivARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib4dARB VertexAttrib4dARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib4dvARB VertexAttrib4dvARB}  */
	static public function glVertexAttrib4dvARB(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glProgramStringARB ProgramStringARB}  */
/** JNI method for {@link #glProgramStringARB ProgramStringARB}  */
	static public function nglProgramStringARB(target:Int,format:Int,len:Int,string:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,format:Int,len:Int,string:haxe.Int64):Void {})
/**
 * Obtain the current value for the program environment parameter numbered {@code index} for the specified program target {@code target}, and places the
 * information in the array {@code params}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param params a buffer in which to place the current parameter value
 */
/** Alternative version of: {@link #glGetProgramEnvParameterfvARB GetProgramEnvParameterfvARB}  */
	static public function glGetProgramEnvParameterfvARB(target:Int,index:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexAttrib3fARB VertexAttrib3fARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib3fvARB VertexAttrib3fvARB}  */
	static public function glVertexAttrib3fvARB(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetProgramLocalParameterfvARB GetProgramLocalParameterfvARB}  */
/** JNI method for {@link #glGetProgramLocalParameterfvARB GetProgramLocalParameterfvARB}  */
	static public function nglGetProgramLocalParameterfvARB(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/**
 * Double version of {@link #glVertexAttrib1fARB VertexAttrib1fARB}
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 */
	static public function glVertexAttrib1dARB(index:Int,x:Float):Void;
/**
 * Enables an individual generic vertex attribute array.
 *
 * @param index the vertex attribute index
 */
	static public function glEnableVertexAttribArrayARB(index:Int):Void;
/** JNI method for {@link #glVertexAttrib1fARB VertexAttrib1fARB}  */
	static public function nglVertexAttrib1fARB(index:Int,x:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib4NbvARB VertexAttrib4NbvARB}  */
/** JNI method for {@link #glVertexAttrib4NbvARB VertexAttrib4NbvARB}  */
	static public function nglVertexAttrib4NbvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib3dARB VertexAttrib3dARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib3dvARB VertexAttrib3dvARB}  */
	static public function glVertexAttrib3dvARB(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Updates the values of the program environment parameter numbered {@code index} for the specified program target {@code target}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param x      the {@code x} parameter component
 * @param y      the {@code y} parameter component
 * @param z      the {@code z} parameter component
 * @param w      the {@code w} parameter component
 */
	static public function glProgramEnvParameter4fARB(target:Int,index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/** Unsafe version of {@link #glProgramEnvParameter4dvARB ProgramEnvParameter4dvARB}  */
/** JNI method for {@link #glProgramEnvParameter4dvARB ProgramEnvParameter4dvARB}  */
	static public function nglProgramEnvParameter4dvARB(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/**
 * Returns {@link GL11#GL_TRUE TRUE} if {@code program} is the name of a program object. If {@code program} is zero or is a non-zero value that is not the name of a
 * program object, or if an error condition occurs, IsProgramARB returns {@link GL11#GL_FALSE FALSE}. A name returned by {@link #glGenProgramsARB GenProgramsARB}, but not yet bound, is not the
 * name of a program object.
 *
 * @param program the program name
 */
	static public function glIsProgramARB(program:Int):Bool;
/** JNI method for {@link #glProgramEnvParameter4fARB ProgramEnvParameter4fARB}  */
	static public function nglProgramEnvParameter4fARB(target:Int,index:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib4NuivARB VertexAttrib4NuivARB}  */
/** JNI method for {@link #glVertexAttrib4NuivARB VertexAttrib4NuivARB}  */
	static public function nglVertexAttrib4NuivARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** GL_DOUBLE version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** GL_FLOAT version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** GL_INT version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** GL_UNSIGNED_BYTE / GL_BYTE version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** GL_UNSIGNED_SHORT / GL_SHORT version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/**
 * Specifies the location and organization of a vertex attribute array.
 *
 * @param index      the vertex attribute index
 * @param size       the vertex attribute number of components. One of:<br>1, 2, 3, 4
 * @param type       the data type of the values stored in the array. One of:<br>{@link GL11#GL_BYTE BYTE}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_INT INT}, {@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link NVHalfFloat#GL_HALF_FLOAT_NV HALF_FLOAT_NV}, {@link GL11#GL_FLOAT FLOAT}, {@link GL11#GL_DOUBLE DOUBLE}
 * @param normalized if {@link GL11#GL_TRUE TRUE}, fixed-point types are normalized when converted to floating-point
 * @param stride     the vertex stride in bytes. If specified as zero, then array elements are stored sequentially
 * @param pointer    the vertex attribute array data
 */
	static public function glVertexAttribPointerARB(index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (index:Int,size:Int,normalized:Bool,stride:Int,pointer:java.nio.DoubleBuffer):Void {})
	@:overload(function (index:Int,size:Int,normalized:Bool,stride:Int,pointer:java.nio.FloatBuffer):Void {})
	@:overload(function (index:Int,size:Int,normalized:Bool,stride:Int,pointer:java.nio.IntBuffer):Void {})
	@:overload(function (index:Int,size:Int,unsigned:Bool,normalized:Bool,stride:Int,pointer:java.nio.ByteBuffer):Void {})
	@:overload(function (index:Int,size:Int,unsigned:Bool,normalized:Bool,stride:Int,pointer:java.nio.ShortBuffer):Void {})
/** Alternative version of: {@link #glProgramStringARB ProgramStringARB}  */
/**
 * Updates the program string for the current program object for {@code target}.
 * 
 * <p>When a program string is loaded, it is interpreted according to syntactic and semantic rules corresponding to the program target specified by
 * {@code target}. If a program violates the syntactic or semantic restrictions of the program target, ProgramStringARB generates the error
 * {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION}.</p>
 * 
 * <p>Additionally, ProgramString will update the program error position ({@link #GL_PROGRAM_ERROR_POSITION_ARB PROGRAM_ERROR_POSITION_ARB}) and error string ({@link #GL_PROGRAM_ERROR_STRING_ARB PROGRAM_ERROR_STRING_ARB}). If a
 * program fails to load, the value of the program error position is set to the ubyte offset into the specified program string indicating where the first
 * program error was detected. If the program fails to load because of a semantic restriction that is not detected until the program is fully scanned, the
 * error position is set to the value of {@code len}. If a program loads successfully, the error position is set to the value negative one. The
 * implementation-dependent program error string contains one or more error or warning messages.  If a program loads succesfully, the error string may
 * either contain warning messages or be empty.</p>
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param format the format of the program string. Must be:<br>{@link #GL_PROGRAM_FORMAT_ASCII_ARB PROGRAM_FORMAT_ASCII_ARB}
 * @param len    the length of the program string, excluding the null-terminator
 * @param string an array of bytes representing the program string being loaded
 */
	static public function glProgramStringARB(target:Int,format:Int,len:Int,string:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,format:Int,string:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib2svARB VertexAttrib2svARB}  */
/** JNI method for {@link #glVertexAttrib2svARB VertexAttrib2svARB}  */
	static public function nglVertexAttrib2svARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Disables an individual generic vertex attribute array.
 *
 * @param index the vertex attribute index
 */
	static public function glDisableVertexAttribArrayARB(index:Int):Void;
/** Unsafe version of {@link #glGenProgramsARB GenProgramsARB}  */
/** JNI method for {@link #glGenProgramsARB GenProgramsARB}  */
	static public function nglGenProgramsARB(n:Int,programs:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,programs:haxe.Int64):Void {})
/**
 * Byte version of {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
	static public function glVertexAttrib4bvARB(index:Int,v:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glGetVertexAttribPointervARB GetVertexAttribPointervARB}  */
/** JNI method for {@link #glGetVertexAttribPointervARB GetVertexAttribPointervARB}  */
	static public function nglGetVertexAttribPointervARB(index:Int,pname:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,pointer:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttrib4dARB VertexAttrib4dARB}  */
	static public function nglVertexAttrib4dARB(index:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/**
 * Short version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 * @param y     the {@code y} attribute component
 * @param z     the {@code z} attribute component
 * @param w     the {@code w} attribute component
 */
	static public function glVertexAttrib4sARB(index:Int,x:Int16,y:Int16,z:Int16,w:Int16):Void;
/**
 * Double version of {@link #glVertexAttrib3fARB VertexAttrib3fARB}
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 * @param y     the {@code y} attribute component
 * @param z     the {@code z} attribute component
 */
	static public function glVertexAttrib3dARB(index:Int,x:Float,y:Float,z:Float):Void;
/**
 * Pointer version of {@link #glVertexAttrib2sARB VertexAttrib2sARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib2svARB VertexAttrib2svARB}  */
	static public function glVertexAttrib2svARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** JNI method for {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
	static public function nglVertexAttribPointerARB(index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointer:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetProgramLocalParameterdvARB GetProgramLocalParameterdvARB}  */
/** JNI method for {@link #glGetProgramLocalParameterdvARB GetProgramLocalParameterdvARB}  */
	static public function nglGetProgramLocalParameterdvARB(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetVertexAttribdvARB GetVertexAttribdvARB}  */
/** JNI method for {@link #glGetVertexAttribdvARB GetVertexAttribdvARB}  */
	static public function nglGetVertexAttribdvARB(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttrib3fARB VertexAttrib3fARB}  */
	static public function nglVertexAttrib3fARB(index:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/**
 * Double version of {@link #glProgramLocalParameter4fARB ProgramLocalParameter4fARB}.
 *
 * @param target the program target. One of:<br>{@link #GL_VERTEX_PROGRAM_ARB VERTEX_PROGRAM_ARB}, {@link ARBFragmentProgram#GL_FRAGMENT_PROGRAM_ARB FRAGMENT_PROGRAM_ARB}
 * @param index  the environment parameter index
 * @param x      the {@code x} parameter component
 * @param y      the {@code y} parameter component
 * @param z      the {@code z} parameter component
 * @param w      the {@code w} parameter component
 */
	static public function glProgramLocalParameter4dARB(target:Int,index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/**
 * Unsigned integer version of {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}
 *
 * @param index the vertex attribute index
 * @param v     a buffer from which to read the attribute value
 */
/** Alternative version of: {@link #glVertexAttrib4uivARB VertexAttrib4uivARB}  */
	static public function glVertexAttrib4uivARB(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4NivARB VertexAttrib4NivARB}  */
/** JNI method for {@link #glVertexAttrib4NivARB VertexAttrib4NivARB}  */
	static public function nglVertexAttrib4NivARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Returns the {@link ARBVertexProgram} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBVertexProgram;
/**
 * Short version of {@link #glVertexAttrib2fARB VertexAttrib2fARB}
 *
 * @param index the vertex attribute index
 * @param x     the {@code x} attribute component
 * @param y     the {@code y} attribute component
 */
	static public function glVertexAttrib2sARB(index:Int,x:Int16,y:Int16):Void;

}
