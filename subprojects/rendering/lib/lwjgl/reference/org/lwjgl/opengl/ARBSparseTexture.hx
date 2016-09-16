package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBSparseTexture")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/sparse_texture.txt">ARB_sparse_texture</a> extension.
 * 
 * <p>Recent advances in application complexity and a desire for higher resolutions have pushed texture sizes up considerably. Often, the amount of physical
 * memory available to a graphics processor is a limiting factor in the performance of texture-heavy applications. Once the available physical memory is
 * exhausted, paging may occur bringing performance down considerably - or worse, the application may fail. Nevertheless, the amount of address space
 * available to the graphics processor has increased to the point where many gigabytes - or even terabytes of address space may be usable even though that
 * amount of physical memory is not present.</p>
 * 
 * <p>This extension allows the separation of the graphics processor's address space (reservation) from the requirement that all textures must be physically
 * backed (commitment). This exposes a limited form of virtualization for textures. Use cases include sparse (or partially resident) textures, texture
 * paging, on-demand and delayed loading of texture assets and application controlled level of detail.</p>
 */
extern class ARBSparseTexture 
{
/** Accepted by the {@code pname} parameter to TexParameter{i f}{v}, TexParameterI{u}v, GetTexParameter{if}v and GetTexParameterIi{u}v.  */
	inline static public var GL_TEXTURE_SPARSE_ARB:Int = 37286;
/** Accepted by the {@code pname} parameter to TexParameter{i f}{v}, TexParameterI{u}v, GetTexParameter{if}v and GetTexParameterIi{u}v.  */
	inline static public var GL_VIRTUAL_PAGE_SIZE_INDEX_ARB:Int = 37287;
/** Accepted by the {@code pname} parameter of GetTexParameter{if}v and GetTexParameterIi{u}v.  */
	inline static public var GL_NUM_SPARSE_LEVELS_ARB:Int = 37290;
/** Accepted by the {@code pname} parameter to GetInternalformativ.  */
	inline static public var GL_NUM_VIRTUAL_PAGE_SIZES_ARB:Int = 37288;
/** Accepted by the {@code pname} parameter to GetInternalformativ.  */
	inline static public var GL_VIRTUAL_PAGE_SIZE_X_ARB:Int = 37269;
/** Accepted by the {@code pname} parameter to GetInternalformativ.  */
	inline static public var GL_VIRTUAL_PAGE_SIZE_Y_ARB:Int = 37270;
/** Accepted by the {@code pname} parameter to GetInternalformativ.  */
	inline static public var GL_VIRTUAL_PAGE_SIZE_Z_ARB:Int = 37271;
/** Accepted by the {@code pname} parameter to GetIntegerv, GetFloatv, GetDoublev, GetInteger64v, and GetBooleanv.  */
	inline static public var GL_MAX_SPARSE_TEXTURE_SIZE_ARB:Int = 37272;
/** Accepted by the {@code pname} parameter to GetIntegerv, GetFloatv, GetDoublev, GetInteger64v, and GetBooleanv.  */
	inline static public var GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB:Int = 37273;
/** Accepted by the {@code pname} parameter to GetIntegerv, GetFloatv, GetDoublev, GetInteger64v, and GetBooleanv.  */
	inline static public var GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB:Int = 37274;
/** Accepted by the {@code pname} parameter to GetIntegerv, GetFloatv, GetDoublev, GetInteger64v, and GetBooleanv.  */
	inline static public var GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB:Int = 37289;
/** Function address.  */
	public var TexPageCommitmentARB:haxe.Int64;
/** Function address.  */
	public var TexturePageCommitmentEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glTexturePageCommitmentEXT TexturePageCommitmentEXT}  */
	static public function nglTexturePageCommitmentEXT(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,commit:Bool,__functionAddress:haxe.Int64):Void;
/**
 * DSA version of {@link #glTexPageCommitmentARB TexPageCommitmentARB}.
 *
 * @param texture the texture object
 * @param level   the level-of-detail-number
 * @param xoffset the x coordinate of the texel subregion
 * @param yoffset the y coordinate of the texel subregion
 * @param zoffset the z coordinate of the texel subregion
 * @param width   the subregion width
 * @param height  the subregion height
 * @param depth   the subregion depth
 * @param commit  the commit flag
 */
	static public function glTexturePageCommitmentEXT(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,commit:Bool):Void;
