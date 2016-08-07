package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.SOFTDeferredUpdates")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/SOFT_deferred_updates.txt">SOFT_deferred_updates</a> extension.
 * 
 * <p>This extension allows applications to defer playback state updates. With unextended OpenAL, the playback state would respond to changes as soon as it
 * could handle them, which makes it effectively impossible to ensure multiple changes occur at the same time without the potential of a "partial" update
 * (where one change is heard without the other). This extension provides a way to prevent state updates from occuring until they've all been done, where
 * they will all apply at once.</p>
 */
extern class SOFTDeferredUpdates 
{
/** Accepted by the {@code paramName} parameter of alGetBoolean, alGetBooleanv (as well as the Integer, Float, and Double variants).  */
	inline static public var AL_DEFERRED_UPDATES_SOFT:Int = 49154;
/** Function address.  */
	public var DeferUpdatesSOFT:haxe.Int64;
/** Function address.  */
	public var ProcessUpdatesSOFT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Resumes updates.
 * 
 * <p>Once called, all pending deferred updates will be processed. Any following state changes will also apply as normal.</p>
 */
	static public function alProcessUpdatesSOFT():Void;
/** Returns the {@link SOFTDeferredUpdates} instance for the current context.  */
	static public function getInstance():org.lwjgl.openal.SOFTDeferredUpdates;
/** JNI method for {@link #alDeferUpdatesSOFT DeferUpdatesSOFT}  */
	static public function nalDeferUpdatesSOFT(__functionAddress:haxe.Int64):Void;
/**
 * Sometimes it is desirable to ensure multiple state changes take effect at the same time. Normally this isn't possible due to the AL processing updates
 * asychronously, so the playback state can be updated with only part of the changes having been specified. An application can prevent these updates by
 * calling this function.
 * 
 * <p>When called, samples will continue to render and be sent to the output device, but the effects of changing playback properties, such as the source or
 * listener gain, or auxiliary slot gain or effect if EFX is supported, among others, will be deferred. Multiple changes can be batched so that they all
 * apply at once at a later time.</p>
 */
	static public function alDeferUpdatesSOFT():Void;
/** JNI method for {@link #alProcessUpdatesSOFT ProcessUpdatesSOFT}  */
	static public function nalProcessUpdatesSOFT(__functionAddress:haxe.Int64):Void;

}
