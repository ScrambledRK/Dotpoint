package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTX11SyncObject")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/x11_sync_object.txt">EXT_x11_sync_object</a> extension.
 * 
 * <p>Synchronization objects added the ability to better coordinate operations between multiple GL command streams. However, it is desirable to have the
 * same level of coordination between GL command streams and external rendering APIs. This extension introduces two new concepts to build upon the
 * synchronization infrastructure provided by {@link ARBSync ARB_sync}:
 * <ol>
 * <li>A means to import an X Synchronization Fence object into the GL and use it as a sync object.</li>
 * <li>The concept of a reusable sync object.</li>
 * </ol>
 * The latter is necessary because the import operation is expensive and performing it every time a synchronization point was reached would make the
 * synchronization prohibitively slow.</p>
 * 
 * <p>This extension stops short of allowing the GL to change the state of imported/reusable sync objects, but does not add any language that would prohibit
 * such functionality from being added in a subsequent extension.</p>
 * 
 * <p>Requires {@link GL32 OpenGL 3.2} or {@link ARBSync ARB_sync}.</p>
 */
extern class EXTX11SyncObject 
{
/** Accepted by the {@code external_sync_type} parameter of ImportSyncEXT.  */
	inline static public var GL_SYNC_X11_FENCE_EXT:Int = 37089;
/** Function address.  */
	public var ImportSyncEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Creates a GL sync object of the type {@code external_sync_type} based on the object referred to by {@code external_sync}.
 *
 * @param external_sync_type the external sync object type. Must be:<br>{@link #GL_SYNC_X11_FENCE_EXT SYNC_X11_FENCE_EXT}
 * @param external_sync      the external sync object. Must be the XID of a valid X11 Synchronization Fence object
 * @param flags              Must be 0.
 */
	static public function glImportSyncEXT(external_sync_type:Int,external_sync:haxe.Int64,flags:Int):haxe.Int64;
/** JNI method for {@link #glImportSyncEXT ImportSyncEXT}  */
	static public function nglImportSyncEXT(external_sync_type:Int,external_sync:haxe.Int64,flags:Int,__functionAddress:haxe.Int64):haxe.Int64;
/** Returns the {@link EXTX11SyncObject} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTX11SyncObject;

}
