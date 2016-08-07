package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBOcclusionQuery")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/occlusion_query.txt">ARB_occlusion_query</a> extension.
 * 
 * <p>This extension defines a mechanism whereby an application can query the number of pixels (or, more precisely, samples) drawn by a primitive or group of
 * primitives.</p>
 * 
 * <p>The primary purpose of such a query (hereafter referred to as an "occlusion query") is to determine the visibility of an object. Typically, the
 * application will render the major occluders in the scene, then perform an occlusion query for the bounding box of each detail object in the scene. Only
 * if said bounding box is visible, i.e., if at least one sample is drawn, should the corresponding object be drawn.</p>
 * 
 * <p>The earlier <a href="http://www.opengl.org/registry/specs/HP/occlusion_test.txt">HP_occlusion_test</a> extension defined a similar mechanism, but it had two major shortcomings.
 * <ul>
 * <li>It returned the result as a simple {@link GL11#GL_TRUE TRUE}/{@link GL11#GL_FALSE FALSE} result, when in fact it is often useful to know exactly how many samples were drawn.</li>
 * <li>It provided only a simple "stop-and-wait" model for using multiple queries. The application begins an occlusion test and ends it; then, at some
 * later point, it asks for the result, at which point the driver must stop and wait until the result from the previous test is back before the
 * application can even begin the next one. This is a very simple model, but its performance is mediocre when an application wishes to perform many
 * queries, and it eliminates most of the opportunities for parallelism between the CPU and GPU.</li>
 * </ul>
 * This extension solves both of those problems. It returns as its result the number of samples that pass the depth and stencil tests, and it encapsulates
 * occlusion queries in "query objects" that allow applications to issue many queries before asking for the result of any one. As a result, they can
 * overlap the time it takes for the occlusion query results to be returned with other, more useful work, such as rendering other parts of the scene or
 * performing other computations on the CPU.</p>
 * 
 * <p>There are many situations where a pixel/sample count, rather than a boolean result, is useful.
 * <ul>
 * <li>Objects that are visible but cover only a very small number of pixels can be skipped at a minimal reduction of image quality.</li>
 * <li>Knowing exactly how many pixels an object might cover may help the application decide which level-of-detail model should be used. If only a few
 * pixels are visible, a low-detail model may be acceptable.</li>
 * <li>"Depth peeling" techniques, such as order-independent transparency, need to know when to stop rendering more layers; it is difficult to determine a
 * priori how many layers are needed. A boolean result allows applications to stop when more layers will not affect the image at all, but this will
 * likely result in unacceptable performance. Instead, it makes more sense to stop rendering when the number of pixels in each layer falls below a
 * given threshold.</li>
 * <li>Occlusion queries can replace glReadPixels of the depth buffer to determine whether (for example) a light source is visible for the purposes of a
 * lens flare effect or a halo to simulate glare. Pixel counts allow you to compute the percentage of the light source that is visible, and the
 * brightness of these effects can be modulated accordingly.</li>
 * </ul></p>
 * 
 * <p>Promoted to core in {@link GL15 OpenGL 1.5}.</p>
 */
extern class ARBOcclusionQuery 
{
/** Accepted by the {@code target} parameter of BeginQueryARB, EndQueryARB, and GetQueryivARB.  */
	inline static public var GL_SAMPLES_PASSED_ARB:Int = 35092;
/** Accepted by the {@code pname} parameter of GetQueryivARB.  */
	inline static public var GL_QUERY_COUNTER_BITS_ARB:Int = 34916;
/** Accepted by the {@code pname} parameter of GetQueryivARB.  */
	inline static public var GL_CURRENT_QUERY_ARB:Int = 34917;
/** Accepted by the {@code pname} parameter of GetQueryObjectivARB and GetQueryObjectuivARB.  */
	inline static public var GL_QUERY_RESULT_ARB:Int = 34918;
/** Accepted by the {@code pname} parameter of GetQueryObjectivARB and GetQueryObjectuivARB.  */
	inline static public var GL_QUERY_RESULT_AVAILABLE_ARB:Int = 34919;
/** Function address.  */
	public var GenQueriesARB:haxe.Int64;
/** Function address.  */
	public var DeleteQueriesARB:haxe.Int64;
/** Function address.  */
	public var IsQueryARB:haxe.Int64;
/** Function address.  */
	public var BeginQueryARB:haxe.Int64;
/** Function address.  */
	public var EndQueryARB:haxe.Int64;
/** Function address.  */
	public var GetQueryivARB:haxe.Int64;
/** Function address.  */
	public var GetQueryObjectivARB:haxe.Int64;
/** Function address.  */
	public var GetQueryObjectuivARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glBeginQueryARB BeginQueryARB}  */
	static public function nglBeginQueryARB(target:Int,id:Int,__functionAddress:haxe.Int64):Void;
/**
 * Returns the integer value of a query object parameter.
 *
 * @param id     the name of a query object
 * @param pname  the symbolic name of a query object parameter. One of:<br>{@link #GL_QUERY_RESULT_ARB QUERY_RESULT_ARB}, {@link #GL_QUERY_RESULT_AVAILABLE_ARB QUERY_RESULT_AVAILABLE_ARB}
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryObjectivARB GetQueryObjectivARB}  */
	static public function glGetQueryObjectivARB(id:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (id:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGenQueriesARB GenQueriesARB}  */
/** JNI method for {@link #glGenQueriesARB GenQueriesARB}  */
	static public function nglGenQueriesARB(n:Int,ids:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,ids:haxe.Int64):Void {})
/** Single value version of: {@link #glDeleteQueriesARB DeleteQueriesARB}  */
/** Alternative version of: {@link #glDeleteQueriesARB DeleteQueriesARB}  */
/**
 * Deletes named query objects.
 *
 * @param n   the number of query objects to be deleted
 * @param ids an array of query objects to be deleted
 */
	static public function glDeleteQueriesARB(n:Int,ids:java.nio.ByteBuffer):Void;
	@:overload(function (id:Int):Void {})
	@:overload(function (ids:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glEndQueryARB EndQueryARB}  */
	static public function nglEndQueryARB(target:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetQueryObjectivARB GetQueryObjectivARB}  */
/** JNI method for {@link #glGetQueryObjectivARB GetQueryObjectivARB}  */
	static public function nglGetQueryObjectivARB(id:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (id:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glDeleteQueriesARB DeleteQueriesARB}  */
/** JNI method for {@link #glDeleteQueriesARB DeleteQueriesARB}  */
	static public function nglDeleteQueriesARB(n:Int,ids:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,ids:haxe.Int64):Void {})
/** JNI method for {@link #glIsQueryARB IsQueryARB}  */
	static public function nglIsQueryARB(id:Int,__functionAddress:haxe.Int64):Bool;
/** Unsafe version of {@link #glGetQueryObjectuivARB GetQueryObjectuivARB}  */
/** JNI method for {@link #glGetQueryObjectuivARB GetQueryObjectuivARB}  */
	static public function nglGetQueryObjectuivARB(id:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (id:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGenQueriesARB GenQueriesARB}  */
/** Alternative version of: {@link #glGenQueriesARB GenQueriesARB}  */
/**
 * Generates query object names.
 *
 * @param n   the number of query object names to be generated
 * @param ids a buffer in which the generated query object names are stored
 */
	static public function glGenQueriesARB(n:Int,ids:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (ids:java.nio.IntBuffer):Void {})
/**
 * Determine if a name corresponds to a query object.
 *
 * @param id a value that may be the name of a query object
 */
	static public function glIsQueryARB(id:Int):Bool;
/** Single return value version of: {@link #glGetQueryObjectivARB GetQueryObjectivARB}  */
	static public function glGetQueryObjectiARB(id:Int,pname:Int):Int;
/**
 * Returns parameters of a query object target.
 *
 * @param target the query object target. One of:<br>{@link GL15#GL_SAMPLES_PASSED SAMPLES_PASSED}, {@link GL30#GL_PRIMITIVES_GENERATED PRIMITIVES_GENERATED}, {@link GL30#GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN}, {@link GL33#GL_TIME_ELAPSED TIME_ELAPSED}, {@link GL33#GL_TIMESTAMP TIMESTAMP}, {@link GL33#GL_ANY_SAMPLES_PASSED ANY_SAMPLES_PASSED}, {@link GL43#GL_ANY_SAMPLES_PASSED_CONSERVATIVE ANY_SAMPLES_PASSED_CONSERVATIVE}
 * @param pname  the symbolic name of a query object target parameter. One of:<br>{@link #GL_QUERY_COUNTER_BITS_ARB QUERY_COUNTER_BITS_ARB}, {@link #GL_CURRENT_QUERY_ARB CURRENT_QUERY_ARB}
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryivARB GetQueryivARB}  */
	static public function glGetQueryivARB(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetQueryivARB GetQueryivARB}  */
	static public function glGetQueryiARB(target:Int,pname:Int):Int;
/**
 * Unsigned version of {@link #glGetQueryObjectivARB GetQueryObjectivARB}.
 *
 * @param id     the name of a query object
 * @param pname  the symbolic name of a query object parameter. One of:<br>{@link #GL_QUERY_RESULT_ARB QUERY_RESULT_ARB}, {@link #GL_QUERY_RESULT_AVAILABLE_ARB QUERY_RESULT_AVAILABLE_ARB}
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryObjectuivARB GetQueryObjectuivARB}  */
	static public function glGetQueryObjectuivARB(id:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (id:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetQueryivARB GetQueryivARB}  */
/** JNI method for {@link #glGetQueryivARB GetQueryivARB}  */
	static public function nglGetQueryivARB(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetQueryObjectuivARB GetQueryObjectuivARB}  */
	static public function glGetQueryObjectuiARB(id:Int,pname:Int):Int;
/**
 * Marks the end of the sequence of commands to be tracked for the active query specified by {@code target}.
 *
 * @param target the query object target. One of:<br>{@link GL15#GL_SAMPLES_PASSED SAMPLES_PASSED}, {@link GL30#GL_PRIMITIVES_GENERATED PRIMITIVES_GENERATED}, {@link GL30#GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN}, {@link GL33#GL_TIME_ELAPSED TIME_ELAPSED}, {@link GL33#GL_TIMESTAMP TIMESTAMP}, {@link GL33#GL_ANY_SAMPLES_PASSED ANY_SAMPLES_PASSED}, {@link GL43#GL_ANY_SAMPLES_PASSED_CONSERVATIVE ANY_SAMPLES_PASSED_CONSERVATIVE}
 */
	static public function glEndQueryARB(target:Int):Void;
/** Returns the {@link ARBOcclusionQuery} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBOcclusionQuery;
/**
 * Creates a query object and makes it active.
 *
 * @param target the target type of query object established. One of:<br>{@link GL15#GL_SAMPLES_PASSED SAMPLES_PASSED}, {@link GL30#GL_PRIMITIVES_GENERATED PRIMITIVES_GENERATED}, {@link GL30#GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN}, {@link GL33#GL_TIME_ELAPSED TIME_ELAPSED}, {@link GL33#GL_TIMESTAMP TIMESTAMP}, {@link GL33#GL_ANY_SAMPLES_PASSED ANY_SAMPLES_PASSED}, {@link GL43#GL_ANY_SAMPLES_PASSED_CONSERVATIVE ANY_SAMPLES_PASSED_CONSERVATIVE}
 * @param id     the name of a query object
 */
	static public function glBeginQueryARB(target:Int,id:Int):Void;

}
