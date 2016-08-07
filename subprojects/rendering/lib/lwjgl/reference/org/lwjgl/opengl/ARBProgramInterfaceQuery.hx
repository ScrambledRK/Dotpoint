package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBProgramInterfaceQuery")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/program_interface_query.txt">ARB_program_interface_query</a> extension.
 * 
 * <p>This extension provides a single unified set of query commands that can be used by applications to determine properties of various interfaces and
 * resources used by program objects to communicate with application code, fixed-function OpenGL pipeline stages, and other programs. In unextended OpenGL
 * 4.2, there is a separate set of query commands for each different type of interface or resource used by the program. These different sets of queries are
 * structured nearly identically, but the queries for some interfaces have limited capability (e.g., there is no ability to enumerate fragment shader
 * outputs).</p>
 * 
 * <p>With the single set of query commands provided by this extension, a consistent set of queries is available for all interfaces, and a new interface can
 * be added without having to introduce a completely new set of query commands. These queries are intended to provide a superset of the capabilities
 * provided by similar queries in OpenGL 4.2, and should allow for the deprecation of the existing queries.</p>
 * 
 * <p>This extension defines two terms: interfaces and active resources. Each interface of a program object provides a way for the program to communicate with
 * application code, fixed-function OpenGL pipeline stages, and other programs. Examples of interfaces for a program object include inputs (receiving
 * values from vertex attributes or outputs of other programs), outputs (sending values to other programs or per-fragment operations), uniforms (receiving
 * values from API calls), uniform blocks (receiving values from bound buffer objects), subroutines and subroutine uniforms (receiving API calls to
 * indicate functions to call during program execution), and atomic counter buffers (holding values to be manipulated by atomic counter shader functions).
 * Each interface of a program has a set of active resources used by the program. For example, the resources of a program's input interface includes all
 * active input variables used by the first stage of the program. The resources of a program's uniform block interface consists of the set of uniform
 * blocks with at least one member used by any shader in the program.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBProgramInterfaceQuery 
{
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_UNIFORM:Int = 37601;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_UNIFORM_BLOCK:Int = 37602;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_PROGRAM_INPUT:Int = 37603;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_PROGRAM_OUTPUT:Int = 37604;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_BUFFER_VARIABLE:Int = 37605;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_SHADER_STORAGE_BLOCK:Int = 37606;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_VERTEX_SUBROUTINE:Int = 37608;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_TESS_CONTROL_SUBROUTINE:Int = 37609;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_TESS_EVALUATION_SUBROUTINE:Int = 37610;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_GEOMETRY_SUBROUTINE:Int = 37611;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_FRAGMENT_SUBROUTINE:Int = 37612;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_COMPUTE_SUBROUTINE:Int = 37613;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_VERTEX_SUBROUTINE_UNIFORM:Int = 37614;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_TESS_CONTROL_SUBROUTINE_UNIFORM:Int = 37615;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_TESS_EVALUATION_SUBROUTINE_UNIFORM:Int = 37616;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_GEOMETRY_SUBROUTINE_UNIFORM:Int = 37617;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_FRAGMENT_SUBROUTINE_UNIFORM:Int = 37618;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_COMPUTE_SUBROUTINE_UNIFORM:Int = 37619;
/**
 * Accepted by the {@code programInterface} parameter of GetProgramInterfaceiv, GetProgramResourceIndex, GetProgramResourceName, GetProgramResourceiv,
 * GetProgramResourceLocation, and GetProgramResourceLocationIndex.
 */
	inline static public var GL_TRANSFORM_FEEDBACK_VARYING:Int = 37620;
/** Accepted by the {@code pname} parameter of GetProgramInterfaceiv.  */
	inline static public var GL_ACTIVE_RESOURCES:Int = 37621;
/** Accepted by the {@code pname} parameter of GetProgramInterfaceiv.  */
	inline static public var GL_MAX_NAME_LENGTH:Int = 37622;
/** Accepted by the {@code pname} parameter of GetProgramInterfaceiv.  */
	inline static public var GL_MAX_NUM_ACTIVE_VARIABLES:Int = 37623;
/** Accepted by the {@code pname} parameter of GetProgramInterfaceiv.  */
	inline static public var GL_MAX_NUM_COMPATIBLE_SUBROUTINES:Int = 37624;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_NAME_LENGTH:Int = 37625;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_TYPE:Int = 37626;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_ARRAY_SIZE:Int = 37627;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_OFFSET:Int = 37628;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_BLOCK_INDEX:Int = 37629;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_ARRAY_STRIDE:Int = 37630;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_MATRIX_STRIDE:Int = 37631;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_IS_ROW_MAJOR:Int = 37632;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_INDEX:Int = 37633;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_BUFFER_BINDING:Int = 37634;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_BUFFER_DATA_SIZE:Int = 37635;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_NUM_ACTIVE_VARIABLES:Int = 37636;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_ACTIVE_VARIABLES:Int = 37637;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_REFERENCED_BY_VERTEX_SHADER:Int = 37638;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_REFERENCED_BY_TESS_CONTROL_SHADER:Int = 37639;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_REFERENCED_BY_TESS_EVALUATION_SHADER:Int = 37640;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_REFERENCED_BY_GEOMETRY_SHADER:Int = 37641;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_REFERENCED_BY_FRAGMENT_SHADER:Int = 37642;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_REFERENCED_BY_COMPUTE_SHADER:Int = 37643;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_TOP_LEVEL_ARRAY_SIZE:Int = 37644;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_TOP_LEVEL_ARRAY_STRIDE:Int = 37645;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_LOCATION:Int = 37646;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_LOCATION_INDEX:Int = 37647;
/** Accepted in the {@code props} array of GetProgramResourceiv.  */
	inline static public var GL_IS_PER_PATCH:Int = 37607;
/** Function address.  */
	public var GetProgramInterfaceiv:haxe.Int64;
/** Function address.  */
	public var GetProgramResourceIndex:haxe.Int64;
/** Function address.  */
	public var GetProgramResourceName:haxe.Int64;
/** Function address.  */
	public var GetProgramResourceiv:haxe.Int64;
/** Function address.  */
	public var GetProgramResourceLocation:haxe.Int64;
/** Function address.  */
	public var GetProgramResourceLocationIndex:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Single return value version of: {@link #glGetProgramInterfaceiv GetProgramInterfaceiv}  */
	static public function glGetProgramInterfacei(program:Int,programInterface:Int,pname:Int):Int;
/** Unsafe version of {@link #glGetProgramInterfaceiv GetProgramInterfaceiv}  */
	static public function nglGetProgramInterfaceiv(program:Int,programInterface:Int,pname:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glGetProgramResourceIndex GetProgramResourceIndex}  */
	static public function nglGetProgramResourceIndex(program:Int,programInterface:Int,name:haxe.Int64):Int;
/** String return (w/ implicit max length) version of: {@link #glGetProgramResourceName GetProgramResourceName}  */
/** String return version of: {@link #glGetProgramResourceName GetProgramResourceName}  */
/** Alternative version of: {@link #glGetProgramResourceName GetProgramResourceName}  */
/**
 * Queries the name of an indexed resource within a program.
 *
 * @param program          the name of a program object whose resources to query
 * @param programInterface a token identifying the interface within {@code program} containing the indexed resource. One of:<br>{@link #GL_UNIFORM UNIFORM}, {@link #GL_UNIFORM_BLOCK UNIFORM_BLOCK}, {@link #GL_PROGRAM_INPUT PROGRAM_INPUT}, {@link #GL_PROGRAM_OUTPUT PROGRAM_OUTPUT}, {@link #GL_BUFFER_VARIABLE BUFFER_VARIABLE}, {@link #GL_SHADER_STORAGE_BLOCK SHADER_STORAGE_BLOCK}, {@link #GL_VERTEX_SUBROUTINE VERTEX_SUBROUTINE}, {@link #GL_TESS_CONTROL_SUBROUTINE TESS_CONTROL_SUBROUTINE}, {@link #GL_TESS_EVALUATION_SUBROUTINE TESS_EVALUATION_SUBROUTINE}, {@link #GL_GEOMETRY_SUBROUTINE GEOMETRY_SUBROUTINE}, {@link #GL_FRAGMENT_SUBROUTINE FRAGMENT_SUBROUTINE}, {@link #GL_COMPUTE_SUBROUTINE COMPUTE_SUBROUTINE}, {@link #GL_VERTEX_SUBROUTINE_UNIFORM VERTEX_SUBROUTINE_UNIFORM}, {@link #GL_TESS_CONTROL_SUBROUTINE_UNIFORM TESS_CONTROL_SUBROUTINE_UNIFORM}, {@link #GL_TESS_EVALUATION_SUBROUTINE_UNIFORM TESS_EVALUATION_SUBROUTINE_UNIFORM}, {@link #GL_GEOMETRY_SUBROUTINE_UNIFORM GEOMETRY_SUBROUTINE_UNIFORM}, {@link #GL_FRAGMENT_SUBROUTINE_UNIFORM FRAGMENT_SUBROUTINE_UNIFORM}, {@link #GL_COMPUTE_SUBROUTINE_UNIFORM COMPUTE_SUBROUTINE_UNIFORM}, {@link #GL_TRANSFORM_FEEDBACK_VARYING TRANSFORM_FEEDBACK_VARYING}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}
 * @param index            the index of the resource within {@code programInterface} of {@code program}
 * @param bufSize          the size of the character array whose address is given by {@code name}
 * @param length           a variable which will receive the length of the resource name
 * @param name             a character array into which will be written the name of the resource
 */
	static public function glGetProgramResourceName(program:Int,programInterface:Int,index:Int,bufSize:Int,length:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,programInterface:Int,index:Int):String {})
	@:overload(function (program:Int,programInterface:Int,index:Int,bufSize:Int):String {})
	@:overload(function (program:Int,programInterface:Int,index:Int,length:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})
/** CharSequence version of: {@link #glGetProgramResourceLocationIndex GetProgramResourceLocationIndex}  */
/**
 * Queries the fragment color index of a named variable within a program.
 *
 * @param program          the name of a program object whose resources to query
 * @param programInterface a token identifying the interface within {@code program} containing the resource named {@code name}. Must be:<br>{@link #GL_PROGRAM_OUTPUT PROGRAM_OUTPUT}
 * @param name             the name of the resource to query the location of
 */
	static public function glGetProgramResourceLocationIndex(program:Int,programInterface:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,programInterface:Int,name:java.lang.CharSequence):Int {})
