package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBSamplerObjects")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/sampler_objects.txt">ARB_sampler_objects</a> extension.
 * 
 * <p>In unextended OpenGL textures are considered to be sets of image data (mip-chains, arrays, cube-map face sets, etc.) and sampling state (sampling mode,
 * mip-mapping state, coordinate wrapping and clamping rules, etc.) combined into a single object. It is typical for an application to use many textures
 * with a limited set of sampling states that are the same between them. In order to use textures in this way, an application must generate and configure
 * many texture names, adding overhead both to applications and to implementations. Furthermore, should an application wish to sample from a texture in
 * more than one way (with and without mip-mapping, for example) it must either modify the state of the texture or create two textures, each with a copy of
 * the same image data. This can introduce runtime and memory costs to the application.</p>
 * 
 * <p>This extension separates sampler state from texture image data. A new object type is introduced, the sampler (representing generic sampling parameters).
 * The new sampler objects are represented by a new named type encapsulating the sampling parameters of a traditional texture object. Sampler objects may
 * be bound to texture units to supplant the bound texture's sampling state. A single sampler may be bound to more than one texture unit simultaneously,
 * allowing different textures to be accessed with a single set of shared sampling parameters. Also, by binding different sampler objects to texture units
 * to which the same texture has been bound, the same texture image data may be sampled with different sampling parameters.</p>
 * 
 * <p>Promoted to core in {@link GL33 OpenGL 3.3}.</p>
 */
extern class ARBSamplerObjects 
{
/** Accepted by the {@code value} parameter of the GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv and GetDoublev functions.  */
	inline static public var GL_SAMPLER_BINDING:Int = 35097;
/** Function address.  */
	public var GenSamplers:haxe.Int64;
/** Function address.  */
	public var DeleteSamplers:haxe.Int64;
/** Function address.  */
	public var IsSampler:haxe.Int64;
/** Function address.  */
	public var BindSampler:haxe.Int64;
/** Function address.  */
	public var SamplerParameteri:haxe.Int64;
/** Function address.  */
	public var SamplerParameterf:haxe.Int64;
/** Function address.  */
	public var SamplerParameteriv:haxe.Int64;
/** Function address.  */
	public var SamplerParameterfv:haxe.Int64;
/** Function address.  */
	public var SamplerParameterIiv:haxe.Int64;
/** Function address.  */
	public var SamplerParameterIuiv:haxe.Int64;
/** Function address.  */
	public var GetSamplerParameteriv:haxe.Int64;
/** Function address.  */
	public var GetSamplerParameterfv:haxe.Int64;
/** Function address.  */
	public var GetSamplerParameterIiv:haxe.Int64;
/** Function address.  */
	public var GetSamplerParameterIuiv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glGetSamplerParameterIuiv GetSamplerParameterIuiv}  */
	static public function nglGetSamplerParameterIuiv(sampler:Int,pname:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glDeleteSamplers DeleteSamplers}  */
	static public function nglDeleteSamplers(count:Int,samplers:haxe.Int64):Void;
/** Unsafe version of {@link #glSamplerParameteriv SamplerParameteriv}  */
	static public function nglSamplerParameteriv(sampler:Int,pname:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glGetSamplerParameterfv GetSamplerParameterfv}  */
	static public function nglGetSamplerParameterfv(sampler:Int,pname:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glGetSamplerParameterIiv GetSamplerParameterIiv}  */
	static public function nglGetSamplerParameterIiv(sampler:Int,pname:Int,params:haxe.Int64):Void;
/** Single value version of: {@link #glDeleteSamplers DeleteSamplers}  */
/** Alternative version of: {@link #glDeleteSamplers DeleteSamplers}  */
/**
 * Deletes named sampler objects.
 *
 * @param count    the number of sampler objects to be deleted
 * @param samplers an array of sampler objects to be deleted
 */
	static public function glDeleteSamplers(count:Int,samplers:java.nio.ByteBuffer):Void;
	@:overload(function (sampler:Int):Void {})
	@:overload(function (samplers:java.nio.IntBuffer):Void {})
/**
 * Determines if a name corresponds to a sampler object.
 *
 * @param sampler a value that may be the name of a sampler object
 */
	static public function glIsSampler(sampler:Int):Bool;
/** Single return value version of: {@link #glGetSamplerParameterIuiv GetSamplerParameterIuiv}  */
	static public function glGetSamplerParameterIui(sampler:Int,pname:Int):Int;
