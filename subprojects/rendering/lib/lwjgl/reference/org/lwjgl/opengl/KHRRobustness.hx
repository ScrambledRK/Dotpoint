package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.KHRRobustness")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/KHR/robustness.txt">KHR_robustness</a> extension.
 * 
 * <p>The intent of this extension is to address some specific robustness goals:
 * <ul>
 * <li>For all existing GL queries, provide additional "safe" APIs that limit data written to user pointers to a buffer size in bytes that is an explicit
 * additional parameter of the query.</li>
 * <li>Provide a mechanism for a GL application to learn about graphics resets that affect the context.  When a graphics reset occurs, the GL context
 * becomes unusable and the application must create a new context to continue operation. Detecting a graphics reset happens through an inexpensive
 * query.</li>
 * <li>Define behavior of OpenGL calls made after a graphics reset.</li>
 * <li>Provide an enable to guarantee that out-of-bounds buffer object accesses by the GPU will have deterministic behavior and preclude application
 * instability or termination due to an incorrect buffer access. Such accesses include vertex buffer fetches of attributes and indices, and indexed
 * reads of uniforms or parameters from buffers.</li>
 * </ul></p>
 */
extern class KHRRobustness 
{
/** Returned by {@link #glGetGraphicsResetStatus GetGraphicsResetStatus}.  */
	inline static public var GL_NO_ERROR:Int = 0;
/** Returned by {@link #glGetGraphicsResetStatus GetGraphicsResetStatus}.  */
	inline static public var GL_GUILTY_CONTEXT_RESET:Int = 33363;
/** Returned by {@link #glGetGraphicsResetStatus GetGraphicsResetStatus}.  */
	inline static public var GL_INNOCENT_CONTEXT_RESET:Int = 33364;
/** Returned by {@link #glGetGraphicsResetStatus GetGraphicsResetStatus}.  */
	inline static public var GL_UNKNOWN_CONTEXT_RESET:Int = 33365;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, and GetFloatv.  */
	inline static public var GL_CONTEXT_ROBUST_ACCESS:Int = 37107;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, and GetFloatv.  */
	inline static public var GL_RESET_NOTIFICATION_STRATEGY:Int = 33366;
/** Returned by GetIntegerv and related simple queries when {@code value} is {@link #GL_RESET_NOTIFICATION_STRATEGY RESET_NOTIFICATION_STRATEGY}.  */
	inline static public var GL_LOSE_CONTEXT_ON_RESET:Int = 33362;
/** Returned by GetIntegerv and related simple queries when {@code value} is {@link #GL_RESET_NOTIFICATION_STRATEGY RESET_NOTIFICATION_STRATEGY}.  */
	inline static public var GL_NO_RESET_NOTIFICATION:Int = 33377;
/** Returned by {@link GL11#glGetError GetError}.  */
	inline static public var GL_CONTEXT_LOST:Int = 1287;
/** Function address.  */
	public var GetGraphicsResetStatus:haxe.Int64;
/** Function address.  */
	public var ReadnPixels:haxe.Int64;
/** Function address.  */
	public var GetnUniformfv:haxe.Int64;
/** Function address.  */
	public var GetnUniformiv:haxe.Int64;
/** Function address.  */
	public var GetnUniformuiv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glGetnUniformfv GetnUniformfv}  */
	static public function nglGetnUniformfv(program:Int,location:Int,bufSize:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glGetnUniformuiv GetnUniformuiv}  */
	static public function nglGetnUniformuiv(program:Int,location:Int,bufSize:Int,params:haxe.Int64):Void;