/** Unsafe version of {@link #glGetProgramResourceLocation GetProgramResourceLocation}  */
	static public function nglGetProgramResourceLocation(program:Int,programInterface:Int,name:haxe.Int64):Int;
/**
 * Queries a property of an interface in a program.
 *
 * @param program          the name of a program object whose interface to query
 * @param programInterface a token identifying the interface within {@code program} to query. One of:<br>{@link #GL_UNIFORM UNIFORM}, {@link #GL_UNIFORM_BLOCK UNIFORM_BLOCK}, {@link #GL_PROGRAM_INPUT PROGRAM_INPUT}, {@link #GL_PROGRAM_OUTPUT PROGRAM_OUTPUT}, {@link #GL_BUFFER_VARIABLE BUFFER_VARIABLE}, {@link #GL_SHADER_STORAGE_BLOCK SHADER_STORAGE_BLOCK}, {@link #GL_VERTEX_SUBROUTINE VERTEX_SUBROUTINE}, {@link #GL_TESS_CONTROL_SUBROUTINE TESS_CONTROL_SUBROUTINE}, {@link #GL_TESS_EVALUATION_SUBROUTINE TESS_EVALUATION_SUBROUTINE}, {@link #GL_GEOMETRY_SUBROUTINE GEOMETRY_SUBROUTINE}, {@link #GL_FRAGMENT_SUBROUTINE FRAGMENT_SUBROUTINE}, {@link #GL_COMPUTE_SUBROUTINE COMPUTE_SUBROUTINE}, {@link #GL_VERTEX_SUBROUTINE_UNIFORM VERTEX_SUBROUTINE_UNIFORM}, {@link #GL_TESS_CONTROL_SUBROUTINE_UNIFORM TESS_CONTROL_SUBROUTINE_UNIFORM}, {@link #GL_TESS_EVALUATION_SUBROUTINE_UNIFORM TESS_EVALUATION_SUBROUTINE_UNIFORM}, {@link #GL_GEOMETRY_SUBROUTINE_UNIFORM GEOMETRY_SUBROUTINE_UNIFORM}, {@link #GL_FRAGMENT_SUBROUTINE_UNIFORM FRAGMENT_SUBROUTINE_UNIFORM}, {@link #GL_COMPUTE_SUBROUTINE_UNIFORM COMPUTE_SUBROUTINE_UNIFORM}, {@link #GL_TRANSFORM_FEEDBACK_VARYING TRANSFORM_FEEDBACK_VARYING}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}
 * @param pname            the name of the parameter within {@code programInterface} to query. One of:<br>{@link #GL_ACTIVE_RESOURCES ACTIVE_RESOURCES}, {@link #GL_MAX_NAME_LENGTH MAX_NAME_LENGTH}, {@link #GL_MAX_NUM_ACTIVE_VARIABLES MAX_NUM_ACTIVE_VARIABLES}, {@link #GL_MAX_NUM_COMPATIBLE_SUBROUTINES MAX_NUM_COMPATIBLE_SUBROUTINES}
 * @param params           a variable to retrieve the value of {@code pname} for the program interface
 */
