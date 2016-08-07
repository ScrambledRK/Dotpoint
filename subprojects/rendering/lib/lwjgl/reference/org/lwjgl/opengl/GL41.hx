package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL41")
@:final
/**
 * The core OpenGL 4.1 functionality. OpenGL 4.1 implementations support revision 4.10 of the OpenGL Shading Language.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/ES2_compatibility.txt">ARB_ES2_compatibility</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/get_program_binary.txt">ARB_get_program_binary</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/separate_shader_objects.txt">ARB_separate_shader_objects</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/shader_precision.txt">ARB_shader_precision</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/vertex_attrib_64bit.txt">ARB_vertex_attrib_64bit</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/viewport_array.txt">ARB_viewport_array</a></li>
 * </ul></p>
 */
extern class GL41 
{
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_SHADER_COMPILER:Int = 36346;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_SHADER_BINARY_FORMATS:Int = 36344;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_NUM_SHADER_BINARY_FORMATS:Int = 36345;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_UNIFORM_VECTORS:Int = 36347;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VARYING_VECTORS:Int = 36348;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_UNIFORM_VECTORS:Int = 36349;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_IMPLEMENTATION_COLOR_READ_TYPE:Int = 35738;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_IMPLEMENTATION_COLOR_READ_FORMAT:Int = 35739;
/** Accepted by the {@code type} parameter of VertexAttribPointer.  */
	inline static public var GL_FIXED:Int = 5132;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_LOW_FLOAT:Int = 36336;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_MEDIUM_FLOAT:Int = 36337;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_HIGH_FLOAT:Int = 36338;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_LOW_INT:Int = 36339;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_MEDIUM_INT:Int = 36340;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_HIGH_INT:Int = 36341;
/** Accepted by the {@code format} parameter of most commands taking sized internal formats.  */
	inline static public var GL_RGB565:Int = 36194;
/** Accepted by the {@code pname} parameter of ProgramParameteri and GetProgramiv.  */
	inline static public var GL_PROGRAM_BINARY_RETRIEVABLE_HINT:Int = 33367;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_PROGRAM_BINARY_LENGTH:Int = 34625;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv and GetDoublev.  */
	inline static public var GL_NUM_PROGRAM_BINARY_FORMATS:Int = 34814;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv and GetDoublev.  */
	inline static public var GL_PROGRAM_BINARY_FORMATS:Int = 34815;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_VERTEX_SHADER_BIT:Int = 1;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_FRAGMENT_SHADER_BIT:Int = 2;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_GEOMETRY_SHADER_BIT:Int = 4;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_TESS_CONTROL_SHADER_BIT:Int = 8;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_TESS_EVALUATION_SHADER_BIT:Int = 16;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_ALL_SHADER_BITS:Int = -1;
/** Accepted by the {@code pname} parameter of ProgramParameteri and GetProgramiv.  */
	inline static public var GL_PROGRAM_SEPARABLE:Int = 33368;
/** Accepted by {@code type} parameter to GetProgramPipelineiv.  */
	inline static public var GL_ACTIVE_PROGRAM:Int = 33369;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_PROGRAM_PIPELINE_BINDING:Int = 33370;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_VIEWPORTS:Int = 33371;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_VIEWPORT_SUBPIXEL_BITS:Int = 33372;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_VIEWPORT_BOUNDS_RANGE:Int = 33373;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_LAYER_PROVOKING_VERTEX:Int = 33374;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_VIEWPORT_INDEX_PROVOKING_VERTEX:Int = 33375;
/** Returned in the {@code data} parameter from a Get query with a {@code pname} of LAYER_PROVOKING_VERTEX or VIEWPORT_INDEX_PROVOKING_VERTEX.  */
	inline static public var GL_UNDEFINED_VERTEX:Int = 33376;
/** Function address.  */
	public var ReleaseShaderCompiler:haxe.Int64;
/** Function address.  */
	public var ShaderBinary:haxe.Int64;
/** Function address.  */
	public var GetShaderPrecisionFormat:haxe.Int64;
/** Function address.  */
	public var DepthRangef:haxe.Int64;
/** Function address.  */
	public var ClearDepthf:haxe.Int64;
/** Function address.  */
	public var GetProgramBinary:haxe.Int64;
/** Function address.  */
	public var ProgramBinary:haxe.Int64;
/** Function address.  */
	public var ProgramParameteri:haxe.Int64;
/** Function address.  */
	public var UseProgramStages:haxe.Int64;
/** Function address.  */
	public var ActiveShaderProgram:haxe.Int64;
/** Function address.  */
	public var CreateShaderProgramv:haxe.Int64;
/** Function address.  */
	public var BindProgramPipeline:haxe.Int64;
/** Function address.  */
	public var DeleteProgramPipelines:haxe.Int64;
/** Function address.  */
	public var GenProgramPipelines:haxe.Int64;
/** Function address.  */
	public var IsProgramPipeline:haxe.Int64;
/** Function address.  */
	public var GetProgramPipelineiv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1i:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2i:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3i:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4i:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1ui:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2ui:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3ui:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4ui:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1f:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2f:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3f:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4f:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1d:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2d:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3d:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4d:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1iv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2iv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3iv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4iv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1uiv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2uiv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3uiv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4uiv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x3fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x2fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x4fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x2fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x4fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x3fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x3dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x2dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x4dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x2dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x4dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x3dv:haxe.Int64;
/** Function address.  */
	public var ValidateProgramPipeline:haxe.Int64;
/** Function address.  */
	public var GetProgramPipelineInfoLog:haxe.Int64;
/** Function address.  */
	public var VertexAttribL1d:haxe.Int64;
/** Function address.  */
	public var VertexAttribL2d:haxe.Int64;
/** Function address.  */
	public var VertexAttribL3d:haxe.Int64;
/** Function address.  */
	public var VertexAttribL4d:haxe.Int64;
/** Function address.  */
	public var VertexAttribL1dv:haxe.Int64;
/** Function address.  */
	public var VertexAttribL2dv:haxe.Int64;
/** Function address.  */
	public var VertexAttribL3dv:haxe.Int64;
/** Function address.  */
	public var VertexAttribL4dv:haxe.Int64;
/** Function address.  */
	public var VertexAttribLPointer:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribLdv:haxe.Int64;
/** Function address.  */
	public var ViewportArrayv:haxe.Int64;
/** Function address.  */
	public var ViewportIndexedf:haxe.Int64;
/** Function address.  */
	public var ViewportIndexedfv:haxe.Int64;
/** Function address.  */
	public var ScissorArrayv:haxe.Int64;
/** Function address.  */
	public var ScissorIndexed:haxe.Int64;
/** Function address.  */
	public var ScissorIndexedv:haxe.Int64;
/** Function address.  */
	public var DepthRangeArrayv:haxe.Int64;
/** Function address.  */
	public var DepthRangeIndexed:haxe.Int64;
/** Function address.  */
	public var GetFloati_v:haxe.Int64;
/** Function address.  */
	public var GetDoublei_v:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Alternative version of: {@link #glProgramUniform3fv ProgramUniform3fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single vec3 uniform variable or a vec3 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform3fv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribL4dv VertexAttribL4dv}  */
/** JNI method for {@link #glVertexAttribL4dv VertexAttribL4dv}  */
	static public function nglVertexAttribL4dv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniform2dv ProgramUniform2dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dvec2 uniform variable or a dvec2 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform2dv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2x4dv ProgramUniformMatrix2x4dv}  */
/** JNI method for {@link #glProgramUniformMatrix2x4dv ProgramUniformMatrix2x4dv}  */
	static public function nglProgramUniformMatrix2x4dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix2x4dv ProgramUniformMatrix2x4dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat2x4 uniform variable or a dmat2x4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2x4dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glScissorIndexed.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glScissorIndexed ScissorIndexed}.
 *
 * @param index the index of the viewport whose scissor box to modify
 * @param v     an array containing the left, bottom, width and height of each scissor box, in that order
 */
