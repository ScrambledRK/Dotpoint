package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureBarrier")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_barrier.txt">ARB_texture_barrier</a> extension.
 * 
 * <p>This extension relaxes the restrictions on rendering to a currently bound texture and provides a mechanism to avoid read-after-write hazards.</p>
 * 
 * <p>Promoted to core in {@link GL45 OpenGL 4.5}.</p>
 */
extern class ARBTextureBarrier 
{
/** Function address.  */
	public var TextureBarrier:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Returns the {@link ARBTextureBarrier} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTextureBarrier;
/** Guarantees that writes have completed and caches have been invalidated before subsequent Draws are executed.  */
	static public function glTextureBarrier():Void;

}
