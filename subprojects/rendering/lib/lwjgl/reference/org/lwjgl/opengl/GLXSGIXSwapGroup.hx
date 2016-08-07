package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXSGIXSwapGroup")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/SGIX/swap_group.txt">GLX_SGIX_swap_group</a> extension.
 * 
 * <p>This extension provides the capability to synchronize the buffer swaps of a group of GLX drawables.  A swap group is created, and drawables are added as
 * members to the swap group. Buffer swaps to members of the swap group will then take place concurrently.</p>
 * 
 * <p>This extension extends the set of conditions that must be met before a buffer swap can take place.</p>
 */
extern class GLXSGIXSwapGroup 
{
/** Function address.  */
	public var JoinSwapGroupSGIX:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glXJoinSwapGroupSGIX JoinSwapGroupSGIX}  */
	static public function nglXJoinSwapGroupSGIX(display:haxe.Int64,drawable:haxe.Int64,member:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Returns the {@link GLXSGIXSwapGroup} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXSGIXSwapGroup;
/**
 * Adds {@code drawable} to the swap group containing {@code member} as a member. If {@code drawable} is already a member of a different group, it is
 * implicitly removed from that group first. If {@code member} is {@link X#None}, {@code drawable} is removed from the swap group that it belongs to, if
 * any.
 *
 * @param display  the connection to the X server
 * @param drawable the GLXDrawable to add to the swap group
 * @param member   a member of the swap group or {@link X#None}
 */
	static public function glXJoinSwapGroupSGIX(display:haxe.Int64,drawable:haxe.Int64,member:haxe.Int64):Void;

}
