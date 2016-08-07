package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVInternalformatSampleQuery")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/internalformat_sample_query.txt">NV_internalformat_sample_query</a> extension.
 * 
 * <p>Some OpenGL implementations support modes of multisampling which have
 * properties which are non-obvious to applications and/or which may not be
 * standards conformant. The idea of non-conformant AA modes is not new,
 * and is exposed in both GLX and EGL with config caveats and the
 * GLX_NON_CONFORMANT_CONFIG for GLX and EGL_NON_CONFORMANT_CONFIG for EGL,
 * or by querying the EGL_CONFORMANT attribute in newer versions of EGL.</p>
 * 
 * <p>Both of these mechanisms operate on a per-config basis, which works as
 * intended for window-based configs. However, with the advent of
 * application-created FBOs, it is now possible to do all the multisample
 * operations in an application-created FBO and never use a multisample
 * window.</p>
 * 
 * <p>This extension further extends the internalformat query mechanism
 * (first introduced by ARB_internalformat_query and extended in
 * ARB_internalformat_query2) and introduces a mechanism for a
 * implementation to report properties of formats that may also be
 * dependent on the number of samples.  This includes information
 * such as whether the combination of format and samples should be
 * considered conformant. This enables an implementation to report
 * caveats which might apply to both window and FBO-based rendering
 * configurations.</p>
 * 
 * <p>Requires {@link GL42 OpenGL 4.2} or {@link ARBInternalformatQuery ARB_internalformat_query}.</p>
 */
extern class NVInternalformatSampleQuery 
{
/** Accepted by the {@code pname} parameter of GetInternalformatSampleivNV  */
	inline static public var GL_MULTISAMPLES_NV:Int = 37745;
/** Accepted by the {@code pname} parameter of GetInternalformatSampleivNV  */
	inline static public var GL_SUPERSAMPLE_SCALE_X_NV:Int = 37746;
/** Accepted by the {@code pname} parameter of GetInternalformatSampleivNV  */
	inline static public var GL_SUPERSAMPLE_SCALE_Y_NV:Int = 37747;
/** Accepted by the {@code pname} parameter of GetInternalformatSampleivNV  */
	inline static public var GL_CONFORMANT_NV:Int = 37748;
/** Function address.  */
	public var GetInternalformatSampleivNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glGetInternalformatSampleivNV GetInternalformatSampleivNV}  */
/** JNI method for {@link #glGetInternalformatSampleivNV GetInternalformatSampleivNV}  */
	static public function nglGetInternalformatSampleivNV(target:Int,internalformat:Int,samples:Int,pname:Int,bufSize:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,internalformat:Int,samples:Int,pname:Int,bufSize:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param target         
 * @param internalformat 
 * @param samples        
 * @param pname          
 * @param bufSize        
 * @param params         
 */
/** Alternative version of: {@link #glGetInternalformatSampleivNV GetInternalformatSampleivNV}  */
	static public function glGetInternalformatSampleivNV(target:Int,internalformat:Int,samples:Int,pname:Int,bufSize:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,samples:Int,pname:Int,bufSize:Int,params:java.nio.ByteBuffer):Void {})
/** Returns the {@link NVInternalformatSampleQuery} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVInternalformatSampleQuery;

}