/** Alternative version of: {@link #glScissorIndexedv ScissorIndexedv}  */
	static public function glScissorIndexedv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribL1d VertexAttribL1d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribL1dv VertexAttribL1dv}  */
	static public function glVertexAttribL1dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glProgramUniform3i ProgramUniform3i}  */
	static public function nglProgramUniform3i(program:Int,location:Int,x:Int,y:Int,z:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform1uiv ProgramUniform1uiv}  */
/** JNI method for {@link #glProgramUniform1uiv ProgramUniform1uiv}  */
	static public function nglProgramUniform1uiv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform3f ProgramUniform3f}  */
	static public function nglProgramUniform3f(program:Int,location:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2fv ProgramUniformMatrix2fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat2 uniform variable or a mat2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** JNI method for {@link #glProgramUniform3d ProgramUniform3d}  */
	static public function nglProgramUniform3d(program:Int,location:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a generic vertex attribute. The y component is implicitly set to 0.0 and w to 1.0.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 */
	static public function glVertexAttribL2d(index:Int,x:Float,y:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/DepthRange.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies mapping of depth values from normalized device coordinates to window coordinates
 *
 * @param zNear the mapping of the near clipping plane to window coordinates. The initial value is 0.0f.
 * @param zFar  the mapping of the far clipping plane to window coordinates. The initial value is 1.0f.
 */
	static public function glDepthRangef(zNear:Float,zFar:Float):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3x2dv ProgramUniformMatrix3x2dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat3x2 uniform variable or a dmat3x2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3x2dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a uvec2 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glProgramUniform2ui(program:Int,location:Int,x:Int,y:Int):Void;
/** Alternative version of: {@link #glProgramUniform4iv ProgramUniform4iv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single ivec4 uniform variable or a ivec4 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform4iv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform1iv ProgramUniform1iv}  */
/** JNI method for {@link #glProgramUniform1iv ProgramUniform1iv}  */
	static public function nglProgramUniform1iv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttribL4d VertexAttribL4d}  */
	static public function nglVertexAttribL4d(index:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramBinary ProgramBinary}  */
/** JNI method for {@link #glProgramBinary ProgramBinary}  */
	static public function nglProgramBinary(program:Int,binaryFormat:Int,binary:haxe.Int64,length:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,binaryFormat:Int,binary:haxe.Int64,length:Int):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetFloati.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the float value of an indexed state variable.
 *
 * @param target the indexed state to query
 * @param index  the index of the element being queried
 * @param data   a scalar or buffer in which to place the returned data
 */
/** Alternative version of: {@link #glGetFloati_v GetFloati_v}  */
	static public function glGetFloati_v(target:Int,index:Int,data:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,index:Int,data:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2fv ProgramUniformMatrix2fv}  */
/** JNI method for {@link #glProgramUniformMatrix2fv ProgramUniformMatrix2fv}  */
	static public function nglProgramUniformMatrix2fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniform3uiv ProgramUniform3uiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single uvec3 uniform variable or a uvec3 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform3uiv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a double uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glProgramUniform1d(program:Int,location:Int,x:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUseProgramStages.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds stages of a program object to a program pipeline.
 *
 * @param pipeline the program pipeline object to which to bind stages from {@code program}
 * @param stages   a set of program stages to bind to the program pipeline object
 * @param program  the program object containing the shader executables to use in {@code pipeline}
 */
	static public function glUseProgramStages(pipeline:Int,stages:Int,program:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a float uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glProgramUniform1f(program:Int,location:Int,x:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of an int uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glProgramUniform1i(program:Int,location:Int,x:Int):Void;
/** Unsafe version of {@link #glProgramUniform4uiv ProgramUniform4uiv}  */
/** JNI method for {@link #glProgramUniform4uiv ProgramUniform4uiv}  */
	static public function nglProgramUniform4uiv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform4i ProgramUniform4i}  */
	static public function nglProgramUniform4i(program:Int,location:Int,x:Int,y:Int,z:Int,w:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform4fv ProgramUniform4fv}  */
/** JNI method for {@link #glProgramUniform4fv ProgramUniform4fv}  */
	static public function nglProgramUniform4fv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform4f ProgramUniform4f}  */
	static public function nglProgramUniform4f(program:Int,location:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform3dv ProgramUniform3dv}  */
/** JNI method for {@link #glProgramUniform3dv ProgramUniform3dv}  */
	static public function nglProgramUniform3dv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a generic vertex attribute. The w is implicitly set to 1.0.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 * @param z     the vertex attribute z component
 */
	static public function glVertexAttribL3d(index:Int,x:Float,y:Float,z:Float):Void;
/** JNI method for {@link #glProgramUniform3ui ProgramUniform3ui}  */
	static public function nglProgramUniform3ui(program:Int,location:Int,x:Int,y:Int,z:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glProgramUniform4d ProgramUniform4d}  */
	static public function nglProgramUniform4d(program:Int,location:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix3x2dv ProgramUniformMatrix3x2dv}  */
/** JNI method for {@link #glProgramUniformMatrix3x2dv ProgramUniformMatrix3x2dv}  */
	static public function nglProgramUniformMatrix3x2dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glDepthRangef DepthRangef}  */
	static public function nglDepthRangef(zNear:Float,zFar:Float,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glShaderBinary ShaderBinary}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glShaderBinary.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Loads pre-compiled shader binaries.
 *
 * @param count        the number of shader object handles contained in {@code shaders}
 * @param shaders      an array of shader handles into which to load pre-compiled shader binaries
 * @param binaryformat the format of the shader binaries contained in {@code binary}
 * @param binary       an array of bytes containing pre-compiled binary shader code
 * @param length       the length of the array whose address is given in binary
 */
	static public function glShaderBinary(count:Int,shaders:java.nio.ByteBuffer,binaryformat:Int,binary:java.nio.ByteBuffer,length:Int):Void;
	@:overload(function (shaders:java.nio.IntBuffer,binaryformat:Int,binary:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glScissorIndexed ScissorIndexed}  */
	static public function nglScissorIndexed(index:Int,left:Int,bottom:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetProgramPipelineiv GetProgramPipelineiv}  */
/** JNI method for {@link #glGetProgramPipelineiv GetProgramPipelineiv}  */
	static public function nglGetProgramPipelineiv(pipeline:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pipeline:Int,pname:Int,params:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniform4fv ProgramUniform4fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single vec4 uniform variable or a vec4 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform4fv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2x4fv ProgramUniformMatrix2x4fv}  */
/** JNI method for {@link #glProgramUniformMatrix2x4fv ProgramUniformMatrix2x4fv}  */
	static public function nglProgramUniformMatrix2x4fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2x3dv ProgramUniformMatrix2x3dv}  */
/** JNI method for {@link #glProgramUniformMatrix2x3dv ProgramUniformMatrix2x3dv}  */
	static public function nglProgramUniformMatrix2x3dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttribL3d VertexAttribL3d}  */
	static public function nglVertexAttribL3d(index:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttribL1dv VertexAttribL1dv}  */
/** JNI method for {@link #glVertexAttribL1dv VertexAttribL1dv}  */
	static public function nglVertexAttribL1dv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform1fv ProgramUniform1fv}  */
/** JNI method for {@link #glProgramUniform1fv ProgramUniform1fv}  */
	static public function nglProgramUniform1fv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttribLPointer VertexAttribLPointer}  */
