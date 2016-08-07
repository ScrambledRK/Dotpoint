package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL32")
@:final
/**
 * The core OpenGL 3.2 functionality. OpenGL 3.2 implementations support revision 1.50 of the OpenGL Shading Language.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/vertex_array_bgra.txt">ARB_vertex_array_bgra</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/draw_elements_base_vertex.txt">ARB_draw_elements_base_vertex</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/fragment_coord_conventions.txt">ARB_fragment_coord_conventions</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/provoking_vertex.txt">ARB_provoking_vertex</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/seamless_cube_map.txt">ARB_seamless_cube_map</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_multisample.txt">ARB_texture_multisample</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/depth_clamp.txt">ARB_depth_clamp</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/geometry_shader4.txt">ARB_geometry_shader4</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/sync.txt">ARB_sync</a></li>
 * </ul></p>
 */
extern class GL32 
{
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_CONTEXT_PROFILE_MASK:Int = 37158;
/** Context profile bits.  */
	inline static public var GL_CONTEXT_CORE_PROFILE_BIT:Int = 1;
/** Context profile bits.  */
	inline static public var GL_CONTEXT_COMPATIBILITY_PROFILE_BIT:Int = 2;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_OUTPUT_COMPONENTS:Int = 37154;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_INPUT_COMPONENTS:Int = 37155;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_OUTPUT_COMPONENTS:Int = 37156;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_INPUT_COMPONENTS:Int = 37157;
/** Accepted by the {@code mode} parameter of ProvokingVertex.  */
	inline static public var GL_FIRST_VERTEX_CONVENTION:Int = 36429;
/** Accepted by the {@code mode} parameter of ProvokingVertex.  */
	inline static public var GL_LAST_VERTEX_CONVENTION:Int = 36430;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_PROVOKING_VERTEX:Int = 36431;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION:Int = 36428;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv and
 * GetDoublev.
 */
	inline static public var GL_TEXTURE_CUBE_MAP_SEAMLESS:Int = 34895;
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
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_DEPTH_CLAMP:Int = 34383;
/** Accepted by the {@code type} parameter of CreateShader and returned by the {@code params} parameter of GetShaderiv.  */
	inline static public var GL_GEOMETRY_SHADER:Int = 36313;
/** Accepted by the {@code pname} parameter of ProgramParameteri and GetProgramiv.  */
	inline static public var GL_GEOMETRY_VERTICES_OUT:Int = 36314;
/** Accepted by the {@code pname} parameter of ProgramParameteri and GetProgramiv.  */
	inline static public var GL_GEOMETRY_INPUT_TYPE:Int = 36315;
/** Accepted by the {@code pname} parameter of ProgramParameteri and GetProgramiv.  */
	inline static public var GL_GEOMETRY_OUTPUT_TYPE:Int = 36316;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS:Int = 35881;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_VARYING_COMPONENTS:Int = 36317;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_VARYING_COMPONENTS:Int = 36318;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_UNIFORM_COMPONENTS:Int = 36319;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_OUTPUT_VERTICES:Int = 36320;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS:Int = 36321;
/** Accepted by the {@code mode} parameter of Begin, DrawArrays, MultiDrawArrays, DrawElements, MultiDrawElements, and DrawRangeElements.  */
	inline static public var GL_LINES_ADJACENCY:Int = 10;
/** Accepted by the {@code mode} parameter of Begin, DrawArrays, MultiDrawArrays, DrawElements, MultiDrawElements, and DrawRangeElements.  */
	inline static public var GL_LINE_STRIP_ADJACENCY:Int = 11;
/** Accepted by the {@code mode} parameter of Begin, DrawArrays, MultiDrawArrays, DrawElements, MultiDrawElements, and DrawRangeElements.  */
	inline static public var GL_TRIANGLES_ADJACENCY:Int = 12;
/** Accepted by the {@code mode} parameter of Begin, DrawArrays, MultiDrawArrays, DrawElements, MultiDrawElements, and DrawRangeElements.  */
	inline static public var GL_TRIANGLE_STRIP_ADJACENCY:Int = 13;
/** Returned by CheckFramebufferStatus.  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS:Int = 36264;
/** Returned by CheckFramebufferStatus.  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT:Int = 36265;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachment- Parameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_LAYERED:Int = 36263;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetIntegerv, GetFloatv, GetDoublev, and
 * GetBooleanv.
 */
	inline static public var GL_PROGRAM_POINT_SIZE:Int = 34370;
/** Accepted as the {@code pname} parameter of GetInteger64v.  */
	inline static public var GL_MAX_SERVER_WAIT_TIMEOUT:Int = 37137;
/** Accepted as the {@code pname} parameter of GetSynciv.  */
	inline static public var GL_OBJECT_TYPE:Int = 37138;
/** Accepted as the {@code pname} parameter of GetSynciv.  */
	inline static public var GL_SYNC_CONDITION:Int = 37139;
/** Accepted as the {@code pname} parameter of GetSynciv.  */
	inline static public var GL_SYNC_STATUS:Int = 37140;
/** Accepted as the {@code pname} parameter of GetSynciv.  */
	inline static public var GL_SYNC_FLAGS:Int = 37141;
/** Returned in {@code values} for GetSynciv {@code pname} OBJECT_TYPE.  */
	inline static public var GL_SYNC_FENCE:Int = 37142;
/** Returned in {@code values} for GetSynciv {@code pname} SYNC_CONDITION.  */
	inline static public var GL_SYNC_GPU_COMMANDS_COMPLETE:Int = 37143;
/** Returned in {@code values} for GetSynciv {@code pname} SYNC_STATUS.  */
	inline static public var GL_UNSIGNALED:Int = 37144;
/** Returned in {@code values} for GetSynciv {@code pname} SYNC_STATUS.  */
	inline static public var GL_SIGNALED:Int = 37145;
/** Accepted in the {@code flags} parameter of ClientWaitSync.  */
	inline static public var GL_SYNC_FLUSH_COMMANDS_BIT:Int = 1;
/** Accepted in the {@code timeout} parameter of WaitSync.  */
	inline static public var GL_TIMEOUT_IGNORED:haxe.Int64 = -1;
/** Returned by ClientWaitSync.  */
	inline static public var GL_ALREADY_SIGNALED:Int = 37146;
/** Returned by ClientWaitSync.  */
	inline static public var GL_TIMEOUT_EXPIRED:Int = 37147;
/** Returned by ClientWaitSync.  */
	inline static public var GL_CONDITION_SATISFIED:Int = 37148;
/** Returned by ClientWaitSync.  */
	inline static public var GL_WAIT_FAILED:Int = 37149;
/** Function address.  */
	public var GetBufferParameteri64v:haxe.Int64;
/** Function address.  */
	public var DrawElementsBaseVertex:haxe.Int64;
/** Function address.  */
	public var DrawRangeElementsBaseVertex:haxe.Int64;
/** Function address.  */
	public var DrawElementsInstancedBaseVertex:haxe.Int64;
/** Function address.  */
	public var MultiDrawElementsBaseVertex:haxe.Int64;
/** Function address.  */
	public var ProvokingVertex:haxe.Int64;
/** Function address.  */
	public var TexImage2DMultisample:haxe.Int64;
/** Function address.  */
	public var TexImage3DMultisample:haxe.Int64;
/** Function address.  */
	public var GetMultisamplefv:haxe.Int64;
/** Function address.  */
	public var SampleMaski:haxe.Int64;
/** Function address.  */
	public var FramebufferTexture:haxe.Int64;
/** Function address.  */
	public var FenceSync:haxe.Int64;
/** Function address.  */
	public var IsSync:haxe.Int64;
/** Function address.  */
	public var DeleteSync:haxe.Int64;
/** Function address.  */
	public var ClientWaitSync:haxe.Int64;
/** Function address.  */
	public var WaitSync:haxe.Int64;
/** Function address.  */
	public var GetInteger64v:haxe.Int64;
/** Function address.  */
	public var GetInteger64i_v:haxe.Int64;
/** Function address.  */
	public var GetSynciv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glProvokingVertex ProvokingVertex}  */
	static public function nglProvokingVertex(mode:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glTexImage2DMultisample TexImage2DMultisample}  */
	static public function nglTexImage2DMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,fixedsamplelocations:Bool,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glFramebufferTexture.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Attaches a level of a texture object as a logical buffer to the currently bound framebuffer object.
 *
 * @param target     the framebuffer target. One of:<br>{@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}, {@link GL30#GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link GL30#GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}
 * @param attachment the attachment point of the framebuffer
 * @param texture    the texture object to attach to the framebuffer attachment point named by {@code attachment}
 * @param level      the mipmap level of {@code texture} to attach
 */
	static public function glFramebufferTexture(target:Int,attachment:Int,texture:Int,level:Int):Void;
/** Unsafe version of {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/** JNI method for {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
	static public function nglDrawRangeElementsBaseVertex(mode:Int,start:Int,end:Int,count:Int,type:Int,indices:haxe.Int64,basevertex:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,start:Int,end:Int,count:Int,type:Int,indices:haxe.Int64,basevertex:Int):Void {})
/** JNI method for {@link #glTexImage3DMultisample TexImage3DMultisample}  */
	static public function nglTexImage3DMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,depth:Int,fixedsamplelocations:Bool,__functionAddress:haxe.Int64):Void;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/** Alternative version of: {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/** Buffer object offset version of: {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawElementsBaseVertex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders primitives from array data with a per-element offset.
 *
 * @param mode       the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link #GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link #GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link #GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link #GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count      the number of elements to be rendered
 * @param type       the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices    a pointer to the location where the indices are stored
 * @param basevertex a constant that should be added to each element of {@code indices} when choosing elements from the enabled vertex arrays
 */
	static public function glDrawElementsBaseVertex(mode:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void;
	@:overload(function (mode:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.IntBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.ShortBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,type:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,count:Int,type:Int,indicesOffset:haxe.Int64,basevertex:Int):Void {})
/** JNI method for {@link #glWaitSync WaitSync}  */
	static public function nglWaitSync(sync:haxe.Int64,flags:Int,timeout:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/** Alternative version of: {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/** Buffer object offset version of: {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawElementsInstancedBaseVertex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders multiple instances of a set of primitives from array data with a per-element offset.
 *
 * @param mode       the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link #GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link #GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link #GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link #GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count      the number of elements to be rendered
 * @param type       the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices    a pointer to the location where the indices are stored
 * @param primcount  the number of instances of the indexed geometry that should be drawn
 * @param basevertex a constant that should be added to each element of indices when chosing elements from the enabled vertex arrays
 */
	static public function glDrawElementsInstancedBaseVertex(mode:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int):Void;
	@:overload(function (mode:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.IntBuffer,primcount:Int,basevertex:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.ShortBuffer,primcount:Int,basevertex:Int):Void {})
	@:overload(function (mode:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int):Void {})
	@:overload(function (mode:Int,count:Int,type:Int,indicesOffset:haxe.Int64,primcount:Int,basevertex:Int):Void {})
/** JNI method for {@link #glFramebufferTexture FramebufferTexture}  */
	static public function nglFramebufferTexture(target:Int,attachment:Int,texture:Int,level:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetMultisample.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the location of a sample.
 *
 * @param pname the sample parameter name. Must be:<br>{@link #GL_SAMPLE_POSITION SAMPLE_POSITION}
 * @param index the index of the sample whose position to query
 * @param val   an array to receive the position of the sample
 */
/** Alternative version of: {@link #glGetMultisamplefv GetMultisamplefv}  */
	static public function glGetMultisamplefv(pname:Int,index:Int,val:java.nio.FloatBuffer):Void;
	@:overload(function (pname:Int,index:Int,val:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetInteger64v GetInteger64v}  */
/** JNI method for {@link #glGetInteger64v GetInteger64v}  */
	static public function nglGetInteger64v(pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetSynciv GetSynciv}  */
	static public function glGetSynci(sync:haxe.Int64,pname:Int,length:java.nio.IntBuffer):Int;
/** Unsafe version of {@link #glGetInteger64i_v GetInteger64i_v}  */
/** JNI method for {@link #glGetInteger64i_v GetInteger64i_v}  */
	static public function nglGetInteger64i_v(pname:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,index:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetBufferParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the value of a buffer object parameter.
 *
 * @param target the target buffer object. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param pname  the symbolic name of a buffer object parameter. One of:<br>{@link GL15#GL_BUFFER_SIZE BUFFER_SIZE}, {@link GL15#GL_BUFFER_USAGE BUFFER_USAGE}, {@link GL15#GL_BUFFER_ACCESS BUFFER_ACCESS}, {@link GL15#GL_BUFFER_MAPPED BUFFER_MAPPED}, {@link GL30#GL_BUFFER_ACCESS_FLAGS BUFFER_ACCESS_FLAGS}, {@link GL30#GL_BUFFER_MAP_LENGTH BUFFER_MAP_LENGTH}, {@link GL30#GL_BUFFER_MAP_OFFSET BUFFER_MAP_OFFSET}, {@link GL44#GL_BUFFER_IMMUTABLE_STORAGE BUFFER_IMMUTABLE_STORAGE}, {@link GL44#GL_BUFFER_STORAGE_FLAGS BUFFER_STORAGE_FLAGS}
 * @param params the requested parameter
 */
/** Alternative version of: {@link #glGetBufferParameteri64v GetBufferParameteri64v}  */
	static public function glGetBufferParameteri64v(target:Int,pname:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/** JNI method for {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
	static public function nglDrawElementsBaseVertex(mode:Int,count:Int,type:Int,indices:haxe.Int64,basevertex:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,count:Int,type:Int,indices:haxe.Int64,basevertex:Int):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glWaitSync.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Causes the GL server to block and wait for a sync object to become signaled.
 * 
 * <p>{@code glWaitSync} will always wait no longer than an implementation-dependent timeout. The duration of this timeout in nanoseconds may be queried by
 * with {@link #GL_MAX_SERVER_WAIT_TIMEOUT MAX_SERVER_WAIT_TIMEOUT}. There is currently no way to determine whether glWaitSync unblocked because the timeout expired or because the
 * sync object being waited on was signaled.</p>
 * 
 * <p>If an error occurs, {@code glWaitSync} does not cause the GL server to block.</p>
 *
 * @param sync    the sync object whose status to wait on
 * @param flags   a bitfield controlling the command flushing behavior. Must be:<br>0
 * @param timeout the timeout that the server should wait before continuing. Must be:<br>{@link #GL_TIMEOUT_IGNORED TIMEOUT_IGNORED}
 */
	static public function glWaitSync(sync:haxe.Int64,flags:Int,timeout:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClientWaitSync.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Causes the client to block and wait for a sync object to become signaled. If {@code sync} is signaled when {@code glClientWaitSync} is called,
 * {@code glClientWaitSync} returns immediately, otherwise it will block and wait for up to timeout nanoseconds for {@code sync} to become signaled.
 * 
 * <p>The return value is one of four status values:
 * <ul>
 * <li>{@link #GL_ALREADY_SIGNALED ALREADY_SIGNALED} indicates that sync was signaled at the time that glClientWaitSync was called.</li>
 * <li>{@link #GL_TIMEOUT_EXPIRED TIMEOUT_EXPIRED} indicates that at least timeout nanoseconds passed and sync did not become signaled.</li>
 * <li>{@link #GL_CONDITION_SATISFIED CONDITION_SATISFIED} indicates that sync was signaled before the timeout expired.</li>
 * <li>{@link #GL_WAIT_FAILED WAIT_FAILED} indicates that an error occurred. Additionally, an OpenGL error will be generated.</li>
 * </ul></p>
 *
 * @param sync    the sync object whose status to wait on
 * @param flags   a bitfield controlling the command flushing behavior. One or more of:<br>0, {@link #GL_SYNC_FLUSH_COMMANDS_BIT SYNC_FLUSH_COMMANDS_BIT}
 * @param timeout the timeout, specified in nanoseconds, for which the implementation should wait for {@code sync} to become signaled
 */
	static public function glClientWaitSync(sync:haxe.Int64,flags:Int,timeout:haxe.Int64):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexImage2DMultisample.xhtml">OpenGL SDK Reference</a></p>
 * 
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
/** JNI method for {@link #glDeleteSync DeleteSync}  */
	static public function nglDeleteSync(sync:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexImage3DMultisample.xhtml">OpenGL SDK Reference</a></p>
 * 
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
/** Single return value version of: {@link #glGetInteger64i_v GetInteger64i_v}  */
	static public function glGetInteger64i(pname:Int,index:Int):haxe.Int64;
/** JNI method for {@link #glSampleMaski SampleMaski}  */
	static public function nglSampleMaski(index:Int,mask:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetSynciv GetSynciv}  */
/** JNI method for {@link #glGetSynciv GetSynciv}  */
	static public function nglGetSynciv(sync:haxe.Int64,pname:Int,bufSize:Int,length:haxe.Int64,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sync:haxe.Int64,pname:Int,bufSize:Int,length:haxe.Int64,values:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetInteger64v GetInteger64v}  */
	static public function glGetInteger64(pname:Int):haxe.Int64;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteSync.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes a sync object.
 *
 * @param sync the sync object to be deleted
 */
	static public function glDeleteSync(sync:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glSampleMaski.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets the value of a sub-word of the sample mask.
 *
 * @param index which 32-bit sub-word of the sample mask to update
 * @param mask  the new value of the mask sub-word
 */
	static public function glSampleMaski(index:Int,mask:Int):Void;
/** Unsafe version of {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/** JNI method for {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
	static public function nglDrawElementsInstancedBaseVertex(mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,basevertex:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,basevertex:Int):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glProvokingVertex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the vertex to be used as the source of data for flat shaded varyings.
 *
 * @param mode the provoking vertex mode. One of:<br>{@link #GL_FIRST_VERTEX_CONVENTION FIRST_VERTEX_CONVENTION}, {@link #GL_LAST_VERTEX_CONVENTION LAST_VERTEX_CONVENTION}
 */
	static public function glProvokingVertex(mode:Int):Void;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/** Alternative version of: {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/** Buffer object offset version of: {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawRangeElementsBaseVertex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders primitives from array data with a per-element offset.
 *
 * @param mode       the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link #GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link #GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link #GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link #GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param start      the minimum array index contained in {@code indices}
 * @param end        the maximum array index contained in {@code indices}
 * @param count      the number of elements to be rendered
 * @param type       the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices    a pointer to the location where the indices are stored
 * @param basevertex a constant that should be added to each element of {@code indices} when choosing elements from the enabled vertex arrays
 */
	static public function glDrawRangeElementsBaseVertex(mode:Int,start:Int,end:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void;
	@:overload(function (mode:Int,start:Int,end:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,indices:java.nio.IntBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,indices:java.nio.ShortBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,type:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,count:Int,type:Int,indicesOffset:haxe.Int64,basevertex:Int):Void {})
/** Single return value version of: {@link #glGetMultisamplefv GetMultisamplefv}  */
	static public function glGetMultisamplef(pname:Int,index:Int):Float;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glFenceSync.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Creates a new sync object and inserts it into the GL command stream.
 *
 * @param condition the condition that must be met to set the sync object's state to signaled. Must be:<br>{@link #GL_SYNC_GPU_COMMANDS_COMPLETE SYNC_GPU_COMMANDS_COMPLETE}
 * @param flags     a bitwise combination of flags controlling the behavior of the sync object. No flags are presently defined for this operation and {@code flags} must
 *                  be zero.
 */
	static public function glFenceSync(condition:Int,flags:Int):haxe.Int64;
/** JNI method for {@link #glFenceSync FenceSync}  */
	static public function nglFenceSync(condition:Int,flags:Int,__functionAddress:haxe.Int64):haxe.Int64;
/** Unsafe version of {@link #glGetBufferParameteri64v GetBufferParameteri64v}  */
/** JNI method for {@link #glGetBufferParameteri64v GetBufferParameteri64v}  */
	static public function nglGetBufferParameteri64v(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsSync.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Determines if a name corresponds to a sync object.
 *
 * @param sync a value that may be the name of a sync object
 */
	static public function glIsSync(sync:haxe.Int64):Bool;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGet.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the 64bit integer value of an indexed state variable.
 *
 * @param pname  the indexed state to query
 * @param index  the index of the element being queried
 * @param params the value or values of the specified parameter
 */
/** Alternative version of: {@link #glGetInteger64i_v GetInteger64i_v}  */
	static public function glGetInteger64i_v(pname:Int,index:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (pname:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGet.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the 64bit integer value or values of a selected parameter.
 *
 * @param pname  the parameter value to be returned
 * @param params the value or values of the specified parameter
 */
/** Alternative version of: {@link #glGetInteger64v GetInteger64v}  */
	static public function glGetInteger64v(pname:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetMultisamplefv GetMultisamplefv}  */
/** JNI method for {@link #glGetMultisamplefv GetMultisamplefv}  */
	static public function nglGetMultisamplefv(pname:Int,index:Int,val:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,index:Int,val:haxe.Int64):Void {})
/** JNI method for {@link #glIsSync IsSync}  */
	static public function nglIsSync(sync:haxe.Int64,__functionAddress:haxe.Int64):Bool;
/** Single return value version of: {@link #glGetBufferParameteri64v GetBufferParameteri64v}  */
	static public function glGetBufferParameteri64(target:Int,pname:Int):haxe.Int64;
/** Unsafe version of {@link #glMultiDrawElementsBaseVertex MultiDrawElementsBaseVertex}  */
/** JNI method for {@link #glMultiDrawElementsBaseVertex MultiDrawElementsBaseVertex}  */
	static public function nglMultiDrawElementsBaseVertex(mode:Int,count:haxe.Int64,type:Int,indices:haxe.Int64,primcount:Int,basevertex:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,count:haxe.Int64,type:Int,indices:haxe.Int64,primcount:Int,basevertex:haxe.Int64):Void {})
/** Returns the {@link GL32} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL32;
/** Alternative version of: {@link #glGetSynciv GetSynciv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetSync.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the properties of a sync object.
 *
 * @param sync    the sync object whose properties to query
 * @param pname   the parameter whose value to retrieve from the sync object specified in {@code sync}. One of:<br>{@link #GL_OBJECT_TYPE OBJECT_TYPE}, {@link #GL_SYNC_CONDITION SYNC_CONDITION}, {@link #GL_SYNC_STATUS SYNC_STATUS}, {@link #GL_SYNC_FLAGS SYNC_FLAGS}
 * @param bufSize the size of the buffer whose address is given in {@code values}
 * @param length  the address of an variable to receive the number of integers placed in {@code values}
 * @param values  the address of an array to receive the values of the queried parameter
 */
	static public function glGetSynciv(sync:haxe.Int64,pname:Int,bufSize:Int,length:java.nio.ByteBuffer,values:java.nio.ByteBuffer):Void;
	@:overload(function (sync:haxe.Int64,pname:Int,length:java.nio.IntBuffer,values:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glClientWaitSync ClientWaitSync}  */
	static public function nglClientWaitSync(sync:haxe.Int64,flags:Int,timeout:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Alternative version of: {@link #glMultiDrawElementsBaseVertex MultiDrawElementsBaseVertex}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glMultiDrawElementsBaseVertex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders multiple sets of primitives by specifying indices of array data elements and an offset to apply to each index.
 * 
 * <p><b>LWJGL note</b>: Use {@link MemoryUtil#memAddress} to retrieve pointers to the index buffers.</p>
 *
 * @param mode       the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link #GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link #GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link #GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link #GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count      an array of the elements counts
 * @param type       the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices    a pointer to the location where the indices are stored
 * @param primcount  the size of the {@code count} array
 * @param basevertex a pointer to the location where the base vertices are stored
 */
	static public function glMultiDrawElementsBaseVertex(mode:Int,count:java.nio.ByteBuffer,type:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:java.nio.ByteBuffer):Void;
	@:overload(function (mode:Int,count:java.nio.IntBuffer,type:Int,indices:org.lwjgl.PointerBuffer,basevertex:java.nio.IntBuffer):Void {})

}
