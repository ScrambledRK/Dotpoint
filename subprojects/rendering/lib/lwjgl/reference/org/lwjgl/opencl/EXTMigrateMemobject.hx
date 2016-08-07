package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.EXTMigrateMemobject")
@:final
/**
 * Native bindings to the <a href="http://www.khronos.org/registry/cl/extensions/ext/cl_ext_migrate_memobject.txt">ext_migrate_memobject</a> extension.
 * 
 * <p>This extension defines a mechanism for assigning which device an OpenCL memory object resides.</p>
 */
extern class EXTMigrateMemobject 
{
/** This flag specifies that the specified set of memory objects are to be migrated to the host, regardless of the target command queue.  */
	inline static public var CL_MIGRATE_MEM_OBJECT_HOST_EXT:Int = 1;
/** Returned in the {@code param_value} parameter of the clGetEventInfo when {@code param_name} is {@link CL10#CL_EVENT_COMMAND_TYPE EVENT_COMMAND_TYPE}.  */
	inline static public var CL_COMMAND_MIGRATE_MEM_OBJECT_EXT:Int = 16448;
/** Function address.  */
	public var EnqueueMigrateMemObjectEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Alternative version of: {@link #clEnqueueMigrateMemObjectEXT EnqueueMigrateMemObjectEXT}  */
/**
 * Provides the application with a way to indicate which device a set of memory objects should be associated. Typically, memory objects are implicitly
 * migrated to a device for which enqueued commands, using the memory object, are targeted. clEnqueueMigrateMemObjectEXT allows this migration to be
 * explicitly performed ahead of the dependent commands. This permits an application to overlap the placement of memory objects with other unrelated
 * operations. Once the OpenCL event, returned from clEnqueueMigrateMemObject, has been marked {@link CL10#CL_COMPLETE COMPLETE} the memory objects specified in
 * {@code mem_objects} have been successfully migrated to the device associated with {@code command_queue}. The migrated memory object shall remain
 * resident on the device until another command is enqueued that either implicitly or explicitly migrates it away. As well, clEnqueueMigrateMemObjectEXT
 * can be used to direct the initial placement of a memory object, after creation, possibly avoiding the initial overhead of instantiating the object on
 * the first enqueued command to use it.
 * 
 * <p>The user is responsible for managing the event dependencies, associated with this command, in order to avoid overlapping access to memory objects.
 * Improperly specified event dependencies passed to clEnqueueMigrateMemObject could result in undefined results.</p>
 *
 * @param command_queue           a valid command queue
 * @param num_mem_objects         the number of memory objects specified in the {@code mem_objects} argument
 * @param mem_objects             the memory objects to migrate to the OpenCL device associated with {@code command_queue}
 * @param flags                   a bitfield that is used to specify migration options. One of:<br>0, {@link #CL_MIGRATE_MEM_OBJECT_HOST_EXT MIGRATE_MEM_OBJECT_HOST_EXT}
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 */
	static public function clEnqueueMigrateMemObjectEXT(command_queue:haxe.Int64,num_mem_objects:Int,mem_objects:java.nio.ByteBuffer,flags:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,mem_objects:org.lwjgl.PointerBuffer,flags:haxe.Int64,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clEnqueueMigrateMemObjectEXT EnqueueMigrateMemObjectEXT}  */
/** JNI method for {@link #clEnqueueMigrateMemObjectEXT EnqueueMigrateMemObjectEXT}  */
	static public function nclEnqueueMigrateMemObjectEXT(command_queue:haxe.Int64,num_mem_objects:Int,mem_objects:haxe.Int64,flags:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,num_mem_objects:Int,mem_objects:haxe.Int64,flags:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** Returns the {@link EXTMigrateMemobject} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.EXTMigrateMemobject;

}
