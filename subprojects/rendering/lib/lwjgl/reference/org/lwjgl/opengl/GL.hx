package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL")
@:final
extern class GL 
{
/**
 * Creates a new ContextCapabilities instance for the current OpenGL context.
 * <p/>
 * Depending on the current context, the instance returned may or may not contain the
 * deprecated functionality removed since OpenGL version 3.1. The {@code forwardCompatible}
 * flag will force LWJGL to not load the deprecated functions, even if the current context
 * exposes them.
 *
 * @param forwardCompatible if true, LWJGL will create forward compatible capabilities
 *
 * @return the ContextCapabilities instance
 */
	static public function createCapabilities(forwardCompatible:Bool):org.lwjgl.opengl.ContextCapabilities;
	static public function create(libName:String):Void;
	@:overload(function ():Void {})
	static public function destroy():Void;
/** Returns the current {@link GLContext} in the current thread.  */
	static public function getCurrent():org.lwjgl.opengl.GLContext;
/** Returns the {@link ContextCapabilities} of the {@link GLContext} that is current in the current thread.  */
	static public function getCapabilities():org.lwjgl.opengl.ContextCapabilities;
/** Sets the current {@link GLContext} in the current thread.  */
	static public function setCurrent(context:org.lwjgl.opengl.GLContext):Void;
	static public function getFunctionProvider():org.lwjgl.system.FunctionProvider;

}
