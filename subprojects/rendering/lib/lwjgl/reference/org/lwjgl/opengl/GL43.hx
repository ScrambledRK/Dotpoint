package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL43")
@:final
/**
 * The core OpenGL 4.3 functionality. OpenGL 4.3 implementations support revision 4.30 of the OpenGL Shading Language.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/arrays_of_arrays.txt">ARB_arrays_of_arrays</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/ES3_compatibility.txt">ARB_ES3_compatibility</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/clear_buffer_object.txt">ARB_clear_buffer_object</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/compute_shader.txt">ARB_compute_shader</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/copy_image.txt">ARB_copy_image</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/debug_group.txt">ARB_debug_group</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/debug_label.txt">ARB_debug_label</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/debug_output2.txt">ARB_debug_output2</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/debug_output.txt">ARB_debug_output</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/explicit_uniform_location.txt">ARB_explicit_uniform_location</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/fragment_layer_viewport.txt">ARB_fragment_layer_viewport</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/framebuffer_no_attachments.txt">ARB_framebuffer_no_attachments</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/internalformat_query2.txt">ARB_internalformat_query2</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/invalidate_subdata.txt">ARB_invalidate_subdata</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/multi_draw_indirect.txt">ARB_multi_draw_indirect</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/program_interface_query.txt">ARB_program_interface_query</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/robust_buffer_access_behavior.txt">ARB_robust_buffer_access_behavior</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/shader_image_size.txt">ARB_shader_image_size</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/shader_storage_buffer_object.txt">ARB_shader_storage_buffer_object</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/stencil_texturing.txt">ARB_stencil_texturing</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_buffer_range.txt">ARB_texture_buffer_range</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_query_levels.txt">ARB_texture_query_levels</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_storage_multisample.txt">ARB_texture_storage_multisample</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_view.txt">ARB_texture_view</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/vertex_attrib_binding.txt">ARB_vertex_attrib_binding</a></li>
 * </ul></p>
 */
