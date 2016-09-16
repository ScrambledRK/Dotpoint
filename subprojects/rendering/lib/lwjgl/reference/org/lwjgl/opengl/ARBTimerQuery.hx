package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTimerQuery")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/timer_query.txt">ARB_timer_query</a> extension.
 * 
 * <p>Applications can benefit from accurate timing information in a number of different ways. During application development, timing information can help
 * identify application or driver bottlenecks. At run time, applications can use timing information to dynamically adjust the amount of detail in a scene
 * to achieve constant frame rates. OpenGL implementations have historically provided little to no useful timing information. Applications can get some
 * idea of timing by reading timers on the CPU, but these timers are not synchronized with the graphics rendering pipeline. Reading a CPU timer does not
 * guarantee the completion of a potentially large amount of graphics work accumulated before the timer is read, and will thus produce wildly inaccurate
 * results. {@link GL11#glFinish Finish} can be used to determine when previous rendering commands have been completed, but will idle the graphics pipeline and adversely
 * affect application performance.</p>
 * 
 * <p>This extension provides a query mechanism that can be used to determine the amount of time it takes to fully complete a set of GL commands, and without
 * stalling the rendering pipeline. It uses the query object mechanisms first introduced in the occlusion query extension, which allow time intervals to be
 * polled asynchronously by the application.</p>
 * 
 * <p>Promoted to core in {@link GL33 OpenGL 3.3}.</p>
 */
extern class ARBTimerQuery 
{
/** Accepted by the {@code target} parameter of BeginQuery, EndQuery, and GetQueryiv.  */
	inline static public var GL_TIME_ELAPSED:Int = 35007;
/**
 * Accepted by the {@code target} parameter of GetQueryiv and QueryCounter. Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv,
 * GetInteger64v, GetFloatv, and GetDoublev.
 */
	inline static public var GL_TIMESTAMP:Int = 36392;
/** Function address.  */
	public var QueryCounter:haxe.Int64;
/** Function address.  */
	public var GetQueryObjecti64v:haxe.Int64;
/** Function address.  */
	public var GetQueryObjectui64v:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Single return value version of: {@link #glGetQueryObjectui64v GetQueryObjectui64v}  */
	static public function glGetQueryObjectui64(id:Int,pname:Int):haxe.Int64;
/**
 * Records the GL time into a query object after all previous commands have reached the GL server but have not yet necessarily executed.
 *
 * @param id     the name of a query object into which to record the GL time
 * @param target the counter to query. Must be:<br>{@link #GL_TIMESTAMP TIMESTAMP}
 */
	static public function glQueryCounter(id:Int,target:Int):Void;
/**
 * Returns the 64bit integer value of query object parameter.
 *
 * @param id     the name of a query object
 * @param pname  the symbolic name of a query object parameter. One of:<br>{@link GL15#GL_QUERY_RESULT QUERY_RESULT}, {@link GL15#GL_QUERY_RESULT_AVAILABLE QUERY_RESULT_AVAILABLE}
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryObjecti64v GetQueryObjecti64v}  */
	static public function glGetQueryObjecti64v(id:Int,pname:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (id:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetQueryObjecti64v GetQueryObjecti64v}  */
	static public function nglGetQueryObjecti64v(id:Int,pname:Int,params:haxe.Int64):Void;
/** Single return value version of: {@link #glGetQueryObjecti64v GetQueryObjecti64v}  */
	static public function glGetQueryObjecti64(id:Int,pname:Int):haxe.Int64;
/** Unsafe version of {@link #glGetQueryObjectui64v GetQueryObjectui64v}  */
	static public function nglGetQueryObjectui64v(id:Int,pname:Int,params:haxe.Int64):Void;
/** Returns the {@link ARBTimerQuery} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTimerQuery;
/**
 * Unsigned version of {@link #glGetQueryObjecti64v GetQueryObjecti64v}.
 *
 * @param id     the name of a query object
 * @param pname  the symbolic name of a query object parameter
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryObjectui64v GetQueryObjectui64v}  */
	static public function glGetQueryObjectui64v(id:Int,pname:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (id:Int,pname:Int,params:java.nio.ByteBuffer):Void {})

}