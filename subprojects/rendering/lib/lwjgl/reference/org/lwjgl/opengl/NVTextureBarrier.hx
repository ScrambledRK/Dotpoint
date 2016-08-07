package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVTextureBarrier")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/texture_barrier.txt">NV_texture_barrier</a> extension.
 * 
 * <p>This extension relaxes the restrictions on rendering to a currently bound texture and provides a mechanism to avoid
 * read-after-write hazards.</p>
 */
extern class NVTextureBarrier 
{
/** Function address.  */
	public var TextureBarrierNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glTextureBarrierNV TextureBarrierNV}  */
	static public function nglTextureBarrierNV(__functionAddress:haxe.Int64):Void;
	static public function glTextureBarrierNV():Void;
/** Returns the {@link NVTextureBarrier} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVTextureBarrier;

}