extern class GL43 
{
/** No. of supported Shading Language Versions. Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_NUM_SHADING_LANGUAGE_VERSIONS:Int = 33513;
/** Vertex attrib array has unconverted doubles. Accepted by the {@code pname} parameter of GetVertexAttribiv.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_LONG:Int = 34638;
/** Accepted by the {@code internalformat} parameter of CompressedTexImage2D.  */
	inline static public var GL_COMPRESSED_RGB8_ETC2:Int = 37492;
/** Accepted by the {@code internalformat} parameter of CompressedTexImage2D.  */
	inline static public var GL_COMPRESSED_SRGB8_ETC2:Int = 37493;
/** Accepted by the {@code internalformat} parameter of CompressedTexImage2D.  */
	inline static public var GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2:Int = 37494;
/** Accepted by the {@code internalformat} parameter of CompressedTexImage2D.  */
	inline static public var GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2:Int = 37495;
/** Accepted by the {@code internalformat} parameter of CompressedTexImage2D.  */
	inline static public var GL_COMPRESSED_RGBA8_ETC2_EAC:Int = 37496;
/** Accepted by the {@code internalformat} parameter of CompressedTexImage2D.  */
	inline static public var GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC:Int = 37497;
/** Accepted by the {@code internalformat} parameter of CompressedTexImage2D.  */
	inline static public var GL_COMPRESSED_R11_EAC:Int = 37488;
/** Accepted by the {@code internalformat} parameter of CompressedTexImage2D.  */
	inline static public var GL_COMPRESSED_SIGNED_R11_EAC:Int = 37489;
/** Accepted by the {@code internalformat} parameter of CompressedTexImage2D.  */
	inline static public var GL_COMPRESSED_RG11_EAC:Int = 37490;
/** Accepted by the {@code internalformat} parameter of CompressedTexImage2D.  */
	inline static public var GL_COMPRESSED_SIGNED_RG11_EAC:Int = 37491;
/** Accepted by the {@code target} parameter of Enable and Disable.  */
	inline static public var GL_PRIMITIVE_RESTART_FIXED_INDEX:Int = 36201;
/** Accepted by the {@code target} parameter of BeginQuery, EndQuery, GetQueryIndexediv and GetQueryiv.  */
	inline static public var GL_ANY_SAMPLES_PASSED_CONSERVATIVE:Int = 36202;
/** Accepted by the {@code value} parameter of the GetInteger* functions.  */
	inline static public var GL_MAX_ELEMENT_INDEX:Int = 36203;
/** Accepted by the {@code pname} parameters of GetTexParameterfv and  GetTexParameteriv.  */
	inline static public var GL_TEXTURE_IMMUTABLE_LEVELS:Int = 33503;
/** Accepted by the {@code type} parameter of CreateShader and returned in the {@code params} parameter by GetShaderiv.  */
	inline static public var GL_COMPUTE_SHADER:Int = 37305;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_UNIFORM_BLOCKS:Int = 37307;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS:Int = 37308;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_IMAGE_UNIFORMS:Int = 37309;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_SHARED_MEMORY_SIZE:Int = 33378;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_UNIFORM_COMPONENTS:Int = 33379;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS:Int = 33380;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_ATOMIC_COUNTERS:Int = 33381;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS:Int = 33382;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS:Int = 37099;
/** Accepted by the {@code pname} parameter of GetIntegeri_v, GetBooleani_v, GetFloati_v, GetDoublei_v and GetInteger64i_v.  */
	inline static public var GL_MAX_COMPUTE_WORK_GROUP_COUNT:Int = 37310;
/** Accepted by the {@code pname} parameter of GetIntegeri_v, GetBooleani_v, GetFloati_v, GetDoublei_v and GetInteger64i_v.  */
	inline static public var GL_MAX_COMPUTE_WORK_GROUP_SIZE:Int = 37311;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_COMPUTE_WORK_GROUP_SIZE:Int = 33383;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER:Int = 37100;
/** Accepted by the {@code pname} parameter of GetActiveAtomicCounterBufferiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER:Int = 37101;
/** Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, and GetBufferPointerv.  */
	inline static public var GL_DISPATCH_INDIRECT_BUFFER:Int = 37102;
/** Accepted by the {@code value} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_DISPATCH_INDIRECT_BUFFER_BINDING:Int = 37103;
/** Accepted by the {@code stages} parameter of UseProgramStages.  */
	inline static public var GL_COMPUTE_SHADER_BIT:Int = 32;
/** Tokens accepted by the {@code target} parameters of Enable, Disable, and  IsEnabled.  */
	inline static public var GL_DEBUG_OUTPUT:Int = 37600;
/** Tokens accepted by the {@code target} parameters of Enable, Disable, and  IsEnabled.  */
	inline static public var GL_DEBUG_OUTPUT_SYNCHRONOUS:Int = 33346;
/** Returned by GetIntegerv when {@code pname} is CONTEXT_FLAGS.  */
	inline static public var GL_CONTEXT_FLAG_DEBUG_BIT:Int = 2;
/** Tokens accepted by the {@code value} parameters of GetBooleanv, GetIntegerv,  GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_DEBUG_MESSAGE_LENGTH:Int = 37187;
/** Tokens accepted by the {@code value} parameters of GetBooleanv, GetIntegerv,  GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_DEBUG_LOGGED_MESSAGES:Int = 37188;
/** Tokens accepted by the {@code value} parameters of GetBooleanv, GetIntegerv,  GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_DEBUG_LOGGED_MESSAGES:Int = 37189;
/** Tokens accepted by the {@code value} parameters of GetBooleanv, GetIntegerv,  GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH:Int = 33347;
/** Tokens accepted by the {@code value} parameters of GetBooleanv, GetIntegerv,  GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_DEBUG_GROUP_STACK_DEPTH:Int = 33388;
/** Tokens accepted by the {@code value} parameters of GetBooleanv, GetIntegerv,  GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_DEBUG_GROUP_STACK_DEPTH:Int = 33389;
/** Tokens accepted by the {@code value} parameters of GetBooleanv, GetIntegerv,  GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_LABEL_LENGTH:Int = 33512;
/** Tokens accepted by the {@code pname} parameter of GetPointerv.  */
	inline static public var GL_DEBUG_CALLBACK_FUNCTION:Int = 33348;
/** Tokens accepted by the {@code pname} parameter of GetPointerv.  */
	inline static public var GL_DEBUG_CALLBACK_USER_PARAM:Int = 33349;
/**
 * Tokens accepted or provided by the {@code source} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code sources} parameter
 * of GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_SOURCE_API:Int = 33350;
/**
 * Tokens accepted or provided by the {@code source} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code sources} parameter
 * of GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_SOURCE_WINDOW_SYSTEM:Int = 33351;
/**
 * Tokens accepted or provided by the {@code source} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code sources} parameter
 * of GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_SOURCE_SHADER_COMPILER:Int = 33352;
/**
 * Tokens accepted or provided by the {@code source} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code sources} parameter
 * of GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_SOURCE_THIRD_PARTY:Int = 33353;
/**
 * Tokens accepted or provided by the {@code source} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code sources} parameter
 * of GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_SOURCE_APPLICATION:Int = 33354;
/**
 * Tokens accepted or provided by the {@code source} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code sources} parameter
 * of GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_SOURCE_OTHER:Int = 33355;
/**
 * Tokens accepted or provided by the {@code type} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code types} parameter of
 * GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_TYPE_ERROR:Int = 33356;
/**
 * Tokens accepted or provided by the {@code type} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code types} parameter of
 * GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR:Int = 33357;
/**
 * Tokens accepted or provided by the {@code type} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code types} parameter of
 * GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR:Int = 33358;
/**
 * Tokens accepted or provided by the {@code type} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code types} parameter of
 * GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_TYPE_PORTABILITY:Int = 33359;
/**
 * Tokens accepted or provided by the {@code type} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code types} parameter of
 * GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_TYPE_PERFORMANCE:Int = 33360;
/**
 * Tokens accepted or provided by the {@code type} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code types} parameter of
 * GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_TYPE_OTHER:Int = 33361;
/**
 * Tokens accepted or provided by the {@code type} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC, and the {@code types} parameter of
 * GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_TYPE_MARKER:Int = 33384;
/** Tokens accepted or provided by the {@code type} parameters of DebugMessageControl and DEBUGPROC, and the {@code types} parameter of GetDebugMessageLog.  */
	inline static public var GL_DEBUG_TYPE_PUSH_GROUP:Int = 33385;
/** Tokens accepted or provided by the {@code type} parameters of DebugMessageControl and DEBUGPROC, and the {@code types} parameter of GetDebugMessageLog.  */
	inline static public var GL_DEBUG_TYPE_POP_GROUP:Int = 33386;
/**
 * Tokens accepted or provided by the {@code severity} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC callback functions, and the
 * {@code severities} parameter of GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_SEVERITY_HIGH:Int = 37190;
/**
 * Tokens accepted or provided by the {@code severity} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC callback functions, and the
 * {@code severities} parameter of GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_SEVERITY_MEDIUM:Int = 37191;
/**
 * Tokens accepted or provided by the {@code severity} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC callback functions, and the
 * {@code severities} parameter of GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_SEVERITY_LOW:Int = 37192;
/**
 * Tokens accepted or provided by the {@code severity} parameters of DebugMessageControl, DebugMessageInsert and DEBUGPROC callback functions, and the
 * {@code severities} parameter of GetDebugMessageLog.
 */
	inline static public var GL_DEBUG_SEVERITY_NOTIFICATION:Int = 33387;
/** Tokens accepted or provided by the {@code identifier} parameters of ObjectLabel and GetObjectLabel.  */
	inline static public var GL_BUFFER:Int = 33504;
/** Tokens accepted or provided by the {@code identifier} parameters of ObjectLabel and GetObjectLabel.  */
	inline static public var GL_SHADER:Int = 33505;
/** Tokens accepted or provided by the {@code identifier} parameters of ObjectLabel and GetObjectLabel.  */
	inline static public var GL_PROGRAM:Int = 33506;
/** Tokens accepted or provided by the {@code identifier} parameters of ObjectLabel and GetObjectLabel.  */
	inline static public var GL_QUERY:Int = 33507;
/** Tokens accepted or provided by the {@code identifier} parameters of ObjectLabel and GetObjectLabel.  */
	inline static public var GL_PROGRAM_PIPELINE:Int = 33508;
/** Tokens accepted or provided by the {@code identifier} parameters of ObjectLabel and GetObjectLabel.  */
	inline static public var GL_SAMPLER:Int = 33510;
/** Tokens accepted or provided by the {@code identifier} parameters of ObjectLabel and GetObjectLabel.  */
	inline static public var GL_DISPLAY_LIST:Int = 33511;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_UNIFORM_LOCATIONS:Int = 33390;
/**
 * Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv, NamedFramebufferParameteriEXT, and
 * GetNamedFramebufferParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_DEFAULT_WIDTH:Int = 37648;
/**
 * Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv, NamedFramebufferParameteriEXT, and
 * GetNamedFramebufferParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_DEFAULT_HEIGHT:Int = 37649;
/**
 * Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv, NamedFramebufferParameteriEXT, and
 * GetNamedFramebufferParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_DEFAULT_LAYERS:Int = 37650;
/**
 * Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv, NamedFramebufferParameteriEXT, and
 * GetNamedFramebufferParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_DEFAULT_SAMPLES:Int = 37651;
/**
 * Accepted by the {@code pname} parameter of FramebufferParameteri, GetFramebufferParameteriv, NamedFramebufferParameteriEXT, and
 * GetNamedFramebufferParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS:Int = 37652;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAMEBUFFER_WIDTH:Int = 37653;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAMEBUFFER_HEIGHT:Int = 37654;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAMEBUFFER_LAYERS:Int = 37655;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAMEBUFFER_SAMPLES:Int = 37656;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_SUPPORTED:Int = 33391;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_PREFERRED:Int = 33392;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_RED_SIZE:Int = 33393;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_GREEN_SIZE:Int = 33394;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_BLUE_SIZE:Int = 33395;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_ALPHA_SIZE:Int = 33396;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_DEPTH_SIZE:Int = 33397;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_STENCIL_SIZE:Int = 33398;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_SHARED_SIZE:Int = 33399;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_RED_TYPE:Int = 33400;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_GREEN_TYPE:Int = 33401;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_BLUE_TYPE:Int = 33402;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_ALPHA_TYPE:Int = 33403;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_DEPTH_TYPE:Int = 33404;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_INTERNALFORMAT_STENCIL_TYPE:Int = 33405;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MAX_WIDTH:Int = 33406;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MAX_HEIGHT:Int = 33407;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MAX_DEPTH:Int = 33408;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MAX_LAYERS:Int = 33409;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MAX_COMBINED_DIMENSIONS:Int = 33410;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_COLOR_COMPONENTS:Int = 33411;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_DEPTH_COMPONENTS:Int = 33412;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_STENCIL_COMPONENTS:Int = 33413;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_COLOR_RENDERABLE:Int = 33414;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_DEPTH_RENDERABLE:Int = 33415;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_STENCIL_RENDERABLE:Int = 33416;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FRAMEBUFFER_RENDERABLE:Int = 33417;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FRAMEBUFFER_RENDERABLE_LAYERED:Int = 33418;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FRAMEBUFFER_BLEND:Int = 33419;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_READ_PIXELS:Int = 33420;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_READ_PIXELS_FORMAT:Int = 33421;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_READ_PIXELS_TYPE:Int = 33422;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_IMAGE_FORMAT:Int = 33423;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_IMAGE_TYPE:Int = 33424;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_GET_TEXTURE_IMAGE_FORMAT:Int = 33425;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_GET_TEXTURE_IMAGE_TYPE:Int = 33426;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MIPMAP:Int = 33427;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_MANUAL_GENERATE_MIPMAP:Int = 33428;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_AUTO_GENERATE_MIPMAP:Int = 33429;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_COLOR_ENCODING:Int = 33430;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SRGB_READ:Int = 33431;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SRGB_WRITE:Int = 33432;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SRGB_DECODE_ARB:Int = 33433;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FILTER:Int = 33434;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VERTEX_TEXTURE:Int = 33435;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TESS_CONTROL_TEXTURE:Int = 33436;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TESS_EVALUATION_TEXTURE:Int = 33437;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_GEOMETRY_TEXTURE:Int = 33438;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FRAGMENT_TEXTURE:Int = 33439;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_COMPUTE_TEXTURE:Int = 33440;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_SHADOW:Int = 33441;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_GATHER:Int = 33442;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_GATHER_SHADOW:Int = 33443;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SHADER_IMAGE_LOAD:Int = 33444;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SHADER_IMAGE_STORE:Int = 33445;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SHADER_IMAGE_ATOMIC:Int = 33446;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_TEXEL_SIZE:Int = 33447;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_COMPATIBILITY_CLASS:Int = 33448;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_PIXEL_FORMAT:Int = 33449;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_PIXEL_TYPE:Int = 33450;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST:Int = 33452;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST:Int = 33453;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE:Int = 33454;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE:Int = 33455;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_COMPRESSED_BLOCK_WIDTH:Int = 33457;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT:Int = 33458;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_COMPRESSED_BLOCK_SIZE:Int = 33459;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_CLEAR_BUFFER:Int = 33460;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_TEXTURE_VIEW:Int = 33461;
/** Accepted by the {@code pname} parameter of GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_COMPATIBILITY_CLASS:Int = 33462;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_FULL_SUPPORT:Int = 33463;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_CAVEAT_SUPPORT:Int = 33464;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_4_X_32:Int = 33465;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_2_X_32:Int = 33466;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_1_X_32:Int = 33467;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_4_X_16:Int = 33468;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_2_X_16:Int = 33469;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_1_X_16:Int = 33470;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_4_X_8:Int = 33471;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_2_X_8:Int = 33472;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_1_X_8:Int = 33473;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_11_11_10:Int = 33474;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_IMAGE_CLASS_10_10_10_2:Int = 33475;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_128_BITS:Int = 33476;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_96_BITS:Int = 33477;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_64_BITS:Int = 33478;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_48_BITS:Int = 33479;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_32_BITS:Int = 33480;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_24_BITS:Int = 33481;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_16_BITS:Int = 33482;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_8_BITS:Int = 33483;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_S3TC_DXT1_RGB:Int = 33484;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_S3TC_DXT1_RGBA:Int = 33485;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_S3TC_DXT3_RGBA:Int = 33486;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_S3TC_DXT5_RGBA:Int = 33487;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_RGTC1_RED:Int = 33488;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_RGTC2_RG:Int = 33489;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_BPTC_UNORM:Int = 33490;
/** Returned as possible responses for various {@code pname} queries to GetInternalformativ and GetInternalformati64v.  */
	inline static public var GL_VIEW_CLASS_BPTC_FLOAT:Int = 33491;
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
/** Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, and GetBufferPointerv.  */
	inline static public var GL_SHADER_STORAGE_BUFFER:Int = 37074;
/**
 * Accepted by the {@code pname} parameter of GetIntegerv, GetIntegeri_v, GetBooleanv, GetInteger64v, GetFloatv, GetDoublev, GetBooleani_v, GetIntegeri_v,
 * GetFloati_v, GetDoublei_v, and GetInteger64i_v.
 */
	inline static public var GL_SHADER_STORAGE_BUFFER_BINDING:Int = 37075;
/** Accepted by the {@code pname} parameter of GetIntegeri_v, GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, and GetInteger64i_v.  */
	inline static public var GL_SHADER_STORAGE_BUFFER_START:Int = 37076;
/** Accepted by the {@code pname} parameter of GetIntegeri_v, GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, and GetInteger64i_v.  */
	inline static public var GL_SHADER_STORAGE_BUFFER_SIZE:Int = 37077;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS:Int = 37078;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS:Int = 37079;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS:Int = 37080;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS:Int = 37081;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS:Int = 37082;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS:Int = 37083;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS:Int = 37084;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS:Int = 37085;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_SHADER_STORAGE_BLOCK_SIZE:Int = 37086;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT:Int = 37087;
/** Accepted in the {@code barriers} bitfield in glMemoryBarrier.  */
	inline static public var GL_SHADER_STORAGE_BARRIER_BIT:Int = 8192;
/** Alias for the existing token MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS.  */
	inline static public var GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES:Int = 36665;
/** Accepted by the {@code pname} parameter of TexParameter* and GetTexParameter*.  */
	inline static public var GL_DEPTH_STENCIL_TEXTURE_MODE:Int = 37098;
/** Accepted by the {@code pname} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_BUFFER_OFFSET:Int = 37277;
/** Accepted by the {@code pname} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_BUFFER_SIZE:Int = 37278;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT:Int = 37279;
/** Accepted by the {@code pname} parameters of GetTexParameterfv and  GetTexParameteriv.  */
	inline static public var GL_TEXTURE_VIEW_MIN_LEVEL:Int = 33499;
/** Accepted by the {@code pname} parameters of GetTexParameterfv and  GetTexParameteriv.  */
	inline static public var GL_TEXTURE_VIEW_NUM_LEVELS:Int = 33500;
/** Accepted by the {@code pname} parameters of GetTexParameterfv and  GetTexParameteriv.  */
	inline static public var GL_TEXTURE_VIEW_MIN_LAYER:Int = 33501;
/** Accepted by the {@code pname} parameters of GetTexParameterfv and  GetTexParameteriv.  */
	inline static public var GL_TEXTURE_VIEW_NUM_LAYERS:Int = 33502;
/** Accepted by the {@code pname} parameter of GetVertexAttrib*v.  */
	inline static public var GL_VERTEX_ATTRIB_BINDING:Int = 33492;
/** Accepted by the {@code pname} parameter of GetVertexAttrib*v.  */
	inline static public var GL_VERTEX_ATTRIB_RELATIVE_OFFSET:Int = 33493;
/** Accepted by the {@code target} parameter of GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, and GetInteger64i_v.  */
	inline static public var GL_VERTEX_BINDING_DIVISOR:Int = 33494;
/** Accepted by the {@code target} parameter of GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, and GetInteger64i_v.  */
	inline static public var GL_VERTEX_BINDING_OFFSET:Int = 33495;
/** Accepted by the {@code target} parameter of GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, and GetInteger64i_v.  */
	inline static public var GL_VERTEX_BINDING_STRIDE:Int = 33496;
/** Accepted by the {@code target} parameter of GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, and GetInteger64i_v.  */
	inline static public var GL_VERTEX_BINDING_BUFFER:Int = 36687;
/** Accepted by the {@code pname} parameter of GetIntegerv, ....  */
	inline static public var GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET:Int = 33497;
/** Accepted by the {@code pname} parameter of GetIntegerv, ....  */
	inline static public var GL_MAX_VERTEX_ATTRIB_BINDINGS:Int = 33498;
/** Function address.  */
	public var ClearBufferData:haxe.Int64;
/** Function address.  */
	public var ClearBufferSubData:haxe.Int64;
/** Function address.  */
	public var DispatchCompute:haxe.Int64;
/** Function address.  */
	public var DispatchComputeIndirect:haxe.Int64;
/** Function address.  */
	public var CopyImageSubData:haxe.Int64;
/** Function address.  */
	public var DebugMessageControl:haxe.Int64;
/** Function address.  */
	public var DebugMessageInsert:haxe.Int64;
/** Function address.  */
	public var DebugMessageCallback:haxe.Int64;
/** Function address.  */
	public var GetDebugMessageLog:haxe.Int64;
/** Function address.  */
	public var PushDebugGroup:haxe.Int64;
/** Function address.  */
	public var PopDebugGroup:haxe.Int64;
/** Function address.  */
	public var ObjectLabel:haxe.Int64;
/** Function address.  */
	public var GetObjectLabel:haxe.Int64;
/** Function address.  */
	public var ObjectPtrLabel:haxe.Int64;
/** Function address.  */
	public var GetObjectPtrLabel:haxe.Int64;
/** Function address.  */
	public var FramebufferParameteri:haxe.Int64;
/** Function address.  */
	public var GetFramebufferParameteriv:haxe.Int64;
/** Function address.  */
	public var GetInternalformati64v:haxe.Int64;
/** Function address.  */
	public var InvalidateTexSubImage:haxe.Int64;
/** Function address.  */
	public var InvalidateTexImage:haxe.Int64;
/** Function address.  */
	public var InvalidateBufferSubData:haxe.Int64;
/** Function address.  */
	public var InvalidateBufferData:haxe.Int64;
/** Function address.  */
	public var InvalidateFramebuffer:haxe.Int64;
/** Function address.  */
	public var InvalidateSubFramebuffer:haxe.Int64;
/** Function address.  */
	public var MultiDrawArraysIndirect:haxe.Int64;
/** Function address.  */
	public var MultiDrawElementsIndirect:haxe.Int64;
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
/** Function address.  */
	public var ShaderStorageBlockBinding:haxe.Int64;
/** Function address.  */
	public var TexBufferRange:haxe.Int64;
/** Function address.  */
	public var TexStorage2DMultisample:haxe.Int64;
/** Function address.  */
	public var TexStorage3DMultisample:haxe.Int64;
/** Function address.  */
	public var TextureView:haxe.Int64;
/** Function address.  */
	public var BindVertexBuffer:haxe.Int64;
/** Function address.  */
	public var VertexAttribFormat:haxe.Int64;
/** Function address.  */
	public var VertexAttribIFormat:haxe.Int64;
/** Function address.  */
	public var VertexAttribLFormat:haxe.Int64;
/** Function address.  */
	public var VertexAttribBinding:haxe.Int64;
/** Function address.  */
	public var VertexBindingDivisor:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glDebugMessageInsert DebugMessageInsert}  */
