package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBES3Compatibility")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/ES3_compatibility.txt">ARB_ES3_compatibility</a> extension.
 * 
 * <p>This extension adds support for features of OpenGL ES 3.0 that are missing from OpenGL 3.x. Enabling these features will ease the process of porting
 * applications from OpenGL ES 3.0 to OpenGL. These features include conservative boolean occlusion queries, primitive restart with a fixed index, the
 * OpenGL ES Shading Language 3.00 specification, and the dependencies stated below.</p>
 * 
 * <p>Requires {@link GL33 OpenGL 3.3}, {@link ARBES2Compatibility ARB_ES2_compatibility}, {@link ARBInvalidateSubdata ARB_invalidate_subdata} and {@link ARBTextureStorage ARB_texture_storage}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBES3Compatibility 
{
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
/** Accepted by the {@code value} parameter of the GetInteger functions.  */
	inline static public var GL_MAX_ELEMENT_INDEX:Int = 36203;
/** Accepted by the {@code pname} parameters of GetTexParameterfv and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_IMMUTABLE_LEVELS:Int = 33503;

}