/** JNI method for {@link #glVertexAttribLPointer VertexAttribLPointer}  */
	static public function nglVertexAttribLPointer(index:Int,size:Int,type:Int,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,size:Int,type:Int,stride:Int,pointer:haxe.Int64):Void {})
/** Alternative version of: {@link #glScissorArrayv ScissorArrayv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glScissorArray.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Defines the scissor box for multiple viewports.
 *
 * @param first the index of the first viewport whose scissor box to modify
 * @param count the number of scissor boxes to modify
 * @param v     an array containing the left, bottom, width and height of each scissor box, in that order
 */
	static public function glScissorArrayv(first:Int,count:Int,v:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,v:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribL2d VertexAttribL2d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribL2dv VertexAttribL2dv}  */
	static public function glVertexAttribL2dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform3uiv ProgramUniform3uiv}  */
/** JNI method for {@link #glProgramUniform3uiv ProgramUniform3uiv}  */
	static public function nglProgramUniform3uiv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetProgramPipelineInfoLog GetProgramPipelineInfoLog}  */
/** JNI method for {@link #glGetProgramPipelineInfoLog GetProgramPipelineInfoLog}  */
	static public function nglGetProgramPipelineInfoLog(pipeline:Int,bufSize:Int,length:haxe.Int64,infoLog:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pipeline:Int,bufSize:Int,length:haxe.Int64,infoLog:haxe.Int64):Void {})
/** JNI method for {@link #glDepthRangeIndexed DepthRangeIndexed}  */
	static public function nglDepthRangeIndexed(index:Int,zNear:Float,zFar:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix4dv ProgramUniformMatrix4dv}  */