/** JNI method for {@link #glDebugMessageInsert DebugMessageInsert}  */
	static public function nglDebugMessageInsert(source:Int,type:Int,id:Int,severity:Int,length:Int,message:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,type:Int,id:Int,severity:Int,length:Int,message:haxe.Int64):Void {})
/** JNI method for {@link #glInvalidateTexImage InvalidateTexImage}  */
	static public function nglInvalidateTexImage(texture:Int,level:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribIFormat.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the organization of pure integer data in vertex arrays.
 *
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexAttribIFormat(attribindex:Int,size:Int,type:Int,relativeoffset:Int):Void;
/** Unsafe version of {@link #glObjectLabel ObjectLabel}  */
/** JNI method for {@link #glObjectLabel ObjectLabel}  */
	static public function nglObjectLabel(identifier:Int,name:Int,length:Int,label:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (identifier:Int,name:Int,length:Int,label:haxe.Int64):Void {})
/** JNI method for {@link #glInvalidateBufferData InvalidateBufferData}  */
	static public function nglInvalidateBufferData(buffer:Int,__functionAddress:haxe.Int64):Void;
/** Single value version of: {@link #glInvalidateFramebuffer InvalidateFramebuffer}  */
/** Alternative version of: {@link #glInvalidateFramebuffer InvalidateFramebuffer}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glInvalidateFramebuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Invalidate the content some or all of a framebuffer object's attachments.
 *
 * @param target         the target to which the framebuffer is attached. One of:<br>{@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}, {@link GL30#GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}, {@link GL30#GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}
 * @param numAttachments the number of entries in the {@code attachments} array
 * @param attachments    the address of an array identifying the attachments to be invalidated
 */
	static public function glInvalidateFramebuffer(target:Int,numAttachments:Int,attachments:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,attachment:Int):Void {})
	@:overload(function (target:Int,attachments:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glMultiDrawElementsIndirect MultiDrawElementsIndirect}  */
/** JNI method for {@link #glMultiDrawElementsIndirect MultiDrawElementsIndirect}  */
	static public function nglMultiDrawElementsIndirect(mode:Int,type:Int,indirect:haxe.Int64,primcount:Int,stride:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,type:Int,indirect:haxe.Int64,primcount:Int,stride:Int):Void {})
/** Buffer object offset version of: {@link #glMultiDrawElementsIndirect MultiDrawElementsIndirect}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glMultiDrawElementsIndirect.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders multiple indexed primitives from array data, taking parameters from memory.
 * 
 * <p>The parameters addressed by indirect are packed into a structure that takes the form (in C):
 * <pre><code style="font-family: monospace">
 * typedef struct {
 * 	uint count;
 * 	uint primCount;
 * 	uint firstIndex;
 * 	uint baseVertex;
 * 	uint baseInstance;
 * } DrawElementsIndirectCommand;</code></pre></p>
 * 
 * <p>A single call to {@code glMultiDrawElementsIndirect} is equivalent, assuming no errors are generated to:
 * <pre><code style="font-family: monospace">
 * const ubyte *ptr = (const ubyte *)indirect;
 * for ( i = 0; i < primcount; i++ ) {
 * 	DrawElementsIndirect(mode, type, (DrawElementsIndirectCommand *)ptr);
 * 	if ( stride == 0 )
 * 		ptr += sizeof(DrawElementsIndirectCommand);
 * 	else
 * 		ptr += stride;
 * }</code></pre></p>
 *
 * @param mode      what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param type      the type of data in the buffer bound to the GL_ELEMENT_ARRAY_BUFFER binding. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indirect  a structure containing an array of draw parameters
 * @param primcount the number of elements in the array addressed by {@code indirect}
 * @param stride    the distance in basic machine units between elements of the draw parameter array
 */
/** IntBuffer version of: {@link #glMultiDrawElementsIndirect MultiDrawElementsIndirect}  */
	static public function glMultiDrawElementsIndirect(mode:Int,type:Int,indirect:java.nio.IntBuffer,primcount:Int,stride:Int):Void;
	@:overload(function (mode:Int,type:Int,indirectOffset:haxe.Int64,primcount:Int,stride:Int):Void {})
	@:overload(function (mode:Int,type:Int,indirect:java.nio.ByteBuffer,primcount:Int,stride:Int):Void {})
/** JNI method for {@link #glInvalidateTexSubImage InvalidateTexSubImage}  */
	static public function nglInvalidateTexSubImage(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,__functionAddress:haxe.Int64):Void;
/** CharSequence version of: {@link #glObjectLabel ObjectLabel}  */
/** Alternative version of: {@link #glObjectLabel ObjectLabel}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glObjectLabel.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Labels a named object identified within a namespace.
 *
 * @param identifier the namespace from which the name of the object is allocated. One of:<br>{@link #GL_BUFFER BUFFER}, {@link #GL_SHADER SHADER}, {@link #GL_PROGRAM PROGRAM}, {@link #GL_QUERY QUERY}, {@link #GL_PROGRAM_PIPELINE PROGRAM_PIPELINE}, {@link #GL_SAMPLER SAMPLER}, {@link #GL_DISPLAY_LIST DISPLAY_LIST}, {@link GL11#GL_VERTEX_ARRAY VERTEX_ARRAY}, {@link GL11#GL_TEXTURE TEXTURE}, {@link GL30#GL_RENDERBUFFER RENDERBUFFER}, {@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}, {@link GL40#GL_TRANSFORM_FEEDBACK TRANSFORM_FEEDBACK}
 * @param name       the name of the object to label
 * @param length     the length of the label to be used for the object
 * @param label      a string containing the label to assign to the object
 */
	static public function glObjectLabel(identifier:Int,name:Int,length:Int,label:java.nio.ByteBuffer):Void;
	@:overload(function (identifier:Int,name:Int,label:java.lang.CharSequence):Void {})
	@:overload(function (identifier:Int,name:Int,label:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttribLFormat VertexAttribLFormat}  */
	static public function nglVertexAttribLFormat(attribindex:Int,size:Int,type:Int,relativeoffset:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glDebugMessageControl DebugMessageControl}  */
/** JNI method for {@link #glDebugMessageControl DebugMessageControl}  */
	static public function nglDebugMessageControl(source:Int,type:Int,severity:Int,count:Int,ids:haxe.Int64,enabled:Bool,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,type:Int,severity:Int,count:Int,ids:haxe.Int64,enabled:Bool):Void {})