/** Unsafe version of {@link #glSamplerParameterIiv SamplerParameterIiv}  */
	static public function nglSamplerParameterIiv(sampler:Int,pname:Int,params:haxe.Int64):Void;
/** Single return value version of: {@link #glGetSamplerParameterIiv GetSamplerParameterIiv}  */
	static public function glGetSamplerParameterIi(sampler:Int,pname:Int):Int;
/**
 * Pointer version of {@link #glSamplerParameteri SamplerParameteri}.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a sampler parameter. One of:<br>{@link GL11#GL_TEXTURE_BORDER_COLOR TEXTURE_BORDER_COLOR}, {@link GL11#GL_TEXTURE_WRAP_S TEXTURE_WRAP_S}, {@link GL11#GL_TEXTURE_WRAP_T TEXTURE_WRAP_T}, {@link GL12#GL_TEXTURE_WRAP_R TEXTURE_WRAP_R}, {@link GL11#GL_TEXTURE_MIN_FILTER TEXTURE_MIN_FILTER}, {@link GL11#GL_TEXTURE_MAG_FILTER TEXTURE_MAG_FILTER}, {@link GL12#GL_TEXTURE_MIN_LOD TEXTURE_MIN_LOD}, {@link GL12#GL_TEXTURE_MAX_LOD TEXTURE_MAX_LOD}, {@link GL14#GL_TEXTURE_LOD_BIAS TEXTURE_LOD_BIAS}, {@link GL14#GL_TEXTURE_COMPARE_MODE TEXTURE_COMPARE_MODE}, {@link GL14#GL_TEXTURE_COMPARE_FUNC TEXTURE_COMPARE_FUNC}
 * @param params  an array where the value or values of {@code pname} are stored
 */
/** Alternative version of: {@link #glSamplerParameteriv SamplerParameteriv}  */
	static public function glSamplerParameteriv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Unsigned pure integer version of {@link #glSamplerParameteriv SamplerParameteriv}.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a sampler parameter
 * @param params  an array where the value or values of {@code pname} are stored
 */
/** Alternative version of: {@link #glSamplerParameterIuiv SamplerParameterIuiv}  */
	static public function glSamplerParameterIuiv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glSamplerParameterIuiv SamplerParameterIuiv}  */
	static public function nglSamplerParameterIuiv(sampler:Int,pname:Int,params:haxe.Int64):Void;
/**
 * Binds a named sampler to a texturing target.
 *
 * @param unit    the index of the texture unit to which the sampler is bound
 * @param sampler the name of a sampler
 */
	static public function glBindSampler(unit:Int,sampler:Int):Void;
/**
 * Set the integer value of a sampler parameter.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a single-valued sampler parameter. One of:<br>{@link GL11#GL_TEXTURE_WRAP_S TEXTURE_WRAP_S}, {@link GL11#GL_TEXTURE_WRAP_T TEXTURE_WRAP_T}, {@link GL12#GL_TEXTURE_WRAP_R TEXTURE_WRAP_R}, {@link GL11#GL_TEXTURE_MIN_FILTER TEXTURE_MIN_FILTER}, {@link GL11#GL_TEXTURE_MAG_FILTER TEXTURE_MAG_FILTER}, {@link GL12#GL_TEXTURE_MIN_LOD TEXTURE_MIN_LOD}, {@link GL12#GL_TEXTURE_MAX_LOD TEXTURE_MAX_LOD}, {@link GL14#GL_TEXTURE_LOD_BIAS TEXTURE_LOD_BIAS}, {@link GL14#GL_TEXTURE_COMPARE_MODE TEXTURE_COMPARE_MODE}, {@link GL14#GL_TEXTURE_COMPARE_FUNC TEXTURE_COMPARE_FUNC}
 * @param param   the value of {@code pname}
 */
	static public function glSamplerParameteri(sampler:Int,pname:Int,param:Int):Void;
/** Unsafe version of {@link #glGetSamplerParameteriv GetSamplerParameteriv}  */
	static public function nglGetSamplerParameteriv(sampler:Int,pname:Int,params:haxe.Int64):Void;
/** Single return value version of: {@link #glGetSamplerParameterfv GetSamplerParameterfv}  */
	static public function glGetSamplerParameterf(sampler:Int,pname:Int):Float;
/** Single return value version of: {@link #glGetSamplerParameteriv GetSamplerParameteriv}  */
	static public function glGetSamplerParameteri(sampler:Int,pname:Int):Int;
