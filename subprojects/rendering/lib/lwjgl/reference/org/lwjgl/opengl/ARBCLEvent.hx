package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBCLEvent")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/cl_event.txt">ARB_cl_event</a> extension.
 * 
 * <p>This extension allows creating OpenGL sync objects linked to OpenCL event objects, potentially improving efficiency of sharing images and buffers
 * between the two APIs. The companion {@link org.lwjgl.opencl.KHRGLEvent cl_khr_gl_event} OpenCL extension provides the complementary functionality of
 * creating an OpenCL event object from an OpenGL fence sync object.</p>
 * 
 * <p>Requires {@link GL32 OpenGL 3.2} or {@link ARBSync ARB_sync}. Requires an OpenCL implementation supporting sharing event objects with OpenGL.</p>
 */
extern class ARBCLEvent 
{
/** Returned in {@code values} for {@link GL32#glGetSynciv GetSynciv} {@code pname} {@link GL32#GL_OBJECT_TYPE OBJECT_TYPE}.  */
	inline static public var GL_SYNC_CL_EVENT_ARB:Int = 33344;
/** Returned in {@code values} for {@link GL32#glGetSynciv GetSynciv} {@code pname} {@link GL32#GL_SYNC_CONDITION SYNC_CONDITION}.  */
	inline static public var GL_SYNC_CL_EVENT_COMPLETE_ARB:Int = 33345;
/** Function address.  */
	public var CreateSyncFromCLeventARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Creates a linked sync object. {@code context} and {@code event} must be handles to a valid OpenCL context and a valid event in that context,
 * respectively. {@code context} must support sharing with GL, and must have been created with respect to the current GL context, or to a share group
 * including the current GL context.
 * 
 * <p>The status of such a sync object depends on {@code event}. When the status of {@code event} is {@link CL10#CL_QUEUED}, {@link CL10#CL_SUBMITTED}, or {@link CL10#CL_RUNNING},
 * the status of the linked sync object will be {@link GL32#GL_UNSIGNALED UNSIGNALED}. When the status of {@code event} changes to {@link CL10#CL_COMPLETE}, the status of the linked
 * sync object will become {@link GL32#GL_SIGNALED SIGNALED}.</p>
 * 
 * <p>Creating a linked sync object places a reference on the linked OpenCL event object. When the sync object is deleted, the reference will be removed from
 * the event object.</p>
 *
 * @param context a valid OpenCL context
 * @param event   a valid OpenCL event
 * @param flags   must be 0 (placeholder for anticipated future extensions of sync object capabilities)
 */
	static public function glCreateSyncFromCLeventARB(context:haxe.Int64,event:haxe.Int64,flags:Int):haxe.Int64;
/** Returns the {@link ARBCLEvent} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBCLEvent;
/** JNI method for {@link #glCreateSyncFromCLeventARB CreateSyncFromCLeventARB}  */
	static public function nglCreateSyncFromCLeventARB(context:haxe.Int64,event:haxe.Int64,flags:Int,__functionAddress:haxe.Int64):haxe.Int64;

}
