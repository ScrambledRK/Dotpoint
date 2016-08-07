package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBSync")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/sync.txt">ARB_sync</a> extension.
 * 
 * <p>This extension introduces the concept of "sync objects". Sync objects are a synchronization primitive - a representation of events whose completion
 * status can be tested or waited upon. One specific type of sync object, the "fence sync object", is supported in this extension, and additional types can
 * easily be added in the future.</p>
 * 
 * <p>Fence sync objects have corresponding fences, which are inserted into the OpenGL command stream at the time the sync object is created. A sync object
 * can be queried for a given condition. The only condition supported for fence sync objects is completion of the corresponding fence command. Fence
 * completion allows applications to request a partial Finish, wherein all commands prior to the fence will be forced to complete before control is
 * returned to the calling process.</p>
 * 
 * <p>These new mechanisms allow for synchronization between the host CPU and the GPU, which may be accessing the same resources (typically memory), as well
 * as between multiple GL contexts bound to multiple threads in the host CPU.</p>
 * 
 * <p>Requires {@link GL31 OpenGL 3.1}. Promoted to core in {@link GL32 OpenGL 3.2}.</p>
 */
extern class ARBSync 
{
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
	public var GetSynciv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
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
 * Creates a new sync object and inserts it into the GL command stream.
 *
 * @param condition the condition that must be met to set the sync object's state to signaled. Must be:<br>{@link #GL_SYNC_GPU_COMMANDS_COMPLETE SYNC_GPU_COMMANDS_COMPLETE}
 * @param flags     a bitwise combination of flags controlling the behavior of the sync object. No flags are presently defined for this operation and {@code flags} must
 *                  be zero.
 */
	static public function glFenceSync(condition:Int,flags:Int):haxe.Int64;
/** Returns the {@link ARBSync} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBSync;
/** Alternative version of: {@link #glGetSynciv GetSynciv}  */
/**
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
/** Unsafe version of {@link #glGetInteger64v GetInteger64v}  */
	static public function nglGetInteger64v(pname:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glGetSynciv GetSynciv}  */
	static public function nglGetSynciv(sync:haxe.Int64,pname:Int,bufSize:Int,length:haxe.Int64,values:haxe.Int64):Void;
/**
 * Determines if a name corresponds to a sync object.
 *
 * @param sync a value that may be the name of a sync object
 */
	static public function glIsSync(sync:haxe.Int64):Bool;
/** Single return value version of: {@link #glGetSynciv GetSynciv}  */
	static public function glGetSynci(sync:haxe.Int64,pname:Int,length:java.nio.IntBuffer):Int;
/** Single return value version of: {@link #glGetInteger64v GetInteger64v}  */
	static public function glGetInteger64(pname:Int):haxe.Int64;
/**
 * Deletes a sync object.
 *
 * @param sync the sync object to be deleted
 */
	static public function glDeleteSync(sync:haxe.Int64):Void;
/**
 * Returns the 64bit integer value or values of a selected parameter.
 *
 * @param pname  the parameter value to be returned
 * @param params the value or values of the specified parameter
 */
/** Alternative version of: {@link #glGetInteger64v GetInteger64v}  */
	static public function glGetInteger64v(pname:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (pname:Int,params:java.nio.ByteBuffer):Void {})

}
