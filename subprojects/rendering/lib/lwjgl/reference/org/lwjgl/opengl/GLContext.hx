package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLContext")
/** This class is a wrapper over an OS-specific OpenGL context handle and provides basic functionality related to OpenGL contexts.  */
extern class GLContext implements org.lwjgl.Pointer
{
	private function new(capabilities:org.lwjgl.opengl.ContextCapabilities):Void;
	static public function createFromCurrent():org.lwjgl.opengl.GLContext;
	private function makeCurrentImpl(targetDraw:haxe.Int64,targetRead:haxe.Int64):Void;
	@:overload(function (target:haxe.Int64):Void {})
/**
 * Detects the best debug output functionality to use and creates a callback that prints information to the standard error stream. The callback function is
 * returned as a {@link Closure}, that should be {@link Closure#release released} when no longer needed.
 */
/**
 * Detects the best debug output functionality to use and creates a callback that prints information to the specified {@link java.io.PrintStream}. The
 * callback function is returned as a {@link Closure}, that should be {@link Closure#release released} when no longer needed.
 *
 * @param stream the output PrintStream
 */
	public function setupDebugMessageCallback(stream:java.io.PrintStream):org.lwjgl.system.libffi.Closure;
	@:overload(function ():org.lwjgl.system.libffi.Closure {})
/**
 * Makes the context current in the current thread and associates with the device/drawable specified by the {@code target} handle for both draw and read
 * operations.
 * <p/>
 * The {@code target} handle is OS-specific.
 *
 * @param target the device/drawable to associate the context with
 *
 * @see GL#setCurrent(GLContext)
 */
/**
 * Makes the context current in the current thread and associates with the device/drawable specified by the {@code targetDraw} handle for draw operations
 * and the device/drawable specified by the {@code targetRead} handle for read operations. This functionality is optional as it may not be supported by
 * the OpenGL implementation. The user must check the availability of the corresponding OpenGL extension before calling this method.
 * <p/>
 * The {@code targetDraw} and {@code targetRead} handles are OS-specific.
 *
 * @param targetDraw the device/drawable to associate the context with for draw operations
 * @param targetRead the device/drawable to associate the context with for read operations
 *
 * @throws OpenGLException if separate associations are not supported
 */
	public function makeCurrent(targetDraw:haxe.Int64,targetRead:haxe.Int64):Void;
	@:overload(function (target:haxe.Int64):Void {})
/** Returns true if this {@code GLContext} is current in the current thread.  */
	public function isCurrent():Bool;
/** Destroys this {@code GLContext} and releases any resources associated with it.  */
	public function destroy():Void;
/**
 * Returns the {@code ContextCapabilities} instance that describes the capabilities of this context.
 *
 * @return the {@code ContextCapabilities} instance associated with this context
 */
	public function getCapabilities():org.lwjgl.opengl.ContextCapabilities;
	private function destroyImpl():Void;
/**
 * Checks the current context for OpenGL errors and throws an {@link OpenGLException} if {@link GL11#glGetError GetError} returns anything else than {@link
 * GL11#GL_NO_ERROR NO_ERROR}.
 */
	public function checkGLError():Void;
/** Translates an OpenGL error code to a String describing the error.  */
	static public function translateGLErrorString(errorCode:Int):String;

}