/** JNI method for {@link #glVertexAttribFormat VertexAttribFormat}  */
	static public function nglVertexAttribFormat(attribindex:Int,size:Int,type:Int,normalized:Bool,relativeoffset:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetDebugMessageLog GetDebugMessageLog}  */
/** JNI method for {@link #glGetDebugMessageLog GetDebugMessageLog}  */
	static public function nglGetDebugMessageLog(count:Int,bufsize:Int,sources:haxe.Int64,types:haxe.Int64,ids:haxe.Int64,severities:haxe.Int64,lengths:haxe.Int64,messageLog:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (count:Int,bufsize:Int,sources:haxe.Int64,types:haxe.Int64,ids:haxe.Int64,severities:haxe.Int64,lengths:haxe.Int64,messageLog:haxe.Int64):Int {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glPopDebugGroup.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pops the active debug group. When a debug group is popped, the GL will also generate a debug output message describing its cause based on the
 * {@code message} string, the source {@code source}, and an ID {@code id} submitted to the associated {@link #glPushDebugGroup PushDebugGroup} command. {@link #GL_DEBUG_TYPE_PUSH_GROUP DEBUG_TYPE_PUSH_GROUP}
 * and {@link #GL_DEBUG_TYPE_POP_GROUP DEBUG_TYPE_POP_GROUP} share a single namespace for message {@code id}. {@code severity} has the value {@link #GL_DEBUG_SEVERITY_NOTIFICATION DEBUG_SEVERITY_NOTIFICATION}. The {@code type}
 * has the value {@link #GL_DEBUG_TYPE_POP_GROUP DEBUG_TYPE_POP_GROUP}. Popping a debug group restores the debug output volume control of the parent debug group.
 * 
 * <p>Attempting to pop the default debug group off the stack generates a {@link GL11#GL_STACK_UNDERFLOW STACK_UNDERFLOW} error; pushing a debug group onto a stack containing
 * {@link #GL_MAX_DEBUG_GROUP_STACK_DEPTH MAX_DEBUG_GROUP_STACK_DEPTH} minus one elements will generate a {@link GL11#GL_STACK_OVERFLOW STACK_OVERFLOW} error.</p>
 */
	static public function glPopDebugGroup():Void;
/** Unsafe version of {@link #glObjectPtrLabel ObjectPtrLabel}  */
/** JNI method for {@link #glObjectPtrLabel ObjectPtrLabel}  */
	static public function nglObjectPtrLabel(ptr:haxe.Int64,length:Int,label:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (ptr:haxe.Int64,length:Int,label:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClearBufferSubData.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Fills all or part of buffer object's data store with a fixed value.
 *
 * @param target         the target of the operation. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link #GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link #GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param internalformat the internal format with which the data will be stored in the buffer object
 * @param offset         the offset, in basic machine units into the buffer object's data store at which to start filling
 * @param size           the size, in basic machine units of the range of the data store to fill
 * @param format         the format of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type           the type of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param data           buffer containing the data to be used as the source of the constant fill value.
 *                       The elements of data are converted by the GL into the format specified by internalformat,
 *                       and then used to fill the specified range of the destination buffer.
 *                       If data is {@code NULL}, then it is ignored and the sub-range of the buffer is filled with zeros.
 */
/** FloatBuffer version of: {@link #glClearBufferSubData ClearBufferSubData}  */
/** IntBuffer version of: {@link #glClearBufferSubData ClearBufferSubData}  */
/** ShortBuffer version of: {@link #glClearBufferSubData ClearBufferSubData}  */
	static public function glClearBufferSubData(target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.ShortBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
/** String return (w/ implicit max length) version of: {@link #glGetObjectPtrLabel GetObjectPtrLabel}  */
/** String return version of: {@link #glGetObjectPtrLabel GetObjectPtrLabel}  */
/** Alternative version of: {@link #glGetObjectPtrLabel GetObjectPtrLabel}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetObjectPtrLabel.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the label of a sync object identified by a pointer.
 *
 * @param ptr     the name of the sync object whose label to retrieve
 * @param bufSize the length of the buffer whose address is in {@code label}
 * @param length  a variable to receive the length of the object label
 * @param label   a string that will receive the object label
 */
	static public function glGetObjectPtrLabel(ptr:haxe.Int64,bufSize:Int,length:java.nio.ByteBuffer,label:java.nio.ByteBuffer):Void;
	@:overload(function (ptr:haxe.Int64):String {})
	@:overload(function (ptr:haxe.Int64,bufSize:Int):String {})
	@:overload(function (ptr:haxe.Int64,length:java.nio.IntBuffer,label:java.nio.ByteBuffer):Void {})
/** CharSequence version of: {@link #glPushDebugGroup PushDebugGroup}  */
/** Alternative version of: {@link #glPushDebugGroup PushDebugGroup}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glPushDebugGroup.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pushes a debug group described by the string {@code message} into the command stream. The value of {@code id} specifies the ID of messages generated.
 * The parameter {@code length} contains the number of characters in {@code message}. If {@code length} is negative, it is implied that {@code message}
 * contains a null terminated string. The message has the specified {@code source} and {@code id}, {@code type} {@link #GL_DEBUG_TYPE_PUSH_GROUP DEBUG_TYPE_PUSH_GROUP}, and
 * {@code severity} {@link #GL_DEBUG_SEVERITY_NOTIFICATION DEBUG_SEVERITY_NOTIFICATION}. The GL will put a new debug group on top of the debug group stack which inherits the control of the
 * volume of debug output of the debug group previously residing on the top of the debug group stack. Because debug groups are strictly hierarchical, any
 * additional control of the debug output volume will only apply within the active debug group and the debug groups pushed on top of the active debug group.
 * 
 * <p>An {@link GL11#GL_INVALID_ENUM INVALID_ENUM} error is generated if the value of {@code source} is neither {@link #GL_DEBUG_SOURCE_APPLICATION DEBUG_SOURCE_APPLICATION} nor {@link #GL_DEBUG_SOURCE_THIRD_PARTY DEBUG_SOURCE_THIRD_PARTY}. An
 * {@link GL11#GL_INVALID_VALUE INVALID_VALUE} error is generated if {@code length} is negative and the number of characters in {@code message}, excluding the null-terminator, is
 * not less than the value of {@link #GL_MAX_DEBUG_MESSAGE_LENGTH MAX_DEBUG_MESSAGE_LENGTH}.</p>
 *
 * @param source  the source of the debug message. One of:<br>{@link #GL_DEBUG_SOURCE_APPLICATION DEBUG_SOURCE_APPLICATION}, {@link #GL_DEBUG_SOURCE_THIRD_PARTY DEBUG_SOURCE_THIRD_PARTY}
 * @param id      the identifier of the message
 * @param length  the length of the message to be sent to the debug output stream
 * @param message a string containing the message to be sent to the debug output stream
 */
	static public function glPushDebugGroup(source:Int,id:Int,length:Int,message:java.nio.ByteBuffer):Void;
	@:overload(function (source:Int,id:Int,message:java.lang.CharSequence):Void {})
	@:overload(function (source:Int,id:Int,message:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glBindVertexBuffer BindVertexBuffer}  */
	static public function nglBindVertexBuffer(bindingindex:Int,buffer:Int,offset:haxe.Int64,stride:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glTextureView TextureView}  */
	static public function nglTextureView(texture:Int,target:Int,origtexture:Int,internalformat:Int,minlevel:Int,numlevels:Int,minlayer:Int,numlayers:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetInternalformati64v GetInternalformati64v}  */
	static public function glGetInternalformati64(target:Int,internalformat:Int,pname:Int):haxe.Int64;
/** String return (w/ implicit max length) version of: {@link #glGetProgramResourceName GetProgramResourceName}  */
/** String return version of: {@link #glGetProgramResourceName GetProgramResourceName}  */
/** Alternative version of: {@link #glGetProgramResourceName GetProgramResourceName}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramResourceName.xhtml">OpenGL SDK Reference</a></p>
 * 
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
/** Unsafe version of {@link #glPushDebugGroup PushDebugGroup}  */
/** JNI method for {@link #glPushDebugGroup PushDebugGroup}  */
	static public function nglPushDebugGroup(source:Int,id:Int,length:Int,message:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,id:Int,length:Int,message:haxe.Int64):Void {})
/** String return (w/ implicit max length) version of: {@link #glGetObjectLabel GetObjectLabel}  */
/** String return version of: {@link #glGetObjectLabel GetObjectLabel}  */
/** Alternative version of: {@link #glGetObjectLabel GetObjectLabel}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetObjectLabel.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the label of a named object identified within a namespace.
 *
 * @param identifier the namespace from which the name of the object is allocated. One of:<br>{@link #GL_BUFFER BUFFER}, {@link #GL_SHADER SHADER}, {@link #GL_PROGRAM PROGRAM}, {@link #GL_QUERY QUERY}, {@link #GL_PROGRAM_PIPELINE PROGRAM_PIPELINE}, {@link #GL_SAMPLER SAMPLER}, {@link #GL_DISPLAY_LIST DISPLAY_LIST}, {@link GL11#GL_VERTEX_ARRAY VERTEX_ARRAY}, {@link GL11#GL_TEXTURE TEXTURE}, {@link GL30#GL_RENDERBUFFER RENDERBUFFER}, {@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}, {@link GL40#GL_TRANSFORM_FEEDBACK TRANSFORM_FEEDBACK}
 * @param name       the name of the object whose label to retrieve
 * @param bufSize    the length of the buffer whose address is in {@code label}
 * @param length     the address of a variable to receive the length of the object label
 * @param label      a string that will receive the object label
 */
	static public function glGetObjectLabel(identifier:Int,name:Int,bufSize:Int,length:java.nio.ByteBuffer,label:java.nio.ByteBuffer):Void;
	@:overload(function (identifier:Int,name:Int):String {})
	@:overload(function (identifier:Int,name:Int,bufSize:Int):String {})
	@:overload(function (identifier:Int,name:Int,length:java.nio.IntBuffer,label:java.nio.ByteBuffer):Void {})
/** Buffer object offset version of: {@link #glMultiDrawArraysIndirect MultiDrawArraysIndirect}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glMultiDrawArraysIndirect.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders multiple sets of primitives from array data, taking parameters from memory.
 * 
 * <p>The parameters addressed by {@code indirect} are packed into an array of structures, each element of which takes the form (in C):
 * <pre><code style="font-family: monospace">
 * typedef struct {
 * 	uint count;
 * 	uint primCount;
 * 	uint first;
 * 	uint baseInstance;
 * } DrawArraysIndirectCommand;</code></pre></p>
 * 
 * <p>A single call to {@code glMultiDrawArraysIndirect} is equivalent, assuming no errors are generated to:
 * <pre><code style="font-family: monospace">
 * const ubyte *ptr = (const ubyte *)indirect;
 * for ( i = 0; i < primcount; i++ ) {
 * 	DrawArraysIndirect(mode, (DrawArraysIndirectCommand*)ptr);
 * 	if ( stride == 0 )
 * 		ptr += sizeof(DrawArraysIndirectCommand);
 * 	else
 * 		ptr += stride;
 * }</code></pre></p>
 *
 * @param mode      what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param indirect  an array of structures containing the draw parameters
 * @param primcount the number of elements in the array of draw parameter structures
 * @param stride    the distance in basic machine units between elements of the draw parameter array
 */
/** IntBuffer version of: {@link #glMultiDrawArraysIndirect MultiDrawArraysIndirect}  */
	static public function glMultiDrawArraysIndirect(mode:Int,indirect:java.nio.IntBuffer,primcount:Int,stride:Int):Void;
	@:overload(function (mode:Int,indirectOffset:haxe.Int64,primcount:Int,stride:Int):Void {})
	@:overload(function (mode:Int,indirect:java.nio.ByteBuffer,primcount:Int,stride:Int):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribLFormat.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the organization of 64-bit double data in vertex arrays.
 *
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexAttribLFormat(attribindex:Int,size:Int,type:Int,relativeoffset:Int):Void;
/** CharSequence version of: {@link #glGetProgramResourceLocationIndex GetProgramResourceLocationIndex}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramResourceLocationIndex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the fragment color index of a named variable within a program.
 *
 * @param program          the name of a program object whose resources to query
 * @param programInterface a token identifying the interface within {@code program} containing the resource named {@code name}. Must be:<br>{@link #GL_PROGRAM_OUTPUT PROGRAM_OUTPUT}
 * @param name             the name of the resource to query the location of
 */
	static public function glGetProgramResourceLocationIndex(program:Int,programInterface:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,programInterface:Int,name:java.lang.CharSequence):Int {})
/** JNI method for {@link #glDispatchCompute DispatchCompute}  */
	static public function nglDispatchCompute(num_groups_x:Int,num_groups_y:Int,num_groups_z:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glInvalidateSubFramebuffer InvalidateSubFramebuffer}  */
/** JNI method for {@link #glInvalidateSubFramebuffer InvalidateSubFramebuffer}  */
	static public function nglInvalidateSubFramebuffer(target:Int,numAttachments:Int,attachments:haxe.Int64,x:Int,y:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,numAttachments:Int,attachments:haxe.Int64,x:Int,y:Int,width:Int,height:Int):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClearBufferData.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Fills a buffer object's data store with a fixed value.
 *
 * @param target         the target of the operation. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link #GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link #GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param internalformat the internal format with which the data will be stored in the buffer object
 * @param format         the format of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type           the type of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param data           buffer containing the data to be used as the source of the constant fill value.
 *                       The elements of data are converted by the GL into the format specified by internalformat,
 *                       and then used to fill the specified range of the destination buffer.
 *                       If data is {@code NULL}, then it is ignored and the sub-range of the buffer is filled with zeros.
 */
/** FloatBuffer version of: {@link #glClearBufferData ClearBufferData}  */
/** IntBuffer version of: {@link #glClearBufferData ClearBufferData}  */
/** ShortBuffer version of: {@link #glClearBufferData ClearBufferData}  */
	static public function glClearBufferData(target:Int,internalformat:Int,format:Int,type:Int,data:java.nio.ShortBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,format:Int,type:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetInternalformati64v GetInternalformati64v}  */
/** JNI method for {@link #glGetInternalformati64v GetInternalformati64v}  */
	static public function nglGetInternalformati64v(target:Int,internalformat:Int,pname:Int,bufSize:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,internalformat:Int,pname:Int,bufSize:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glInvalidateBufferSubData.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Invalidates a region of a buffer object's data store.
 *
 * @param buffer the name of a buffer object, a subrange of whose data store to invalidate
 * @param offset the offset within the buffer's data store of the start of the range to be invalidated
 * @param length the length of the range within the buffer's data store to be invalidated
 */
	static public function glInvalidateBufferSubData(buffer:Int,offset:haxe.Int64,length:haxe.Int64):Void;
/** JNI method for {@link #glDispatchComputeIndirect DispatchComputeIndirect}  */
	static public function nglDispatchComputeIndirect(indirect:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Buffer return version of: {@link #glGetProgramResourceiv GetProgramResourceiv}  */
/** Alternative version of: {@link #glGetProgramResourceiv GetProgramResourceiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramResource.xhtml">OpenGL SDK Reference</a></p>
 * 
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
/** Unsafe version of {@link #glClearBufferData ClearBufferData}  */
/** JNI method for {@link #glClearBufferData ClearBufferData}  */
	static public function nglClearBufferData(target:Int,internalformat:Int,format:Int,type:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,internalformat:Int,format:Int,type:Int,data:haxe.Int64):Void {})
/** CharSequence version of: {@link #glGetProgramResourceLocation GetProgramResourceLocation}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramResourceLocation.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the location of a named resource within a program.
 *
 * @param program          the name of a program object whose resources to query
 * @param programInterface a token identifying the interface within {@code program} containing the resource named {@code name}
 * @param name             the name of the resource to query the location of
 */
	static public function glGetProgramResourceLocation(program:Int,programInterface:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,programInterface:Int,name:java.lang.CharSequence):Int {})
/** Unsafe version of {@link #glGetProgramResourceLocationIndex GetProgramResourceLocationIndex}  */
/** JNI method for {@link #glGetProgramResourceLocationIndex GetProgramResourceLocationIndex}  */
	static public function nglGetProgramResourceLocationIndex(program:Int,programInterface:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:Int,programInterface:Int,name:haxe.Int64):Int {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDebugMessageCallback.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies a callback to receive debugging messages from the GL.
 * 
 * <p>The function's prototype must follow the type definition of DEBUGPROC including its platform-dependent calling convention. Anything else will result in
 * undefined behavior. Only one debug callback can be specified for the current context, and further calls overwrite the previous callback. Specifying
 * {@code NULL} as the value of {@code callback} clears the current callback and disables message output through callbacks. Applications can provide
 * user-specified data through the pointer {@code userParam}. The context will store this pointer and will include it as one of the parameters in each call
 * to the callback function.</p>
 * 
 * <p>If the application has specified a callback function for receiving debug output, the implementation will call that function whenever any enabled message
 * is generated.  The source, type, ID, and severity of the message are specified by the DEBUGPROC parameters {@code source}, {@code type}, {@code id}, and
 * {@code severity}, respectively. The string representation of the message is stored in {@code message} and its length (excluding the null-terminator) is
 * stored in {@code length}. The parameter {@code userParam} is the user-specified parameter that was given when calling DebugMessageCallback.</p>
 * 
 * <p>Applications can query the current callback function and the current user-specified parameter by obtaining the values of {@link #GL_DEBUG_CALLBACK_FUNCTION DEBUG_CALLBACK_FUNCTION} and
 * {@link #GL_DEBUG_CALLBACK_USER_PARAM DEBUG_CALLBACK_USER_PARAM}, respectively.</p>
 * 
 * <p>Applications that specify a callback function must be aware of certain special conditions when executing code inside a callback when it is called by the
 * GL, regardless of the debug source.</p>
 * 
 * <p>The memory for {@code message} is owned and managed by the GL, and should only be considered valid for the duration of the function call.</p>
 * 
 * <p>The behavior of calling any GL or window system function from within the callback function is undefined and may lead to program termination.</p>
 * 
 * <p>Care must also be taken in securing debug callbacks for use with asynchronous debug output by multi-threaded GL implementations.</p>
 * 
 * <p>If the {@link #GL_DEBUG_OUTPUT DEBUG_OUTPUT} state is disabled then the GL will not call the callback function.</p>
 *
 * @param callback  a callback function that will be called when a debug message is generated
 * @param userParam a user supplied pointer that will be passed on each invocation of {@code callback}
 */
	static public function glDebugMessageCallback(callback_:org.lwjgl.opengl.GLDebugMessageCallback,userParam:haxe.Int64):Void;
/** Single return value version of: {@link #glGetFramebufferParameteriv GetFramebufferParameteriv}  */
	static public function glGetFramebufferParameteri(target:Int,pname:Int):Int;
/** Alternative version of: {@link #glGetDebugMessageLog GetDebugMessageLog}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetDebugMessageLog.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves messages from the debug message log.
 * 
 * <p>This function fetches a maximum of <count> messages from the message log, and will return the number of messages successfully fetched.</p>
 * 
 * <p>Messages will be fetched from the log in order of oldest to newest. Those messages that were fetched will be removed from the log.</p>
 * 
 * <p>The sources, types, severities, IDs, and string lengths of fetched messages will be stored in the application-provided arrays {@code sources},
 * {@code types}, {@code severities}, {@code ids}, and {@code lengths}, respectively. The application is responsible for allocating enough space for each
 * array to hold up to {@code count} elements. The string representations of all fetched messages are stored in the {@code messageLog} array. If multiple
 * messages are fetched, their strings are concatenated into the same {@code messageLog} array and will be separated by single null terminators. The last
 * string in the array will also be null-terminated. The maximum size of {@code messageLog}, including the space used by all null terminators, is given by
 * {@code bufSize}. If {@code bufSize} is less than zero and {@code messageLog} is not {@code NULL}, an {@link GL11#GL_INVALID_VALUE INVALID_VALUE} error will be generated. If a message's
 * string, including its null terminator, can not fully fit within the {@code messageLog} array's remaining space, then that message and any subsequent
 * messages will not be fetched and will remain in the log. The string lengths stored in the array {@code lengths} include the space for the null terminator of each string.</p>
 * 
 * <p>Any or all of the arrays {@code sources}, {@code types}, {@code ids}, {@code severities}, {@code lengths} and {@code messageLog} can also be null
 * pointers, which causes the attributes for such arrays to be discarded when messages are fetched, however those messages will still be removed from the
 * log. Thus to simply delete up to {@code count} messages from the message log while ignoring their attributes, the application can call the function with
 * null pointers for all attribute arrays.</p>
 * 
 * <p>If the context was created without the {@link #GL_CONTEXT_FLAG_DEBUG_BIT CONTEXT_FLAG_DEBUG_BIT} in the {@link GL30#GL_CONTEXT_FLAGS CONTEXT_FLAGS} state, then the GL can opt to never add messages to the message
 * log so GetDebugMessageLog will always return zero.</p>
 *
 * @param count      the number of debug messages to retrieve from the log
 * @param bufsize    the size of the buffer whose address is given by {@code messageLog}
 * @param sources    an array of variables to receive the sources of the retrieved messages
 * @param types      an array of variables to receive the types of the retrieved messages
 * @param ids        an array of unsigned integers to receive the ids of the retrieved messages
 * @param severities an array of variables to receive the severites of the retrieved messages
 * @param lengths    an array of variables to receive the lengths of the received messages
 * @param messageLog an array of characters that will receive the messages
 */
	static public function glGetDebugMessageLog(count:Int,bufsize:Int,sources:java.nio.ByteBuffer,types:java.nio.ByteBuffer,ids:java.nio.ByteBuffer,severities:java.nio.ByteBuffer,lengths:java.nio.ByteBuffer,messageLog:java.nio.ByteBuffer):Int;
	@:overload(function (count:Int,sources:java.nio.IntBuffer,types:java.nio.IntBuffer,ids:java.nio.IntBuffer,severities:java.nio.IntBuffer,lengths:java.nio.IntBuffer,messageLog:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #glVertexAttribBinding VertexAttribBinding}  */
	static public function nglVertexAttribBinding(attribindex:Int,bindingindex:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glGetInternalformati64v GetInternalformati64v}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetInternalformat.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves information about implementation-dependent support for internal formats.
 *
 * @param target         the usage of the internal format. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}, {@link GL30#GL_RENDERBUFFER RENDERBUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL32#GL_TEXTURE_2D_MULTISAMPLE TEXTURE_2D_MULTISAMPLE}, {@link GL32#GL_TEXTURE_2D_MULTISAMPLE_ARRAY TEXTURE_2D_MULTISAMPLE_ARRAY}
 * @param internalformat the internal format about which to retrieve information
 * @param pname          the type of information to query
 * @param bufSize        the maximum number of values that may be written to params by the function
 * @param params         a variable into which to write the retrieved information
 */
	static public function glGetInternalformati64v(target:Int,internalformat:Int,pname:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,pname:Int,params:java.nio.LongBuffer):Void {})
/** JNI method for {@link #glInvalidateBufferSubData InvalidateBufferSubData}  */
	static public function nglInvalidateBufferSubData(buffer:Int,offset:haxe.Int64,length:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glShaderStorageBlockBinding.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Changes an active shader storage block binding.
 *
 * @param program             the name of the program containing the block whose binding to change
 * @param storageBlockIndex   the index storage block within the program
 * @param storageBlockBinding the index storage block binding to associate with the specified storage block
 */
	static public function glShaderStorageBlockBinding(program:Int,storageBlockIndex:Int,storageBlockBinding:Int):Void;
/** JNI method for {@link #glShaderStorageBlockBinding ShaderStorageBlockBinding}  */
	static public function nglShaderStorageBlockBinding(program:Int,storageBlockIndex:Int,storageBlockBinding:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetProgramInterfaceiv GetProgramInterfaceiv}  */
	static public function glGetProgramInterfacei(program:Int,programInterface:Int,pname:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexStorage2DMultisample.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies storage for a two-dimensional multisample texture.
 *
 * @param target               the target of the operation. One of:<br>{@link GL32#GL_TEXTURE_2D_MULTISAMPLE TEXTURE_2D_MULTISAMPLE}, {@link GL32#GL_PROXY_TEXTURE_2D_MULTISAMPLE PROXY_TEXTURE_2D_MULTISAMPLE}
 * @param samples              the number of samples in the texture
 * @param internalformat       the sized internal format to be used to store texture image data
 * @param width                the width of the texture, in texels
 * @param height               the height of the texture, in texels
 * @param fixedsamplelocations whether the image will use identical sample locations and the same number of samples for all texels in the image, and the sample locations will not
 *                             depend on the internal format or size of the image
 */
	static public function glTexStorage2DMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,fixedsamplelocations:Bool):Void;
/** Single value version of: {@link #glDebugMessageControl DebugMessageControl}  */
/** Alternative version of: {@link #glDebugMessageControl DebugMessageControl}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDebugMessageControl.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Controls the volume of debug output in the active debug group, by disabling specific or groups of messages.
 * 
 * <p>If {@code enabled} is {@link GL11#GL_TRUE TRUE}, the referenced subset of messages will be enabled. If {@link GL11#GL_FALSE FALSE}, then those messages will be disabled.</p>
 * 
 * <p>This command can reference different subsets of messages by first considering the set of all messages, and filtering out messages based on the following
 * ways:
 * <ul>
 * <li>If {@code source}, {@code type}, or {@code severity} is {@link GL11#GL_DONT_CARE DONT_CARE}, the messages from all sources, of all types, or of all severities are
 * referenced respectively.</li>
 * <li>When values other than {@link GL11#GL_DONT_CARE DONT_CARE} are specified, all messages whose source, type, or severity match the specified {@code source}, {@code type},
 * or {@code severity} respectively will be referenced.</li>
 * <li>If {@code count} is greater than zero, then {@code ids} is an array of {@code count} message IDs for the specified combination of {@code source} and
 * {@code type}. In this case, if {@code source} or {@code type} is {@link GL11#GL_DONT_CARE DONT_CARE}, or {@code severity} is not {@link GL11#GL_DONT_CARE DONT_CARE}, the error
 * {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated.</li>
 * </ul></p>
 * 
 * <p>Unrecognized message IDs in {@code ids} are ignored. If {@code count} is zero, the value if {@code ids} is ignored.</p>
 * 
 * <p>Although messages are grouped into an implicit hierarchy by their sources and types, there is no explicit per-source, per-type or per-severity enabled
 * state. Instead, the enabled state is stored individually for each message. There is no difference between disabling all messages from one source in a
 * single call, and individually disabling all messages from that source using their types and IDs.</p>
 * 
 * <p>If the {@link #GL_DEBUG_OUTPUT DEBUG_OUTPUT} state is disabled the GL operates the same as if messages of every {@code source}, {@code type} or {@code severity} are disabled.</p>
 *
 * @param source   the source of debug messages to enable or disable. One of:<br>{@link #GL_DEBUG_SOURCE_API DEBUG_SOURCE_API}, {@link #GL_DEBUG_SOURCE_WINDOW_SYSTEM DEBUG_SOURCE_WINDOW_SYSTEM}, {@link #GL_DEBUG_SOURCE_SHADER_COMPILER DEBUG_SOURCE_SHADER_COMPILER}, {@link #GL_DEBUG_SOURCE_THIRD_PARTY DEBUG_SOURCE_THIRD_PARTY}, {@link #GL_DEBUG_SOURCE_APPLICATION DEBUG_SOURCE_APPLICATION}, {@link #GL_DEBUG_SOURCE_OTHER DEBUG_SOURCE_OTHER}
 * @param type     the type of debug messages to enable or disable. One of:<br>{@link #GL_DEBUG_TYPE_ERROR DEBUG_TYPE_ERROR}, {@link #GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR DEBUG_TYPE_DEPRECATED_BEHAVIOR}, {@link #GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR DEBUG_TYPE_UNDEFINED_BEHAVIOR}, {@link #GL_DEBUG_TYPE_PORTABILITY DEBUG_TYPE_PORTABILITY}, {@link #GL_DEBUG_TYPE_PERFORMANCE DEBUG_TYPE_PERFORMANCE}, {@link #GL_DEBUG_TYPE_OTHER DEBUG_TYPE_OTHER}, {@link #GL_DEBUG_TYPE_MARKER DEBUG_TYPE_MARKER}
 * @param severity the severity of debug messages to enable or disable. One of:<br>{@link #GL_DEBUG_SEVERITY_HIGH DEBUG_SEVERITY_HIGH}, {@link #GL_DEBUG_SEVERITY_MEDIUM DEBUG_SEVERITY_MEDIUM}, {@link #GL_DEBUG_SEVERITY_LOW DEBUG_SEVERITY_LOW}, {@link #GL_DEBUG_SEVERITY_NOTIFICATION DEBUG_SEVERITY_NOTIFICATION}
 * @param count    the length of the array {@code ids}
 * @param ids      an array of unsigned integers containing the ids of the messages to enable or disable
 * @param enabled  whether the selected messages should be enabled or disabled
 */
	static public function glDebugMessageControl(source:Int,type:Int,severity:Int,count:Int,ids:java.nio.ByteBuffer,enabled:Bool):Void;
	@:overload(function (source:Int,type:Int,severity:Int,id:Int,enabled:Bool):Void {})
	@:overload(function (source:Int,type:Int,severity:Int,ids:java.nio.IntBuffer,enabled:Bool):Void {})
/** Unsafe version of {@link #glGetProgramResourceIndex GetProgramResourceIndex}  */
/** JNI method for {@link #glGetProgramResourceIndex GetProgramResourceIndex}  */
	static public function nglGetProgramResourceIndex(program:Int,programInterface:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:Int,programInterface:Int,name:haxe.Int64):Int {})
/** Unsafe version of {@link #glGetFramebufferParameteriv GetFramebufferParameteriv}  */
/** JNI method for {@link #glGetFramebufferParameteriv GetFramebufferParameteriv}  */
	static public function nglGetFramebufferParameteriv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetFramebufferParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves a named parameter from a framebuffer.
 *
 * @param target target of the operation. One of:<br>{@link GL30#GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link GL30#GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}, {@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}
 * @param pname  a token indicating the parameter to be retrieved. One of:<br>{@link #GL_FRAMEBUFFER_DEFAULT_WIDTH FRAMEBUFFER_DEFAULT_WIDTH}, {@link #GL_FRAMEBUFFER_DEFAULT_HEIGHT FRAMEBUFFER_DEFAULT_HEIGHT}, {@link #GL_FRAMEBUFFER_DEFAULT_LAYERS FRAMEBUFFER_DEFAULT_LAYERS}, {@link #GL_FRAMEBUFFER_DEFAULT_SAMPLES FRAMEBUFFER_DEFAULT_SAMPLES}, {@link #GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS}
 * @param params a variable to receive the value of the parameter named {@code pname}
 */
/** Alternative version of: {@link #glGetFramebufferParameteriv GetFramebufferParameteriv}  */
	static public function glGetFramebufferParameteriv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexStorage3DMultisample.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies storage for a two-dimensional multisample array texture.
 *
 * @param target               the target of the operation. One of:<br>{@link GL32#GL_TEXTURE_2D_MULTISAMPLE_ARRAY TEXTURE_2D_MULTISAMPLE_ARRAY}, {@link GL32#GL_PROXY_TEXTURE_2D_MULTISAMPLE PROXY_TEXTURE_2D_MULTISAMPLE}
 * @param samples              the number of samples in the texture
 * @param internalformat       the sized internal format to be used to store texture image data
 * @param width                the width of the texture, in texels
 * @param height               the height of the texture, in texels
 * @param depth                the depth of the texture, in texels
 * @param fixedsamplelocations whether the image will use identical sample locations and the same number of samples for all texels in the image, and the sample locations will not
 *                             depend on the internal format or size of the image
 */
	static public function glTexStorage3DMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,depth:Int,fixedsamplelocations:Bool):Void;
/**
 * Creates a {@link GLDebugMessageCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link GLDebugMessageCallback} instance
 */
	static public function GLDebugMessageCallback(sam:org.lwjgl.opengl.GLDebugMessageCallback_SAM):org.lwjgl.opengl.GLDebugMessageCallback;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDispatchCompute.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Launches one or more compute work groups.
 *
 * @param num_groups_x the number of work groups to be launched in the X dimension
 * @param num_groups_y the number of work groups to be launched in the Y dimension
 * @param num_groups_z the number of work groups to be launched in the Z dimension
 */
	static public function glDispatchCompute(num_groups_x:Int,num_groups_y:Int,num_groups_z:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDispatchComputeIndirect.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Launches one or more compute work groups using parameters stored in a buffer.
 * 
 * <p>The parameters addressed by indirect are packed a structure, which takes the form (in C):
 * <pre><code style="font-family: monospace">
 * typedef struct {
 * 	uint num_groups_x;
 * 	uint num_groups_y;
 * 	uint num_groups_z;
 * } DispatchIndirectCommand;</code></pre></p>
 * 
 * <p>A call to {@code glDispatchComputeIndirect} is equivalent, assuming no errors are generated, to:
 * <pre><code style="font-family: monospace">
 * cmd = (const DispatchIndirectCommand *)indirect;
 * glDispatchCompute(cmd->num_groups_x, cmd->num_groups_y, cmd->num_groups_z);</code></pre></p>
 *
 * @param indirect the offset into the buffer object currently bound to the {@link #GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER} buffer target at which the dispatch parameters are
 *                 stored.
 */
	static public function glDispatchComputeIndirect(indirect:haxe.Int64):Void;
/** JNI method for {@link #glCopyImageSubData CopyImageSubData}  */
	static public function nglCopyImageSubData(srcName:Int,srcTarget:Int,srcLevel:Int,srcX:Int,srcY:Int,srcZ:Int,dstName:Int,dstTarget:Int,dstLevel:Int,dstX:Int,dstY:Int,dstZ:Int,srcWidth:Int,srcHeight:Int,srcDepth:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetObjectLabel GetObjectLabel}  */
/** JNI method for {@link #glGetObjectLabel GetObjectLabel}  */
	static public function nglGetObjectLabel(identifier:Int,name:Int,bufSize:Int,length:haxe.Int64,label:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (identifier:Int,name:Int,bufSize:Int,length:haxe.Int64,label:haxe.Int64):Void {})
/** JNI method for {@link #glPopDebugGroup PopDebugGroup}  */
	static public function nglPopDebugGroup(__functionAddress:haxe.Int64):Void;
/** CharSequence version of: {@link #glGetProgramResourceIndex GetProgramResourceIndex}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramResourceIndex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the index of a named resource within a program.
 *
 * @param program          the name of a program object whose resources to query
 * @param programInterface a token identifying the interface within {@code program} containing the resource named {Wcode name}. One of:<br>{@link #GL_UNIFORM UNIFORM}, {@link #GL_UNIFORM_BLOCK UNIFORM_BLOCK}, {@link #GL_PROGRAM_INPUT PROGRAM_INPUT}, {@link #GL_PROGRAM_OUTPUT PROGRAM_OUTPUT}, {@link #GL_BUFFER_VARIABLE BUFFER_VARIABLE}, {@link #GL_SHADER_STORAGE_BLOCK SHADER_STORAGE_BLOCK}, {@link #GL_VERTEX_SUBROUTINE VERTEX_SUBROUTINE}, {@link #GL_TESS_CONTROL_SUBROUTINE TESS_CONTROL_SUBROUTINE}, {@link #GL_TESS_EVALUATION_SUBROUTINE TESS_EVALUATION_SUBROUTINE}, {@link #GL_GEOMETRY_SUBROUTINE GEOMETRY_SUBROUTINE}, {@link #GL_FRAGMENT_SUBROUTINE FRAGMENT_SUBROUTINE}, {@link #GL_COMPUTE_SUBROUTINE COMPUTE_SUBROUTINE}, {@link #GL_VERTEX_SUBROUTINE_UNIFORM VERTEX_SUBROUTINE_UNIFORM}, {@link #GL_TESS_CONTROL_SUBROUTINE_UNIFORM TESS_CONTROL_SUBROUTINE_UNIFORM}, {@link #GL_TESS_EVALUATION_SUBROUTINE_UNIFORM TESS_EVALUATION_SUBROUTINE_UNIFORM}, {@link #GL_GEOMETRY_SUBROUTINE_UNIFORM GEOMETRY_SUBROUTINE_UNIFORM}, {@link #GL_FRAGMENT_SUBROUTINE_UNIFORM FRAGMENT_SUBROUTINE_UNIFORM}, {@link #GL_COMPUTE_SUBROUTINE_UNIFORM COMPUTE_SUBROUTINE_UNIFORM}, {@link #GL_TRANSFORM_FEEDBACK_VARYING TRANSFORM_FEEDBACK_VARYING}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}
 * @param name             the name of the resource to query the index of
 */
	static public function glGetProgramResourceIndex(program:Int,programInterface:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,programInterface:Int,name:java.lang.CharSequence):Int {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glInvalidateTexImage.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Invalidates the entirety of a texture image.
 *
 * @param texture the name of a texture object to invalidate
 * @param level   the level of detail of the texture object to invalidate
 */
	static public function glInvalidateTexImage(texture:Int,level:Int):Void;
/** JNI method for {@link #glTexStorage2DMultisample TexStorage2DMultisample}  */
	static public function nglTexStorage2DMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,fixedsamplelocations:Bool,__functionAddress:haxe.Int64):Void;
/** CharSequence version of: {@link #glDebugMessageInsert DebugMessageInsert}  */
/** Alternative version of: {@link #glDebugMessageInsert DebugMessageInsert}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDebugMessageInsert.xhtml">OpenGL SDK Reference</a></p>
 * 
 * This function can be called by applications and third-party libraries to generate their own messages, such as ones containing timestamp information or
 * signals about specific render system events.
 * 
 * <p>The value of {@code id} specifies the ID for the message and {@code severity} indicates its severity level as defined by the caller. The string
 * {@code buf} contains the string representation of the message. The parameter {@code length} contains the number of characters in {@code buf}. If
 * {@code length} is negative, it is implied that {@code buf} contains a null terminated string. The error {@link GL11#GL_INVALID_VALUE INVALID_VALUE} will be generated if the
 * number of characters in {@code buf}, excluding the null terminator when {@code length} is negative, is not less than the value of
 * {@link #GL_MAX_DEBUG_MESSAGE_LENGTH MAX_DEBUG_MESSAGE_LENGTH}.</p>
 * 
 * <p>If the {@link #GL_DEBUG_OUTPUT DEBUG_OUTPUT} state is disabled calls to DebugMessageInsert are discarded and do not generate an error.</p>
 *
 * @param source   the source of the debug message to insert. One of:<br>{@link #GL_DEBUG_SOURCE_API DEBUG_SOURCE_API}, {@link #GL_DEBUG_SOURCE_WINDOW_SYSTEM DEBUG_SOURCE_WINDOW_SYSTEM}, {@link #GL_DEBUG_SOURCE_SHADER_COMPILER DEBUG_SOURCE_SHADER_COMPILER}, {@link #GL_DEBUG_SOURCE_THIRD_PARTY DEBUG_SOURCE_THIRD_PARTY}, {@link #GL_DEBUG_SOURCE_APPLICATION DEBUG_SOURCE_APPLICATION}, {@link #GL_DEBUG_SOURCE_OTHER DEBUG_SOURCE_OTHER}
 * @param type     the type of the debug message insert. One of:<br>{@link #GL_DEBUG_TYPE_ERROR DEBUG_TYPE_ERROR}, {@link #GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR DEBUG_TYPE_DEPRECATED_BEHAVIOR}, {@link #GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR DEBUG_TYPE_UNDEFINED_BEHAVIOR}, {@link #GL_DEBUG_TYPE_PORTABILITY DEBUG_TYPE_PORTABILITY}, {@link #GL_DEBUG_TYPE_PERFORMANCE DEBUG_TYPE_PERFORMANCE}, {@link #GL_DEBUG_TYPE_OTHER DEBUG_TYPE_OTHER}, {@link #GL_DEBUG_TYPE_MARKER DEBUG_TYPE_MARKER}
 * @param id       the user-supplied identifier of the message to insert. One of:<br>{@link #GL_DEBUG_SEVERITY_HIGH DEBUG_SEVERITY_HIGH}, {@link #GL_DEBUG_SEVERITY_MEDIUM DEBUG_SEVERITY_MEDIUM}, {@link #GL_DEBUG_SEVERITY_LOW DEBUG_SEVERITY_LOW}, {@link #GL_DEBUG_SEVERITY_NOTIFICATION DEBUG_SEVERITY_NOTIFICATION}
 * @param severity the severity of the debug messages to insert
 * @param length   the length of the string contained in the character array whose address is given by {@code message}
 * @param message  a character array containing the message to insert
 */
	static public function glDebugMessageInsert(source:Int,type:Int,id:Int,severity:Int,length:Int,message:java.nio.ByteBuffer):Void;
	@:overload(function (source:Int,type:Int,id:Int,severity:Int,message:java.lang.CharSequence):Void {})
	@:overload(function (source:Int,type:Int,id:Int,severity:Int,message:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiDrawArraysIndirect MultiDrawArraysIndirect}  */
/** JNI method for {@link #glMultiDrawArraysIndirect MultiDrawArraysIndirect}  */
	static public function nglMultiDrawArraysIndirect(mode:Int,indirect:haxe.Int64,primcount:Int,stride:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,indirect:haxe.Int64,primcount:Int,stride:Int):Void {})
/** Unsafe version of {@link #glGetProgramResourceName GetProgramResourceName}  */
/** JNI method for {@link #glGetProgramResourceName GetProgramResourceName}  */
	static public function nglGetProgramResourceName(program:Int,programInterface:Int,index:Int,bufSize:Int,length:haxe.Int64,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,programInterface:Int,index:Int,bufSize:Int,length:haxe.Int64,name:haxe.Int64):Void {})
/** JNI method for {@link #glTexStorage3DMultisample TexStorage3DMultisample}  */
	static public function nglTexStorage3DMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,depth:Int,fixedsamplelocations:Bool,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexBindingDivisor VertexBindingDivisor}  */
	static public function nglVertexBindingDivisor(bindingindex:Int,divisor:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttribIFormat VertexAttribIFormat}  */
	static public function nglVertexAttribIFormat(attribindex:Int,size:Int,type:Int,relativeoffset:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexBindingDivisor.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Modifies the rate at which generic vertex attributes advance during instanced rendering.
 *
 * @param bindingindex the index of the generic vertex attribute
 * @param divisor      the number of instances that will pass between updates of the generic attribute at slot {@code index}
 */
	static public function glVertexBindingDivisor(bindingindex:Int,divisor:Int):Void;
/** JNI method for {@link #glTexBufferRange TexBufferRange}  */
	static public function nglTexBufferRange(target:Int,internalformat:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glClearBufferSubData ClearBufferSubData}  */
/** JNI method for {@link #glClearBufferSubData ClearBufferSubData}  */
	static public function nglClearBufferSubData(target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCopyImageSubData.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Performs a raw data copy between two images.
 *
 * @param srcName   the name of a texture or renderbuffer object from which to copy
 * @param srcTarget the target representing the namespace of the source name {@code srcName}
 * @param srcLevel  the mipmap level to read from the source
 * @param srcX      the X coordinate of the left edge of the souce region to copy
 * @param srcY      the Y coordinate of the top edge of the souce region to copy
 * @param srcZ      the Z coordinate of the near edge of the souce region to copy
 * @param dstName   the name of a texture or renderbuffer object to which to copy
 * @param dstTarget the target representing the namespace of the destination name {@code dstName}
 * @param dstLevel  the mipmap level to write to the source
 * @param dstX      the X coordinate of the left edge of the destination region
 * @param dstY      the Y coordinate of the top edge of the destination region
 * @param dstZ      the Z coordinate of the near edge of the destination region
 * @param srcWidth  the width of the region to be copied
 * @param srcHeight the height of the region to be copied
 * @param srcDepth  the depth of the region to be copied
 */
	static public function glCopyImageSubData(srcName:Int,srcTarget:Int,srcLevel:Int,srcX:Int,srcY:Int,srcZ:Int,dstName:Int,dstTarget:Int,dstLevel:Int,dstX:Int,dstY:Int,dstZ:Int,srcWidth:Int,srcHeight:Int,srcDepth:Int):Void;
/** CharSequence version of: {@link #glObjectPtrLabel ObjectPtrLabel}  */
/** Alternative version of: {@link #glObjectPtrLabel ObjectPtrLabel}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glObjectPtrLabel.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Labels a sync object identified by a pointer.
 *
 * @param ptr    a pointer identifying a sync object
 * @param length the length of the label to be used for the object
 * @param label  a string containing the label to assign to the object
 */
	static public function glObjectPtrLabel(ptr:haxe.Int64,length:Int,label:java.nio.ByteBuffer):Void;
	@:overload(function (ptr:haxe.Int64,label:java.lang.CharSequence):Void {})
	@:overload(function (ptr:haxe.Int64,label:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetProgramInterfaceiv GetProgramInterfaceiv}  */
/** JNI method for {@link #glGetProgramInterfaceiv GetProgramInterfaceiv}  */
	static public function nglGetProgramInterfaceiv(program:Int,programInterface:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,programInterface:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glInvalidateBufferData.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Invalidates the content of a buffer object's data store.
 *
 * @param buffer the name of a buffer object whose data store to invalidate
 */
	static public function glInvalidateBufferData(buffer:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexBufferRange.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a range of a buffer's data store to a buffer texture.
 *
 * @param target         the target of the operation. Must be:<br>{@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}
 * @param internalformat the internal format of the data in the store belonging to {@code buffer}
 * @param buffer         the name of the buffer object whose storage to attach to the active buffer texture
 * @param offset         the offset of the start of the range of the buffer's data store to attach
 * @param size           the size of the range of the buffer's data store to attach
 */
	static public function glTexBufferRange(target:Int,internalformat:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glInvalidateTexSubImage.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Invalidates a region of a texture image.
 *
 * @param texture the name of a texture object a subregion of which to invalidate
 * @param level   the level of detail of the texture object within which the region resides
 * @param xoffset the X offset of the region to be invalidated
 * @param yoffset the Y offset of the region to be invalidated
 * @param zoffset the Z offset of the region to be invalidated
 * @param width   the width of the region to be invalidated
 * @param height  the height of the region to be invalidated
 * @param depth   the depth of the region to be invalidated
 */
	static public function glInvalidateTexSubImage(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int):Void;
/** Unsafe version of {@link #glInvalidateFramebuffer InvalidateFramebuffer}  */
/** JNI method for {@link #glInvalidateFramebuffer InvalidateFramebuffer}  */
	static public function nglInvalidateFramebuffer(target:Int,numAttachments:Int,attachments:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,numAttachments:Int,attachments:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetProgramResourceLocation GetProgramResourceLocation}  */
/** JNI method for {@link #glGetProgramResourceLocation GetProgramResourceLocation}  */
	static public function nglGetProgramResourceLocation(program:Int,programInterface:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:Int,programInterface:Int,name:haxe.Int64):Int {})
/** Unsafe version of {@link #glGetObjectPtrLabel GetObjectPtrLabel}  */
/** JNI method for {@link #glGetObjectPtrLabel GetObjectPtrLabel}  */
	static public function nglGetObjectPtrLabel(ptr:haxe.Int64,bufSize:Int,length:haxe.Int64,label:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (ptr:haxe.Int64,bufSize:Int,length:haxe.Int64,label:haxe.Int64):Void {})
/** Single value version of: {@link #glInvalidateSubFramebuffer InvalidateSubFramebuffer}  */
/** Alternative version of: {@link #glInvalidateSubFramebuffer InvalidateSubFramebuffer}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glInvalidateSubFramebuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Invalidates the content of a region of some or all of a framebuffer object's attachments.
 *
 * @param target         the target to which the framebuffer is attached. One of:<br>{@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}, {@link GL30#GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}, {@link GL30#GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}
 * @param numAttachments the number of entries in the {@code attachments} array
 * @param attachments    an array identifying the attachments to be invalidated
 * @param x              the X offset of the region to be invalidated
 * @param y              the Y offset of the region to be invalidated
 * @param width          the width of the region to be invalidated
 * @param height         the height of the region to be invalidated
 */
	static public function glInvalidateSubFramebuffer(target:Int,numAttachments:Int,attachments:java.nio.ByteBuffer,x:Int,y:Int,width:Int,height:Int):Void;
	@:overload(function (target:Int,attachment:Int,x:Int,y:Int,width:Int,height:Int):Void {})
	@:overload(function (target:Int,attachments:java.nio.IntBuffer,x:Int,y:Int,width:Int,height:Int):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramInterface.xhtml">OpenGL SDK Reference</a></p>
 * 
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
/** JNI method for {@link #glFramebufferParameteri FramebufferParameteri}  */
	static public function nglFramebufferParameteri(target:Int,pname:Int,param:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindVertexBuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a buffer to a vertex buffer bind point.
 *
 * @param bindingindex the index of the vertex buffer binding point to which to bind the buffer
 * @param buffer       the name of an existing buffer to bind to the vertex buffer binding point
 * @param offset       the offset of the first element of the buffer
 * @param stride       the distance between elements within the buffer
 */
	static public function glBindVertexBuffer(bindingindex:Int,buffer:Int,offset:haxe.Int64,stride:Int):Void;
/** JNI method for {@link #glDebugMessageCallback DebugMessageCallback}  */
	static public function nglDebugMessageCallback(callback_:haxe.Int64,userParam:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glFramebufferParameteri.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets a named parameter of a framebuffer.
 *
 * @param target target of the operation. One of:<br>{@link GL30#GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link GL30#GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}, {@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}
 * @param pname  a token indicating the parameter to be modified. One of:<br>{@link #GL_FRAMEBUFFER_DEFAULT_WIDTH FRAMEBUFFER_DEFAULT_WIDTH}, {@link #GL_FRAMEBUFFER_DEFAULT_HEIGHT FRAMEBUFFER_DEFAULT_HEIGHT}, {@link #GL_FRAMEBUFFER_DEFAULT_LAYERS FRAMEBUFFER_DEFAULT_LAYERS}, {@link #GL_FRAMEBUFFER_DEFAULT_SAMPLES FRAMEBUFFER_DEFAULT_SAMPLES}, {@link #GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS}
 * @param param  the new value for the parameter named {@code pname}
 */
	static public function glFramebufferParameteri(target:Int,pname:Int,param:Int):Void;
/** Unsafe version of {@link #glGetProgramResourceiv GetProgramResourceiv}  */
/** JNI method for {@link #glGetProgramResourceiv GetProgramResourceiv}  */
	static public function nglGetProgramResourceiv(program:Int,programInterface:Int,index:Int,propCount:Int,props:haxe.Int64,bufSize:Int,length:haxe.Int64,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,programInterface:Int,index:Int,propCount:Int,props:haxe.Int64,bufSize:Int,length:haxe.Int64,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribBinding.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Associate a vertex attribute and a vertex buffer binding.
 *
 * @param attribindex  the index of the attribute to associate with a vertex buffer binding
 * @param bindingindex the index of the vertex buffer binding with which to associate the generic vertex attribute
 */
	static public function glVertexAttribBinding(attribindex:Int,bindingindex:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTextureView.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Initializes a texture as a data alias of another texture's data store.
 *
 * @param texture        the texture object to be initialized as a view
 * @param target         the target to be used for the newly initialized texture
 * @param origtexture    the name of a texture object of which to make a view
 * @param internalformat the internal format for the newly created view
 * @param minlevel       the  lowest level of detail of the view
 * @param numlevels      the number of levels of detail to include in the view
 * @param minlayer       the index of the first layer to include in the view
 * @param numlayers      the number of layers to include in the view
 */
	static public function glTextureView(texture:Int,target:Int,origtexture:Int,internalformat:Int,minlevel:Int,numlevels:Int,minlayer:Int,numlayers:Int):Void;
/** Returns the {@link GL43} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL43;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribFormat.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the organization of data in vertex arrays.
 *
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param normalized     if true then integer data is normalized to the range [-1, 1] or [0, 1] if it is signed or unsigned, respectively. If false then integer data is
 *                       directly converted to floating point.
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexAttribFormat(attribindex:Int,size:Int,type:Int,normalized:Bool,relativeoffset:Int):Void;

}