/**
 * Indicates if the GL context has been in a reset state at any point since the last call to GetGraphicsResetStatus:
 * <ul>
 * <li>{@link #GL_NO_ERROR NO_ERROR} indicates that the GL context has not been in a reset state since the last call.</li>
 * <li>{@link #GL_GUILTY_CONTEXT_RESET GUILTY_CONTEXT_RESET} indicates that a reset has been detected that is attributable to the current GL context.</li>
 * <li>{@link #GL_INNOCENT_CONTEXT_RESET INNOCENT_CONTEXT_RESET} indicates a reset has been detected that is not attributable to the current GL context.</li>
 * <li>{@link #GL_UNKNOWN_CONTEXT_RESET UNKNOWN_CONTEXT_RESET} indicates a detected graphics reset whose cause is unknown.</li>
 * </ul>
 * If a reset status other than NO_ERROR is returned and subsequent calls return NO_ERROR, the context reset was encountered and completed. If a reset
 * status is repeatedly returned, the context may be in the process of resetting.
 * 
 * <p>Reset notification behavior is determined at context creation time, and may be queried by calling GetIntegerv with the symbolic constant
 * {@link #GL_RESET_NOTIFICATION_STRATEGY RESET_NOTIFICATION_STRATEGY}.</p>
 * 
 * <p>If the reset notification behavior is {@link #GL_NO_RESET_NOTIFICATION NO_RESET_NOTIFICATION}, then the implementation will never deliver notification of reset events, and
 * GetGraphicsResetStatus will always return NO_ERROR.</p>
 * 
 * <p>If the behavior is {@link #GL_LOSE_CONTEXT_ON_RESET LOSE_CONTEXT_ON_RESET}, a graphics reset will result in a lost context and require creating a new context as described
 * above. In this case GetGraphicsResetStatus will return an appropriate value from those described above.</p>
 * 
 * <p>If a graphics reset notification occurs in a context, a notification must also occur in all other contexts which share objects with that context.</p>
 * 
 * <p>After a graphics reset has occurred on a context, subsequent GL commands on that context (or any context which shares with that context) will generate a
 * {@link #GL_CONTEXT_LOST CONTEXT_LOST} error. Such commands will not have side effects (in particular, they will not modify memory passed by pointer for query results,
 * and may not block indefinitely or cause termination of the application. Exceptions to this behavior include:
 * <ul>
 * <li>{@link GL11#glGetError GetError} and GetGraphicsResetStatus behave normally following a graphics reset, so that the application can determine a reset has
 * occurred, and when it is safe to destroy and recreate the context.</li>
 * <li>Any commands which might cause a polling application to block indefinitely will generate a CONTEXT_LOST error, but will also return a value
 * indicating completion to the application.</li>
 * </ul></p>
 */
	static public function glGetGraphicsResetStatus():Int;
/** Alternative version of: {@link #glGetnUniformuiv GetnUniformuiv}  */
/**
 * Unsigned version of {@link #glGetnUniformiv GetnUniformiv}.
 *
 * @param program  the program object
 * @param location the uniform location
 * @param bufSize  the maximum number of bytes to write to {@code params}
 * @param params   the buffer in which to place the returned data
 */
	static public function glGetnUniformuiv(program:Int,location:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glReadnPixels ReadnPixels}  */
	static public function nglReadnPixels(x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,bufSize:Int,pixels:haxe.Int64):Void;
/** FloatBuffer version of: {@link #glReadnPixels ReadnPixels}  */
/** IntBuffer version of: {@link #glReadnPixels ReadnPixels}  */
/** ShortBuffer version of: {@link #glReadnPixels ReadnPixels}  */
/** Buffer object offset version of: {@link #glReadnPixels ReadnPixels}  */
/**
 * Behaves identically to {@link GL11#glReadPixels ReadPixels} except that it does not write more than {@code bufSize} bytes into {@code data}
 *
 * @param x       the left pixel coordinate
 * @param y       the lower pixel coordinate
 * @param width   the number of pixels to read in the x-dimension
 * @param height  the number of pixels to read in the y-dimension
 * @param format  the pixel format. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the pixel type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param bufSize the maximum number of bytes to write into {@code data}
 * @param pixels  a buffer in which to place the returned pixel data
 */
	static public function glReadnPixels(x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,bufSize:Int,pixels:java.nio.ByteBuffer):Void;
	@:overload(function (x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
	@:overload(function (x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void {})
	@:overload(function (x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,bufSize:Int,pixelsOffset:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetnUniformiv GetnUniformiv}  */
/**
 * Integer version of {@link #glGetnUniformfv GetnUniformfv}.
 *
 * @param program  the program object
 * @param location the uniform location
 * @param bufSize  the maximum number of bytes to write to {@code params}
 * @param params   the buffer in which to place the returned data
 */
	static public function glGetnUniformiv(program:Int,location:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glGetnUniformfv GetnUniformfv}  */
/**
 * Returns the value or values of a uniform of the default uniform block.
 *
 * @param program  the program object
 * @param location the uniform location
 * @param bufSize  the maximum number of bytes to write to {@code params}
 * @param params   the buffer in which to place the returned data
 */
	static public function glGetnUniformfv(program:Int,location:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.FloatBuffer):Void {})
/** Returns the {@link KHRRobustness} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.KHRRobustness;
/** Unsafe version of {@link #glGetnUniformiv GetnUniformiv}  */
	static public function nglGetnUniformiv(program:Int,location:Int,bufSize:Int,params:haxe.Int64):Void;

}
