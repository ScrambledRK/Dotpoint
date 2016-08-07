package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.OpenGLException")
/**
 * A runtime exception thrown by LWJGL when it encounters an OpenGL error. The
 * checks that trigger this exception are only enabled when
 * {@link org.lwjgl.LWJGLUtil#DEBUG} is true.
 */
extern class OpenGLException extends java.lang.RuntimeException 
{
/**
 * Constructor for OpenGLException.
 *
 * @param gl_error_code
 */
	@:overload(function (gl_error_code:Int):Void {})
/**
 * Constructor for OpenGLException.
 *
 * @param message
 */
	@:overload(function (message:String):Void {})
/**
 * Constructor for OpenGLException.
 *
 * @param format
 * @param args
 */
	public function new(format:String,args:java.NativeArray<Dynamic>):Void;

}