/** Alternative version of: {@link #glGetProgramInterfaceiv GetProgramInterfaceiv}  */
	static public function glGetProgramInterfaceiv(program:Int,programInterface:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,programInterface:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Buffer return version of: {@link #glGetProgramResourceiv GetProgramResourceiv}  */
/** Alternative version of: {@link #glGetProgramResourceiv GetProgramResourceiv}  */
/**
 * Retrieves values for multiple properties of a single active resource within a program object.
 *
 * @param program          the name of a program object whose resources to query
 * @param programInterface a token identifying the interface within {@code program} containing the resource named {@code name}. One of:<br>{@link #GL_UNIFORM UNIFORM}, {@link #GL_UNIFORM_BLOCK UNIFORM_BLOCK}, {@link #GL_PROGRAM_INPUT PROGRAM_INPUT}, {@link #GL_PROGRAM_OUTPUT PROGRAM_OUTPUT}, {@link #GL_BUFFER_VARIABLE BUFFER_VARIABLE}, {@link #GL_SHADER_STORAGE_BLOCK SHADER_STORAGE_BLOCK}, {@link #GL_VERTEX_SUBROUTINE VERTEX_SUBROUTINE}, {@link #GL_TESS_CONTROL_SUBROUTINE TESS_CONTROL_SUBROUTINE}, {@link #GL_TESS_EVALUATION_SUBROUTINE TESS_EVALUATION_SUBROUTINE}, {@link #GL_GEOMETRY_SUBROUTINE GEOMETRY_SUBROUTINE}, {@link #GL_FRAGMENT_SUBROUTINE FRAGMENT_SUBROUTINE}, {@link #GL_COMPUTE_SUBROUTINE COMPUTE_SUBROUTINE}, {@link #GL_VERTEX_SUBROUTINE_UNIFORM VERTEX_SUBROUTINE_UNIFORM}, {@link #GL_TESS_CONTROL_SUBROUTINE_UNIFORM TESS_CONTROL_SUBROUTINE_UNIFORM}, {@link #GL_TESS_EVALUATION_SUBROUTINE_UNIFORM TESS_EVALUATION_SUBROUTINE_UNIFORM}, {@link #GL_GEOMETRY_SUBROUTINE_UNIFORM GEOMETRY_SUBROUTINE_UNIFORM}, {@link #GL_FRAGMENT_SUBROUTINE_UNIFORM FRAGMENT_SUBROUTINE_UNIFORM}, {@link #GL_COMPUTE_SUBROUTINE_UNIFORM COMPUTE_SUBROUTINE_UNIFORM}, {@link #GL_TRANSFORM_FEEDBACK_VARYING TRANSFORM_FEEDBACK_VARYING}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}
 * @param index            the active resource index
 * @param propCount        the number of properties in {@code props}
 * @param props            an array that will receive the active resource properties
 * @param bufSize          the size of the integer array whose address is given by {@code params}
 * @param length           a variable which will receive the number of values returned
 * @param params           an array that will receive the property values
 */
	static public function glGetProgramResourceiv(program:Int,programInterface:Int,index:Int,propCount:Int,props:java.nio.ByteBuffer,bufSize:Int,length:java.nio.ByteBuffer,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,programInterface:Int,index:Int,props:java.nio.IntBuffer,bufSize:Int):java.nio.IntBuffer {})
	@:overload(function (program:Int,programInterface:Int,index:Int,props:java.nio.IntBuffer,length:java.nio.IntBuffer,params:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetProgramResourceiv GetProgramResourceiv}  */
	static public function nglGetProgramResourceiv(program:Int,programInterface:Int,index:Int,propCount:Int,props:haxe.Int64,bufSize:Int,length:haxe.Int64,params:haxe.Int64):Void;
/** CharSequence version of: {@link #glGetProgramResourceIndex GetProgramResourceIndex}  */
/**
 * Queries the index of a named resource within a program.
 *
 * @param program          the name of a program object whose resources to query
 * @param programInterface a token identifying the interface within {@code program} containing the resource named {Wcode name}. One of:<br>{@link #GL_UNIFORM UNIFORM}, {@link #GL_UNIFORM_BLOCK UNIFORM_BLOCK}, {@link #GL_PROGRAM_INPUT PROGRAM_INPUT}, {@link #GL_PROGRAM_OUTPUT PROGRAM_OUTPUT}, {@link #GL_BUFFER_VARIABLE BUFFER_VARIABLE}, {@link #GL_SHADER_STORAGE_BLOCK SHADER_STORAGE_BLOCK}, {@link #GL_VERTEX_SUBROUTINE VERTEX_SUBROUTINE}, {@link #GL_TESS_CONTROL_SUBROUTINE TESS_CONTROL_SUBROUTINE}, {@link #GL_TESS_EVALUATION_SUBROUTINE TESS_EVALUATION_SUBROUTINE}, {@link #GL_GEOMETRY_SUBROUTINE GEOMETRY_SUBROUTINE}, {@link #GL_FRAGMENT_SUBROUTINE FRAGMENT_SUBROUTINE}, {@link #GL_COMPUTE_SUBROUTINE COMPUTE_SUBROUTINE}, {@link #GL_VERTEX_SUBROUTINE_UNIFORM VERTEX_SUBROUTINE_UNIFORM}, {@link #GL_TESS_CONTROL_SUBROUTINE_UNIFORM TESS_CONTROL_SUBROUTINE_UNIFORM}, {@link #GL_TESS_EVALUATION_SUBROUTINE_UNIFORM TESS_EVALUATION_SUBROUTINE_UNIFORM}, {@link #GL_GEOMETRY_SUBROUTINE_UNIFORM GEOMETRY_SUBROUTINE_UNIFORM}, {@link #GL_FRAGMENT_SUBROUTINE_UNIFORM FRAGMENT_SUBROUTINE_UNIFORM}, {@link #GL_COMPUTE_SUBROUTINE_UNIFORM COMPUTE_SUBROUTINE_UNIFORM}, {@link #GL_TRANSFORM_FEEDBACK_VARYING TRANSFORM_FEEDBACK_VARYING}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}
 * @param name             the name of the resource to query the index of
 */
	static public function glGetProgramResourceIndex(program:Int,programInterface:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,programInterface:Int,name:java.lang.CharSequence):Int {})
/** CharSequence version of: {@link #glGetProgramResourceLocation GetProgramResourceLocation}  */
/**
 * Queries the location of a named resource within a program.
 *
 * @param program          the name of a program object whose resources to query
 * @param programInterface a token identifying the interface within {@code program} containing the resource named {@code name}
 * @param name             the name of the resource to query the location of
 */
	static public function glGetProgramResourceLocation(program:Int,programInterface:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,programInterface:Int,name:java.lang.CharSequence):Int {})
/** Unsafe version of {@link #glGetProgramResourceLocationIndex GetProgramResourceLocationIndex}  */
	static public function nglGetProgramResourceLocationIndex(program:Int,programInterface:Int,name:haxe.Int64):Int;
/** Returns the {@link ARBProgramInterfaceQuery} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBProgramInterfaceQuery;
/** Unsafe version of {@link #glGetProgramResourceName GetProgramResourceName}  */
	static public function nglGetProgramResourceName(program:Int,programInterface:Int,index:Int,bufSize:Int,length:haxe.Int64,name:haxe.Int64):Void;

}