/**
 * Makes individual pages of a sparse texture resident or non resident.
 * 
 * <p>If the value of {@code commit} is {@link GL11#GL_TRUE TRUE}, then the texture pages contained in the region defined by the values of {@code xoffset}, {@code yoffset},
 * {@code zoffset}, {@code width}, {@code height} and {@code depth} are committed. If they were not committed before the call, then new physical backing
 * store is allocated and associated with the sparse pages and their initial content is undefined. If the pages were already committed, then they remain
 * committed, no error is generated, and the content of those pages remains unmodified. If the value of {@code committed} is {@link GL11#GL_FALSE FALSE}, then the texture
 * pages contained in the region are made de-committed. Their physical store is de-allocated, and their contents again become undefined.</p>
 * 
 * <p>For the purposes of commitment, a cube map texture is treated as a 2D array texture with a depth of six and cube map array textures are treated as 2D
 * array textures with a depth equal to six times the number of layers in the cube map array.</p>
 * 
 * <p>For levels of a sparse texture where each dimension is a multiple of the virtual page size, the residency of individual page-size regions is controlled
 * by TexPageCommitmentARB and such levels may be partially populated. When the mipmap chain reaches a level that is not an integer multiple of the virtual
 * page size in any dimension, padding and memory layout considerations may make it impossible to treat that level and subsequent smaller ones as partially
 * populated. The set of levels that can be partially populated is implementation-dependent. The total number of levels that may be partially populated may
 * be queried by calling {@link GL11#glGetTexParameteriv GetTexParameteriv} with the {@code pname} {@link #GL_NUM_SPARSE_LEVELS_ARB NUM_SPARSE_LEVELS_ARB}.</p>
 * 
 * <p>The collection of texture levels that may not be partially populated, if any, consists of levels {@link #GL_NUM_SPARSE_LEVELS_ARB NUM_SPARSE_LEVELS_ARB} and higher, and is referred to
 * as the mipmap 'tail'. The levels comprising the tail are made resident or non-resident as a unit. The tail is resident if and only if
 * TexPageCommitmentARB has been called successfully with {@code level} greater than or equal to {@link #GL_NUM_SPARSE_LEVELS_ARB NUM_SPARSE_LEVELS_ARB} and the value of {@code commit} was
 * {@link GL11#GL_TRUE TRUE} for the last such call.</p>
 * 
 * <p>Views of sparse textures are also considered sparse. Modifications to commitment of a texture via a view of it affect the parent texture and any other
 * views containing the modified pages. If a view of a sparse texture references its tail (or is entirely contained within it), modifications to commitment
 * of the tail via the view will affect the entire tail of the parent, even for parts of the tail that are not referenced by the view. Furthermore,
 * modifications to tail commitment may affect views referencing other parts of the tail.</p>
 * 
 * <h3>Errors</h3>
 * 
 * <p>An {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} error is generated if {@code xoffset} + {@code width} or {@code yoffset} + {@code height} is greater than the width or height,
 * respectively, of level {@code level} of the texture bound to {@code target}.</p>
 * 
 * <p>An {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} error is generated if {@code zoffset} + {@code depth} is greater than
 * <ul>
 * <li>the depth of level {@code level} of the texture bound to {@code target}, if {@code target} is {@link GL12#GL_TEXTURE_3D TEXTURE_3D};</li>
 * <li>the number of layers of level {@code level} of the texture bound to {@code target}, if {@code target} is {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY};</li>
 * <li>six times the number of layers of level {@code level} of the texture bound to {@code target}, if {@code target} is {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}; or</li>
 * <li>one, for all other targets.</li>
 * </ul>
 * An {@link GL11#GL_INVALID_VALUE INVALID_VALUE} error is generated if {@code xoffset}, {@code yoffset}, or {@code zoffset} is not a multiple of {@link #GL_VIRTUAL_PAGE_SIZE_X_ARB VIRTUAL_PAGE_SIZE_X_ARB},
 * {@link #GL_VIRTUAL_PAGE_SIZE_Y_ARB VIRTUAL_PAGE_SIZE_Y_ARB}, or {@link #GL_VIRTUAL_PAGE_SIZE_Z_ARB VIRTUAL_PAGE_SIZE_Z_ARB}, respectively, of the texture bound to {@code target}.</p>
 * 
 * <p>An {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} error is generated if {@code width} is not an integer multiple of {@link #GL_VIRTUAL_PAGE_SIZE_X_ARB VIRTUAL_PAGE_SIZE_X_ARB} and {@code width} plus
 * {@code xoffset} is not equal to the width of level {@code level} of the texture bound to {@code target}.</p>
 * 
 * <p>An {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} error is generated if {@code height} is not an integer multiple of {@link #GL_VIRTUAL_PAGE_SIZE_Y_ARB VIRTUAL_PAGE_SIZE_Y_ARB} and {@code height} plus
 * {@code yoffset} is not equal to the height of level {@code level} of the texture bound to {@code target}.</p>
 * 
 * <p>An {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} error is generated if {@code depth} is not an integer multiple of {@link #GL_VIRTUAL_PAGE_SIZE_Z_ARB VIRTUAL_PAGE_SIZE_Z_ARB} and {@code depth} plus
 * {@code zoffset} is not equal to
 * <ul>
 * <li>the depth of level {@code level} of the texture bound to {@code target}, if {@code target} is TEXTURE_3D;</li>
 * <li>the number of layers of level {@code level} of the texture bound to {@code target}, if {@code target} is TEXTURE_2D_ARRAY;</li>
 * <li>six times the number of layers of level {@code level} of the texture bound to {@code target}, if {@code target} is TEXTURE_CUBE_MAP_ARRAY; or</li>
 * <li>one, for all other targets.</li>
 * </ul>
 * An {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} error is generated if the value of {@link GL42#GL_TEXTURE_IMMUTABLE_FORMAT TEXTURE_IMMUTABLE_FORMAT} or {@link #GL_TEXTURE_SPARSE_ARB TEXTURE_SPARSE_ARB} for the texture bound to
 * {@code target} is {@link GL11#GL_FALSE FALSE}.</p>
 *
 * @param target  the texture target. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}
 * @param level   the level-of-detail-number
 * @param xoffset the x coordinate of the texel subregion
 * @param yoffset the y coordinate of the texel subregion
 * @param zoffset the z coordinate of the texel subregion
 * @param width   the subregion width
 * @param height  the subregion height
 * @param depth   the subregion depth
 * @param commit  the commit flag
 */
	static public function glTexPageCommitmentARB(target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,commit:Bool):Void;
/** Returns the {@link ARBSparseTexture} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBSparseTexture;
/** JNI method for {@link #glTexPageCommitmentARB TexPageCommitmentARB}  */
	static public function nglTexPageCommitmentARB(target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,commit:Bool,__functionAddress:haxe.Int64):Void;

}