package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.ALContext")
/**
 * This class is a wrapper around an AL Context handle. Within the scope of AL the ALC is implied - it is not visible as a handle or function parameter. Only
 * one AL Context per process can be current at a time. Applications maintaining multiple AL Contexts, whether threaded or not, have to set the current context
 * accordingly. Applications can have multiple threads that share one more or contexts. In other words, AL and ALC are threadsafe.
 */
extern class ALContext extends org.lwjgl.system.PointerWrapper 
{
	public function new(device:org.lwjgl.openal.ALDevice,handle:haxe.Int64):Void;
/**  Makes this context the current process-wide OpenAL context. */
	public function makeCurrent():Void;
	public function isCurrent():Bool;
	public function destroy():Void;
/**
 * Creates an asynchronous ALContext, using the default device and default attributes.
 *
 * @return the new ALContext
 */
/**
 * Creates an asynchronous ALContext, using the specified device and default attributes.
 *
 * @return the new ALContext
 */
/**
 * Creates an ALContext, using the specified device and attributes.
 *
 * @param device     the device
 * @param attributes null or a zero terminated list of integer pairs composed of valid ALC attribute tokens and requested values
 *
 * @return the new ALContext
 */
/**
 * Creates an ALContext, using the specified device and attributes.
 *
 * @param device    the device
 * @param frequency the frequency for mixing output buffer, in units of Hz. Set to 0 to use the default.
 * @param refresh   the refresh intervals, in units of Hz. Set to 0 to use the default.
 * @param sync      a flag, indicating a synchronous context
 *
 * @return the new ALContext
 */
	static public function create(device:org.lwjgl.openal.ALDevice,frequency:Int,refresh:Int,sync:Bool):org.lwjgl.openal.ALContext;
	@:overload(function ():org.lwjgl.openal.ALContext {})
	@:overload(function (device:org.lwjgl.openal.ALDevice):org.lwjgl.openal.ALContext {})
	@:overload(function (device:org.lwjgl.openal.ALDevice,attributes:java.nio.IntBuffer):org.lwjgl.openal.ALContext {})
/**  Makes this context the current thread-local OpenAL context. */
	public function makeCurrentThread():Void;
	public function getCapabilities():org.lwjgl.openal.ALCapabilities;
	public function getDevice():org.lwjgl.openal.ALDevice;

}
