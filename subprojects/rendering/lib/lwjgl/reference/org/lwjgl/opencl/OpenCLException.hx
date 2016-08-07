package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.OpenCLException")
/**
 * A runtime exception thrown by LWJGL when it encounters an OpenCL error. The
 * checks that trigger this exception are only enabled when
 * {@link org.lwjgl.LWJGLUtil#DEBUG} is true.
 */
extern class OpenCLException extends java.lang.RuntimeException 
{
/**  Default constructor for <code>OpenCLException</code>. */
	@:overload(function ():Void {})
/**
 * Constructor for OpenCLException. Constructs an instance of
 * <code>OpenCLException</code> with the specified detail message.
 *
 * @param message the detail message.
 */
	@:overload(function (message:String):Void {})
/**
 * Constructor for OpenCLException. Constructs an instance of
 * <code>OpenCLException</code> with the specified cause.
 *
 * @param cause the cause of the exception
 */
	@:overload(function (cause:java.lang.Throwable):Void {})
/**
 * Constructor for OpenCLException. Constructs an instance of
 * <code>OpenCLException</code> with the specified detail message and cause.
 *
 * @param message String identifier for exception
 * @param cause the cause of the exception
 */
	public function new(message:String,cause:java.lang.Throwable):Void;

}
