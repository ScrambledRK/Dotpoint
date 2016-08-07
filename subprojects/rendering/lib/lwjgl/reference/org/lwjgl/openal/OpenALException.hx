package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.OpenALException")
/**
 * A runtime exception thrown by LWJGL when it encounters an OpenAL error. The
 * checks that trigger this exception are only enabled when
 * {@link org.lwjgl.LWJGLUtil#DEBUG} is true.
 */
extern class OpenALException extends java.lang.RuntimeException 
{
/**  Default constructor for <code>OpenALException</code>. */
	@:overload(function ():Void {})
/**
 * Constructor for OpenALException. Constructs an instance of
 * <code>OpenALException</code> with the specified detail message.
 *
 * @param message the detail message.
 */
	@:overload(function (message:String):Void {})
/**
 * Constructor for OpenALException. Constructs an instance of
 * <code>OpenALException</code> with the specified cause.
 *
 * @param cause the cause of the exception
 */
	@:overload(function (cause:java.lang.Throwable):Void {})
/**
 * Constructor for OpenALException. Constructs an instance of
 * <code>OpenALException</code> with the specified detail message and cause.
 *
 * @param message String identifier for exception
 * @param cause the cause of the exception
 */
	public function new(message:String,cause:java.lang.Throwable):Void;

}
