package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureMultisample")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_multisample.txt">ARB_texture_multisample</a> extension.
 * 
 * <p>This extension provides support for two new types of "multisample textures" - two-dimensional and two-dimensional array - as well as mechanisms to
 * fetch a specific sample from such a texture in a shader, and to attach such textures to FBOs for rendering.</p>
 * 
 * <p>This extension also includes the following functionality, first described in <a href="http://www.opengl.org/registry/specs/NV/explicit_multisample.txt">NV_explicit_multisample</a>:
 * <ul>
 * <li>A query in the API to query the location of samples within the pixel</li>
 * <li>An explicit control for the multisample sample mask to augment the control provided by SampleCoverage</li>
 * </ul></p>
 * 
 * <p>Promoted to core in {@link GL32 OpenGL 3.2}.</p>
 */
extern class ARBTextureMultisample 
{
/** Accepted by the {@code pname} parameter of GetMultisamplefv.  */
	inline static public var GL_SAMPLE_POSITION:Int = 36432;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_SAMPLE_MASK:Int = 36433;
/** Accepted by the {@code target} parameter of GetBooleani_v and GetIntegeri_v.  */
	inline static public var GL_SAMPLE_MASK_VALUE:Int = 36434;
/** Accepted by the {@code target} parameter of BindTexture and TexImage2DMultisample.  */
	inline static public var GL_TEXTURE_2D_MULTISAMPLE:Int = 37120;
/** Accepted by the {@code target} parameter of TexImage2DMultisample.  */
	inline static public var GL_PROXY_TEXTURE_2D_MULTISAMPLE:Int = 37121;
/** Accepted by the {@code target} parameter of BindTexture and TexImage3DMultisample.  */
	inline static public var GL_TEXTURE_2D_MULTISAMPLE_ARRAY:Int = 37122;
/** Accepted by the {@code target} parameter of TexImage3DMultisample.  */
	inline static public var GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY:Int = 37123;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_SAMPLE_MASK_WORDS:Int = 36441;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_COLOR_TEXTURE_SAMPLES:Int = 37134;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_DEPTH_TEXTURE_SAMPLES:Int = 37135;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_INTEGER_SAMPLES:Int = 37136;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_TEXTURE_BINDING_2D_MULTISAMPLE:Int = 37124;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY:Int = 37125;
/** Accepted by the {@code pname} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_SAMPLES:Int = 37126;
/** Accepted by the {@code pname} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_FIXED_SAMPLE_LOCATIONS:Int = 37127;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_2D_MULTISAMPLE:Int = 37128;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_2D_MULTISAMPLE:Int = 37129;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE:Int = 37130;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 37131;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 37132;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 37133;
/** Function address.  */
	public var TexImage2DMultisample:haxe.Int64;
/** Function address.  */
	public var TexImage3DMultisample:haxe.Int64;
/** Function address.  */
	public var GetMultisamplefv:haxe.Int64;
/** Function address.  */
	public var SampleMaski:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Sets the value of a sub-word of the sample mask.
 *
 * @param index which 32-bit sub-word of the sample mask to update
 * @param mask  the new value of the mask sub-word
 */
	static public function glSampleMaski(index:Int,mask:Int):Void;
/** Unsafe version of {@link #glGetMultisamplefv GetMultisamplefv}  */
	static public function nglGetMultisamplefv(pname:Int,index:Int,val:haxe.Int64):Void;
/** Single return value version of: {@link #glGetMultisamplefv GetMultisamplefv}  */
	static public function glGetMultisamplef(pname:Int,index:Int):Float;
/**
 * Establishes the data storage, format, dimensions, and number of samples of a 2D multisample texture's image.
 *
 * @param target               the target of the operation. One of:<br>{@link #GL_TEXTURE_2D_MULTISAMPLE TEXTURE_2D_MULTISAMPLE}, {@link #GL_PROXY_TEXTURE_2D_MULTISAMPLE PROXY_TEXTURE_2D_MULTISAMPLE}
 * @param samples              the number of samples in the multisample texture's image
 * @param internalformat       the internal format to be used to store the multisample texture's image. {@code internalformat} must specify a color-renderable, depth-renderable,
 *                             or stencil-renderable format.
 * @param width                the width of the multisample texture's image, in texels
 * @param height               the height of the multisample texture's image, in texels
 * @param fixedsamplelocations whether the image will use identical sample locations and the same number of samples for all texels in the image, and the sample locations will not
 *                             depend on the internal format or size of the image
 */
	static public function glTexImage2DMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,fixedsamplelocations:Bool):Void;
/**
 * Establishes the data storage, format, dimensions, and number of samples of a 3D multisample texture's image.
 *
 * @param target               the target of the operation. One of:<br>{@link #GL_TEXTURE_2D_MULTISAMPLE_ARRAY TEXTURE_2D_MULTISAMPLE_ARRAY}, {@link #GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY}
 * @param samples              the number of samples in the multisample texture's image
 * @param internalformat       the internal format to be used to store the multisample texture's image. {@code internalformat} must specify a color-renderable, depth-renderable,
 *                             or stencil-renderable format.
 * @param width                the width of the multisample texture's image, in texels
 * @param height               the height of the multisample texture's image, in texels
 * @param depth                the depth of the multisample texture's image, in texels
 * @param fixedsamplelocations whether the image will use identical sample locations and the same number of samples for all texels in the image, and the sample locations will not
 *                             depend on the internal format or size of the image
 */
	static public function glTexImage3DMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,depth:Int,fixedsamplelocations:Bool):Void;
/** Returns the {@link ARBTextureMultisample} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTextureMultisample;
/**
 * Retrieves the location of a sample.
 *
 * @param pname the sample parameter name. Must be:<br>{@link #GL_SAMPLE_POSITION SAMPLE_POSITION}
 * @param index the index of the sample whose position to query
 * @param val   an array to receive the position of the sample
 */
/** Alternative version of: {@link #glGetMultisamplefv GetMultisamplefv}  */
	static public function glGetMultisamplefv(pname:Int,index:Int,val:java.nio.FloatBuffer):Void;
	@:overload(function (pname:Int,index:Int,val:java.nio.ByteBuffer):Void {})

}