/** JNI method for {@link #glProgramUniformMatrix4dv ProgramUniformMatrix4dv}  */
	static public function nglProgramUniformMatrix4dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix3fv ProgramUniformMatrix3fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat3 uniform variable or a mat3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** JNI method for {@link #glReleaseShaderCompiler ReleaseShaderCompiler}  */
	static public function nglReleaseShaderCompiler(__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2dv ProgramUniformMatrix2dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat2 uniform variable or a dmat2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a uvec3 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glProgramUniform3ui(program:Int,location:Int,x:Int,y:Int,z:Int):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3x4fv ProgramUniformMatrix3x4fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat3x4 uniform variable or a mat3x4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3x4fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform3dv ProgramUniform3dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dvec3 uniform variable or a dvec3 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform3dv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/** JNI method for {@link #glUseProgramStages UseProgramStages}  */
	static public function nglUseProgramStages(pipeline:Int,stages:Int,program:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glViewportIndexed.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glViewportIndexedf ViewportIndexedf}.
 *
 * @param index the viewport to set
 * @param v     the viewport parameters
 */
/** Alternative version of: {@link #glViewportIndexedfv ViewportIndexedfv}  */
	static public function glViewportIndexedfv(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glValidateProgramPipeline.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Validates a program pipeline object against current GL state.
 *
 * @param pipeline the name of a program pipeline object to validate
 */
	static public function glValidateProgramPipeline(pipeline:Int):Void;
/** JNI method for {@link #glVertexAttribL2d VertexAttribL2d}  */
	static public function nglVertexAttribL2d(index:Int,x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramPipeline.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves properties of a program pipeline object.
 *
 * @param pipeline the name of a program pipeline object whose parameter retrieve
 * @param pname    the name of the parameter to retrieve. One of:<br>{@link #GL_ACTIVE_PROGRAM ACTIVE_PROGRAM}, {@link GL20#GL_INFO_LOG_LENGTH INFO_LOG_LENGTH}, {@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param params   a variable into which will be written the value or values of {@code pname} for {@code pipeline}
 */
/** Alternative version of: {@link #glGetProgramPipelineiv GetProgramPipelineiv}  */
	static public function glGetProgramPipelineiv(pipeline:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (pipeline:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform2iv ProgramUniform2iv}  */
/** JNI method for {@link #glProgramUniform2iv ProgramUniform2iv}  */
	static public function nglProgramUniform2iv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniform1iv ProgramUniform1iv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single float uniform variable or a float uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform1iv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix4x3dv ProgramUniformMatrix4x3dv}  */
/** JNI method for {@link #glProgramUniformMatrix4x3dv ProgramUniformMatrix4x3dv}  */
	static public function nglProgramUniformMatrix4x3dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glShaderBinary ShaderBinary}  */
/** JNI method for {@link #glShaderBinary ShaderBinary}  */
	static public function nglShaderBinary(count:Int,shaders:haxe.Int64,binaryformat:Int,binary:haxe.Int64,length:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (count:Int,shaders:haxe.Int64,binaryformat:Int,binary:haxe.Int64,length:Int):Void {})
/** JNI method for {@link #glBindProgramPipeline BindProgramPipeline}  */
	static public function nglBindProgramPipeline(pipeline:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix4x2fv ProgramUniformMatrix4x2fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat4x2 uniform variable or a mat4x2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4x2fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform1uiv ProgramUniform1uiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single uint uniform variable or a uint uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform1uiv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glViewportIndexedf ViewportIndexedf}  */
	static public function nglViewportIndexedf(index:Int,x:Float,y:Float,w:Float,h:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform4dv ProgramUniform4dv}  */
/** JNI method for {@link #glProgramUniform4dv ProgramUniform4dv}  */
	static public function nglProgramUniform4dv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glViewportArrayv ViewportArrayv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glViewportArray.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets multiple viewports.
 *
 * @param first the first viewport to set
 * @param count the number of viewports to set
 * @param v     an array containing the viewport parameters
 */
	static public function glViewportArrayv(first:Int,count:Int,v:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,v:java.nio.FloatBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a generic vertex attribute. The y and z components are implicitly set to 0.0 and w to 1.0.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 */
	static public function glVertexAttribL1d(index:Int,x:Float):Void;
/** JNI method for {@link #glProgramUniform4ui ProgramUniform4ui}  */
	static public function nglProgramUniform4ui(program:Int,location:Int,x:Int,y:Int,z:Int,w:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsProgramPipeline.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Determines if a name corresponds to a program pipeline object.
 *
 * @param pipeline a value that may be the name of a program pipeline object
 */
	static public function glIsProgramPipeline(pipeline:Int):Bool;
/** Unsafe version of {@link #glProgramUniformMatrix3x2fv ProgramUniformMatrix3x2fv}  */
/** JNI method for {@link #glProgramUniformMatrix3x2fv ProgramUniformMatrix3x2fv}  */
	static public function nglProgramUniformMatrix3x2fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix2x3fv ProgramUniformMatrix2x3fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat2x3 uniform variable or a mat2x3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2x3fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2x3fv ProgramUniformMatrix2x3fv}  */
/** JNI method for {@link #glProgramUniformMatrix2x3fv ProgramUniformMatrix2x3fv}  */
	static public function nglProgramUniformMatrix2x3fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttribL1d VertexAttribL1d}  */
	static public function nglVertexAttribL1d(index:Int,x:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindProgramPipeline.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a program pipeline to the current context.
 *
 * @param pipeline the name of the pipeline object to bind to the context
 */
	static public function glBindProgramPipeline(pipeline:Int):Void;
/** Alternative version of: {@link #glProgramUniform1fv ProgramUniform1fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single float uniform variable or a float uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform1fv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribL2dv VertexAttribL2dv}  */
/** JNI method for {@link #glVertexAttribL2dv VertexAttribL2dv}  */
	static public function nglVertexAttribL2dv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glViewportArrayv ViewportArrayv}  */
/** JNI method for {@link #glViewportArrayv ViewportArrayv}  */
	static public function nglViewportArrayv(first:Int,count:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (first:Int,count:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform2fv ProgramUniform2fv}  */
/** JNI method for {@link #glProgramUniform2fv ProgramUniform2fv}  */
	static public function nglProgramUniform2fv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniform4uiv ProgramUniform4uiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single uvec4 uniform variable or a uvec4 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform4uiv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribL3d VertexAttribL3d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribL3dv VertexAttribL3dv}  */
	static public function glVertexAttribL3dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glViewportIndexed.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets a specified viewport.
 *
 * @param index the viewport to set
 * @param x     the left viewport coordinate
 * @param y     the bottom viewport coordinate
 * @param w     the viewport width
 * @param h     the viewport height
 */
	static public function glViewportIndexedf(index:Int,x:Float,y:Float,w:Float,h:Float):Void;
/** Single return value version of: {@link #glGetShaderPrecisionFormat GetShaderPrecisionFormat}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetShaderPrecisionFormat.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the range and precision for numeric formats supported by the shader compiler.
 *
 * @param shadertype    the type of shader whose precision to query. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}
 * @param precisiontype the numeric format whose precision and range to query
 * @param range         the address of array of two integers into which encodings of the implementation's numeric range are returned
 * @param precision     the address of an integer into which the numeric precision of the implementation is written
 */
/** Alternative version of: {@link #glGetShaderPrecisionFormat GetShaderPrecisionFormat}  */
	static public function glGetShaderPrecisionFormat(shadertype:Int,precisiontype:Int,range:java.nio.IntBuffer,precision:java.nio.IntBuffer):Void;
	@:overload(function (shadertype:Int,precisiontype:Int,range:java.nio.IntBuffer):Int {})
	@:overload(function (shadertype:Int,precisiontype:Int,range:java.nio.ByteBuffer,precision:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of an ivec4 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 * @param w        the uniform w value
 */
	static public function glProgramUniform4i(program:Int,location:Int,x:Int,y:Int,z:Int,w:Int):Void;
/** Alternative version of: {@link #glDepthRangeArrayv DepthRangeArrayv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDepthRangeArray.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies mapping of depth values from normalized device coordinates to window coordinates for a specified set of viewports.
 *
 * @param first the index of the first viewport whose depth range to update
 * @param count the number of viewports whose depth range to update
 * @param v     n array containing the near and far values for the depth range of each modified viewport
 */
	static public function glDepthRangeArrayv(first:Int,count:Int,v:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,v:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix3dv ProgramUniformMatrix3dv}  */
/** JNI method for {@link #glProgramUniformMatrix3dv ProgramUniformMatrix3dv}  */
	static public function nglProgramUniformMatrix3dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Single string version of: {@link #glCreateShaderProgramv CreateShaderProgramv}  */
/** Array version of: {@link #glCreateShaderProgramv CreateShaderProgramv}  */
/** Alternative version of: {@link #glCreateShaderProgramv CreateShaderProgramv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCreateShaderProgram.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Creates a stand-alone program from an array of null-terminated source code strings.
 * 
 * <p>{@code glCreateShaderProgram} is equivalent (assuming no errors are generated) to:
 * <pre><code style="font-family: monospace">
 * const GLuint shader = glCreateShader(type);
 * if (shader) {
 * 	glShaderSource(shader, count, strings, NULL);
 * 	glCompileShader(shader);
 * 	const GLuint program = glCreateProgram();
 * 	if (program) {
 * 		GLint compiled = GL_FALSE;
 * 		glGetShaderiv(shader, GL_COMPILE_STATUS, &compiled);
 * 		glProgramParameteri(program, GL_PROGRAM_SEPARABLE, GL_TRUE);
 * 		if (compiled) {
 * 			glAttachShader(program, shader);
 * 			glLinkProgram(program);
 * 			glDetachShader(program, shader);
 * 		}
 * 		// append-shader-info-log-to-program-info-log
 * 	}
 * 	glDeleteShader(shader);
 * 	return program;
 * } else {
 * 	return 0;
 * }</code></pre>
 * The program object created by glCreateShaderProgram has its GL_PROGRAM_SEPARABLE status set to GL_TRUE.</p>
 *
 * @param type    the type of shader to create
 * @param count   the number of source code strings in the array {@code strings}
 * @param strings an array of pointers to source code strings from which to create the program object
 */
	static public function glCreateShaderProgramv(type:Int,count:Int,strings:java.nio.ByteBuffer):Int;
	@:overload(function (type:Int,string:java.lang.CharSequence):Int {})
	@:overload(function (type:Int,strings:java.NativeArray<java.lang.CharSequence>):Int {})
	@:overload(function (type:Int,strings:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #glProgramUniformMatrix4fv ProgramUniformMatrix4fv}  */
/** JNI method for {@link #glProgramUniformMatrix4fv ProgramUniformMatrix4fv}  */
	static public function nglProgramUniformMatrix4fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glIsProgramPipeline IsProgramPipeline}  */
	static public function nglIsProgramPipeline(pipeline:Int,__functionAddress:haxe.Int64):Bool;
/** Alternative version of: {@link #glProgramUniformMatrix3dv ProgramUniformMatrix3dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat3 uniform variable or a dmat3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glGetDoublei_v GetDoublei_v}  */
/** JNI method for {@link #glGetDoublei_v GetDoublei_v}  */
	static public function nglGetDoublei_v(target:Int,index:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,data:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4fv ProgramUniformMatrix4fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat4 uniform variable or a mat4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a dvec4 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 * @param w        the uniform w value
 */
	static public function glProgramUniform4d(program:Int,location:Int,x:Float,y:Float,z:Float,w:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a uvec4 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 * @param w        the uniform w value
 */
	static public function glProgramUniform4ui(program:Int,location:Int,x:Int,y:Int,z:Int,w:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a vec4 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 * @param w        the uniform w value
 */
	static public function glProgramUniform4f(program:Int,location:Int,x:Float,y:Float,z:Float,w:Float):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3x4dv ProgramUniformMatrix3x4dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat3x4 uniform variable or a dmat3x4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3x4dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glDeleteProgramPipelines DeleteProgramPipelines}  */
/** JNI method for {@link #glDeleteProgramPipelines DeleteProgramPipelines}  */
	static public function nglDeleteProgramPipelines(n:Int,pipelines:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,pipelines:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniform4dv ProgramUniform4dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dvec4 uniform variable or a dvec4 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform4dv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Double version of {@link GL20#glGetVertexAttribi GetVertexAttribi}.
 *
 * @param index  the generic vertex attribute parameter to be queried
 * @param pname  the symbolic name of the vertex attribute parameter to be queried
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetVertexAttribLdv GetVertexAttribLdv}  */
	static public function glGetVertexAttribLdv(index:Int,pname:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetFloati_v GetFloati_v}  */
	static public function glGetFloati(target:Int,index:Int):Float;
/** Alternative version of: {@link #glProgramUniform2iv ProgramUniform2iv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single ivec2 uniform variable or a ivec2 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform2iv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetProgramBinary GetProgramBinary}  */
/** JNI method for {@link #glGetProgramBinary GetProgramBinary}  */
	static public function nglGetProgramBinary(program:Int,bufSize:Int,length:haxe.Int64,binaryFormat:haxe.Int64,binary:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,bufSize:Int,length:haxe.Int64,binaryFormat:haxe.Int64,binary:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform3iv ProgramUniform3iv}  */
/** JNI method for {@link #glProgramUniform3iv ProgramUniform3iv}  */
	static public function nglProgramUniform3iv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetShaderPrecisionFormat GetShaderPrecisionFormat}  */
/** JNI method for {@link #glGetShaderPrecisionFormat GetShaderPrecisionFormat}  */
	static public function nglGetShaderPrecisionFormat(shadertype:Int,precisiontype:Int,range:haxe.Int64,precision:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (shadertype:Int,precisiontype:Int,range:haxe.Int64,precision:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix4x2dv ProgramUniformMatrix4x2dv}  */
/** JNI method for {@link #glProgramUniformMatrix4x2dv ProgramUniformMatrix4x2dv}  */
	static public function nglProgramUniformMatrix4x2dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4x2dv ProgramUniformMatrix4x2dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat4x2 uniform variable or a dmat4x2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4x2dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4x3fv ProgramUniformMatrix4x3fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat4x3 uniform variable or a mat4x3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4x3fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the integer value of a program object parameter.
 *
 * @param program the name of a program object whose parameter to modify
 * @param pname   the name of the parameter to modify. One of:<br>{@link #GL_PROGRAM_BINARY_RETRIEVABLE_HINT PROGRAM_BINARY_RETRIEVABLE_HINT}, {@link #GL_PROGRAM_SEPARABLE PROGRAM_SEPARABLE}
 * @param value   the new value of the parameter specified by {@code pname} for {@code program}
 */
	static public function glProgramParameteri(program:Int,pname:Int,value:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClearDepthf.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the clear value for the depth buffer
 *
 * @param depth the depth value used when the depth buffer is cleared. The initial value is 1.0f.
 */
	static public function glClearDepthf(depth:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glActiveShaderProgram.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets the active program object for a program pipeline object.
 *
 * @param pipeline the program pipeline object to set the active program object for
 * @param program  the program object to set as the active program pipeline object {@code pipeline}
 */
	static public function glActiveShaderProgram(pipeline:Int,program:Int):Void;
/** GL_DOUBLE version of: {@link #glVertexAttribLPointer VertexAttribLPointer}  */
/** Buffer object offset version of: {@link #glVertexAttribLPointer VertexAttribLPointer}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribPointer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the location and organization of a 64-bit vertex attribute array.
 *
 * @param index   the index of the generic vertex attribute to be modified
 * @param size    the number of values per vertex that are stored in the array. The initial value is 4. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type    the data type of each component in the array. Must be:<br>{@link GL11#GL_DOUBLE DOUBLE}
 * @param stride  the byte offset between consecutive generic vertex attributes. If stride is 0, the generic vertex attributes are understood to be tightly packed in
 *                the array. The initial value is 0.
 * @param pointer the vertex attribute data or the offset of the first component of the first generic vertex attribute in the array in the data store of the buffer
 *                currently bound to the {@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER} target. The initial value is 0.
 */
	static public function glVertexAttribLPointer(index:Int,size:Int,type:Int,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (index:Int,size:Int,stride:Int,pointer:java.nio.DoubleBuffer):Void {})
	@:overload(function (index:Int,size:Int,type:Int,stride:Int,pointerOffset:haxe.Int64):Void {})
/** JNI method for {@link #glClearDepthf ClearDepthf}  */
	static public function nglClearDepthf(depth:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix4x3fv ProgramUniformMatrix4x3fv}  */
/** JNI method for {@link #glProgramUniformMatrix4x3fv ProgramUniformMatrix4x3fv}  */
	static public function nglProgramUniformMatrix4x3fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGenProgramPipelines GenProgramPipelines}  */
/** JNI method for {@link #glGenProgramPipelines GenProgramPipelines}  */
	static public function nglGenProgramPipelines(n:Int,pipelines:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,pipelines:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetVertexAttribLdv GetVertexAttribLdv}  */
/** JNI method for {@link #glGetVertexAttribLdv GetVertexAttribLdv}  */
	static public function nglGetVertexAttribLdv(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform1dv ProgramUniform1dv}  */
/** JNI method for {@link #glProgramUniform1dv ProgramUniform1dv}  */
	static public function nglProgramUniform1dv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform1ui ProgramUniform1ui}  */
	static public function nglProgramUniform1ui(program:Int,location:Int,x:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix3x4dv ProgramUniformMatrix3x4dv}  */
/** JNI method for {@link #glProgramUniformMatrix3x4dv ProgramUniformMatrix3x4dv}  */
	static public function nglProgramUniformMatrix3x4dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniform1dv ProgramUniform1dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single double uniform variable or a double uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform1dv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribL3dv VertexAttribL3dv}  */
/** JNI method for {@link #glVertexAttribL3dv VertexAttribL3dv}  */
	static public function nglVertexAttribL3dv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniform2fv ProgramUniform2fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single vec2 uniform variable or a vec2 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform2fv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4dv ProgramUniformMatrix4dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat4 uniform variable or a dmat4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribL4d VertexAttribL4d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribL4dv VertexAttribL4dv}  */
	static public function glVertexAttribL4dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glProgramBinary ProgramBinary}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramBinary.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Loads a program object with a program binary.
 *
 * @param program      the name of a program object into which to load a program binary
 * @param binaryFormat the format of the binary data in binary
 * @param binary       an array containing the binary to be loaded into {@code program}
 * @param length       the number of bytes contained in {@code binary}
 */
	static public function glProgramBinary(program:Int,binaryFormat:Int,binary:java.nio.ByteBuffer,length:Int):Void;
	@:overload(function (program:Int,binaryFormat:Int,binary:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetDoublei_v GetDoublei_v}  */
	static public function glGetDoublei(target:Int,index:Int):Float;
/** Alternative version of: {@link #glProgramUniform2uiv ProgramUniform2uiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single uvec2 uniform variable or a uvec2 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform2uiv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Single value version of: {@link #glDeleteProgramPipelines DeleteProgramPipelines}  */
/** Alternative version of: {@link #glDeleteProgramPipelines DeleteProgramPipelines}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteProgramPipelines.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes program pipeline objects.
 *
 * @param n         the number of program pipeline objects to delete
 * @param pipelines an array of names of program pipeline objects to delete
 */
	static public function glDeleteProgramPipelines(n:Int,pipelines:java.nio.ByteBuffer):Void;
	@:overload(function (pipeline:Int):Void {})
	@:overload(function (pipelines:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix2x3dv ProgramUniformMatrix2x3dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat2x3 uniform variable or a dmat2x3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2x3dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** JNI method for {@link #glProgramParameteri ProgramParameteri}  */
	static public function nglProgramParameteri(program:Int,pname:Int,value:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2x4fv ProgramUniformMatrix2x4fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat2x4 uniform variable or a mat2x4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2x4fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glDepthRangeArrayv DepthRangeArrayv}  */
/** JNI method for {@link #glDepthRangeArrayv DepthRangeArrayv}  */
	static public function nglDepthRangeArrayv(first:Int,count:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (first:Int,count:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a vec2 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glProgramUniform2f(program:Int,location:Int,x:Float,y:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glScissorIndexed.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Defines the scissor box for a specific viewport.
 *
 * @param index  the index of the viewport whose scissor box to modify
 * @param left   the left scissor box coordinate
 * @param bottom the bottom scissor box coordinate
 * @param width  the scissor box width
 * @param height the scissor box height
 */
	static public function glScissorIndexed(index:Int,left:Int,bottom:Int,width:Int,height:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetDoublei.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the double value of an indexed state variable.
 *
 * @param target the indexed state to query
 * @param index  the index of the element being queried
 * @param data   a scalar or buffer in which to place the returned data
 */
/** Alternative version of: {@link #glGetDoublei_v GetDoublei_v}  */
	static public function glGetDoublei_v(target:Int,index:Int,data:java.nio.DoubleBuffer):Void;
	@:overload(function (target:Int,index:Int,data:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix3x2fv ProgramUniformMatrix3x2fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat3x2 uniform variable or a mat3x2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3x2fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glReleaseShaderCompiler.xhtml">OpenGL SDK Reference</a></p>
 * 
 *Releases resources allocated by the shader compiler. This is a hint from the application, and does not prevent later use of the shader compiler.
 */
	static public function glReleaseShaderCompiler():Void;
/** JNI method for {@link #glProgramUniform1i ProgramUniform1i}  */
	static public function nglProgramUniform1i(program:Int,location:Int,x:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of an ivec2 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glProgramUniform2i(program:Int,location:Int,x:Int,y:Int):Void;
/** JNI method for {@link #glActiveShaderProgram ActiveShaderProgram}  */
	static public function nglActiveShaderProgram(pipeline:Int,program:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glProgramUniform1f ProgramUniform1f}  */
	static public function nglProgramUniform1f(program:Int,location:Int,x:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix2dv ProgramUniformMatrix2dv}  */
/** JNI method for {@link #glProgramUniformMatrix2dv ProgramUniformMatrix2dv}  */
	static public function nglProgramUniformMatrix2dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glValidateProgramPipeline ValidateProgramPipeline}  */
	static public function nglValidateProgramPipeline(pipeline:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glCreateShaderProgramv CreateShaderProgramv}  */
/** JNI method for {@link #glCreateShaderProgramv CreateShaderProgramv}  */
	static public function nglCreateShaderProgramv(type:Int,count:Int,strings:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (type:Int,count:Int,strings:haxe.Int64):Int {})
/** JNI method for {@link #glProgramUniform1d ProgramUniform1d}  */
	static public function nglProgramUniform1d(program:Int,location:Int,x:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a generic vertex attribute.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 * @param z     the vertex attribute z component
 * @param w     the vertex attribute w component
 */
	static public function glVertexAttribL4d(index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a uint uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glProgramUniform1ui(program:Int,location:Int,x:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a dvec2 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glProgramUniform2d(program:Int,location:Int,x:Float,y:Float):Void;
/** Buffer return (w/ implicit max length) version of: {@link #glGetProgramBinary GetProgramBinary}  */
/** Buffer return version of: {@link #glGetProgramBinary GetProgramBinary}  */
/** Alternative version of: {@link #glGetProgramBinary GetProgramBinary}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramBinary.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns a binary representation of a program object's compiled and linked executable source.
 *
 * @param program      the name of a program object whose binary representation to retrieve
 * @param bufSize      the size of the buffer whose address is given by {@code binary}
 * @param length       the address of a variable to receive the number of bytes written into {@code binary}
 * @param binaryFormat a variable to receive a token indicating the format of the binary data returned by the GL
 * @param binary       an array into which the GL will return {@code program}'s binary representation
 */
	static public function glGetProgramBinary(program:Int,bufSize:Int,length:java.nio.ByteBuffer,binaryFormat:java.nio.ByteBuffer,binary:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,binaryFormat:java.nio.IntBuffer):java.nio.ByteBuffer {})
	@:overload(function (program:Int,bufSize:Int,binaryFormat:java.nio.IntBuffer):java.nio.ByteBuffer {})
	@:overload(function (program:Int,length:java.nio.IntBuffer,binaryFormat:java.nio.IntBuffer,binary:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform3iv ProgramUniform3iv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single ivec3 uniform variable or a ivec3 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform3iv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform4iv ProgramUniform4iv}  */
/** JNI method for {@link #glProgramUniform4iv ProgramUniform4iv}  */
	static public function nglProgramUniform4iv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix3fv ProgramUniformMatrix3fv}  */
/** JNI method for {@link #glProgramUniformMatrix3fv ProgramUniformMatrix3fv}  */
	static public function nglProgramUniformMatrix3fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4x3dv ProgramUniformMatrix4x3dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat4x3 uniform variable or a dmat4x3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4x3dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glViewportIndexedfv ViewportIndexedfv}  */
/** JNI method for {@link #glViewportIndexedfv ViewportIndexedfv}  */
	static public function nglViewportIndexedfv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glScissorArrayv ScissorArrayv}  */
/** JNI method for {@link #glScissorArrayv ScissorArrayv}  */
	static public function nglScissorArrayv(first:Int,count:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (first:Int,count:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix4x2fv ProgramUniformMatrix4x2fv}  */
/** JNI method for {@link #glProgramUniformMatrix4x2fv ProgramUniformMatrix4x2fv}  */
	static public function nglProgramUniformMatrix4x2fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetFloati_v GetFloati_v}  */
/** JNI method for {@link #glGetFloati_v GetFloati_v}  */
	static public function nglGetFloati_v(target:Int,index:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glScissorIndexedv ScissorIndexedv}  */
/** JNI method for {@link #glScissorIndexedv ScissorIndexedv}  */
	static public function nglScissorIndexedv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform2uiv ProgramUniform2uiv}  */
/** JNI method for {@link #glProgramUniform2uiv ProgramUniform2uiv}  */
	static public function nglProgramUniform2uiv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** String return (w/ implicit max length) version of: {@link #glGetProgramPipelineInfoLog GetProgramPipelineInfoLog}  */
/** String return version of: {@link #glGetProgramPipelineInfoLog GetProgramPipelineInfoLog}  */
/** Alternative version of: {@link #glGetProgramPipelineInfoLog GetProgramPipelineInfoLog}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramPipelineInfoLog.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the info log string from a program pipeline object.
 *
 * @param pipeline the name of a program pipeline object from which to retrieve the info log
 * @param bufSize  the maximum number of characters, including the null terminator, that may be written into {@code infoLog}
 * @param length   a variable into which will be written the number of characters written into {@code infoLog}
 * @param infoLog  an array of characters into which will be written the info log for {@code pipeline}
 */
	static public function glGetProgramPipelineInfoLog(pipeline:Int,bufSize:Int,length:java.nio.ByteBuffer,infoLog:java.nio.ByteBuffer):Void;
	@:overload(function (pipeline:Int):String {})
	@:overload(function (pipeline:Int,bufSize:Int):String {})
	@:overload(function (pipeline:Int,length:java.nio.IntBuffer,infoLog:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a vec3 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glProgramUniform3f(program:Int,location:Int,x:Float,y:Float,z:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of an ivec3 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glProgramUniform3i(program:Int,location:Int,x:Int,y:Int,z:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDepthRangeIndexed.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies mapping of depth values from normalized device coordinates to window coordinates for a specified viewport.
 *
 * @param index the index of the viewport whose depth range to update
 * @param zNear the mapping of the near clipping plane to window coordinates. The initial value is 0.
 * @param zFar  the mapping of the far clipping plane to window coordinates. The initial value is 1.
 */
	static public function glDepthRangeIndexed(index:Int,zNear:Float,zFar:Float):Void;
/** JNI method for {@link #glProgramUniform2i ProgramUniform2i}  */
	static public function nglProgramUniform2i(program:Int,location:Int,x:Int,y:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetProgramPipelineiv GetProgramPipelineiv}  */
	static public function glGetProgramPipelinei(pipeline:Int,pname:Int):Int;
/** JNI method for {@link #glProgramUniform2f ProgramUniform2f}  */
	static public function nglProgramUniform2f(program:Int,location:Int,x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform3fv ProgramUniform3fv}  */
/** JNI method for {@link #glProgramUniform3fv ProgramUniform3fv}  */
	static public function nglProgramUniform3fv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform2dv ProgramUniform2dv}  */
/** JNI method for {@link #glProgramUniform2dv ProgramUniform2dv}  */
	static public function nglProgramUniform2dv(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform2d ProgramUniform2d}  */
	static public function nglProgramUniform2d(program:Int,location:Int,x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/** Returns the {@link GL41} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL41;
/** JNI method for {@link #glProgramUniform2ui ProgramUniform2ui}  */
	static public function nglProgramUniform2ui(program:Int,location:Int,x:Int,y:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix3x4fv ProgramUniformMatrix3x4fv}  */
/** JNI method for {@link #glProgramUniformMatrix3x4fv ProgramUniformMatrix3x4fv}  */
	static public function nglProgramUniformMatrix3x4fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Single return value version of: {@link #glGenProgramPipelines GenProgramPipelines}  */
/** Alternative version of: {@link #glGenProgramPipelines GenProgramPipelines}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGenProgramPipelines.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Reserves program pipeline object names.
 *
 * @param n         the number of program pipeline object names to reserve
 * @param pipelines an array of into which the reserved names will be written
 */
	static public function glGenProgramPipelines(n:Int,pipelines:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (pipelines:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProgramUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a dvec3 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glProgramUniform3d(program:Int,location:Int,x:Float,y:Float,z:Float):Void;

}