/**
 * Float version of {@link #glSamplerParameteri SamplerParameteri}.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a single-valued sampler parameter
 * @param param   the value of {@code pname}
 */
	static public function glSamplerParameterf(sampler:Int,pname:Int,param:Float):Void;
/** Single return value version of: {@link #glGenSamplers GenSamplers}  */
/** Alternative version of: {@link #glGenSamplers GenSamplers}  */
/**
 * Generates sampler object names.
 *
 * @param count    the number of sampler object names to generate
 * @param samplers a buffer in which the generated sampler object names are stored
 */
	static public function glGenSamplers(count:Int,samplers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (samplers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glSamplerParameterfv SamplerParameterfv}  */
	static public function nglSamplerParameterfv(sampler:Int,pname:Int,params:haxe.Int64):Void;
/**
 * Float version of {@link #glGetSamplerParameteriv GetSamplerParameteriv}.
 *
 * @param sampler the name of the sampler object from which to retrieve parameters
 * @param pname   the symbolic name of a sampler parameter
 * @param params  the sampler parameters
 */
/** Alternative version of: {@link #glGetSamplerParameterfv GetSamplerParameterfv}  */
	static public function glGetSamplerParameterfv(sampler:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGenSamplers GenSamplers}  */
	static public function nglGenSamplers(count:Int,samplers:haxe.Int64):Void;
/**
 * Pure integer version of {@link #glSamplerParameteriv SamplerParameteriv}.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a sampler parameter
 * @param params  an array where the value or values of {@code pname} are stored
 */
/** Alternative version of: {@link #glSamplerParameterIiv SamplerParameterIiv}  */
	static public function glSamplerParameterIiv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Unsigned pure integer version of {@link #glGetSamplerParameteriv GetSamplerParameteriv}.
 *
 * @param sampler the name of the sampler object from which to retrieve parameters
 * @param pname   the symbolic name of a sampler parameter
 * @param params  the sampler parameters
 */
/** Alternative version of: {@link #glGetSamplerParameterIuiv GetSamplerParameterIuiv}  */
	static public function glGetSamplerParameterIuiv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Return the integer value(s) of a sampler parameter.
 *
 * @param sampler the name of the sampler object from which to retrieve parameters
 * @param pname   the symbolic name of a sampler parameter. One of:<br>{@link GL11#GL_TEXTURE_WRAP_S TEXTURE_WRAP_S}, {@link GL11#GL_TEXTURE_WRAP_T TEXTURE_WRAP_T}, {@link GL12#GL_TEXTURE_WRAP_R TEXTURE_WRAP_R}, {@link GL11#GL_TEXTURE_MIN_FILTER TEXTURE_MIN_FILTER}, {@link GL11#GL_TEXTURE_MAG_FILTER TEXTURE_MAG_FILTER}, {@link GL12#GL_TEXTURE_MIN_LOD TEXTURE_MIN_LOD}, {@link GL12#GL_TEXTURE_MAX_LOD TEXTURE_MAX_LOD}, {@link GL14#GL_TEXTURE_LOD_BIAS TEXTURE_LOD_BIAS}, {@link GL14#GL_TEXTURE_COMPARE_MODE TEXTURE_COMPARE_MODE}, {@link GL14#GL_TEXTURE_COMPARE_FUNC TEXTURE_COMPARE_FUNC}, ,, {@link GL11#GL_TEXTURE_BORDER_COLOR TEXTURE_BORDER_COLOR}
 * @param params  the sampler parameters
 */
/** Alternative version of: {@link #glGetSamplerParameteriv GetSamplerParameteriv}  */
	static public function glGetSamplerParameteriv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Pure integer version of {@link #glGetSamplerParameteriv GetSamplerParameteriv}.
 *
 * @param sampler the name of the sampler object from which to retrieve parameters
 * @param pname   the symbolic name of a sampler parameter
 * @param params  the sampler parameters
 */
/** Alternative version of: {@link #glGetSamplerParameterIiv GetSamplerParameterIiv}  */
	static public function glGetSamplerParameterIiv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Returns the {@link ARBSamplerObjects} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBSamplerObjects;
/**
 * Float version of {@link #glSamplerParameteriv SamplerParameteriv}.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a sampler parameter
 * @param params  an array where the value or values of {@code pname} are stored
 */
/** Alternative version of: {@link #glSamplerParameterfv SamplerParameterfv}  */
	static public function glSamplerParameterfv(sampler:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})

}
