package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.ALCCapabilities")
@:final
/** Defines the capabilities of the OpenAL Context API.  */
extern class ALCCapabilities 
{
/** Indicates whether an ALC functionality is available or not.  */
	public var OpenALC10:Bool;
/** Indicates whether an ALC functionality is available or not.  */
	public var OpenALC11:Bool;
/** Indicates whether an ALC functionality is available or not.  */
	public var ALC_ENUMERATE_ALL_EXT:Bool;
/** Indicates whether an ALC functionality is available or not.  */
	public var ALC_ENUMERATION_EXT:Bool;
/** Indicates whether an ALC functionality is available or not.  */
	public var ALC_EXT_DEDICATED:Bool;
/** Indicates whether an ALC functionality is available or not.  */
	public var ALC_EXT_disconnect:Bool;
/** Indicates whether an ALC functionality is available or not.  */
	public var ALC_EXT_EFX:Bool;
/** Indicates whether an ALC functionality is available or not.  */
	public var ALC_EXT_thread_local_context:Bool;
/** Indicates whether an ALC functionality is available or not.  */
	public var ALC_SOFT_loopback:Bool;
/** Indicates whether an ALC functionality is available or not.  */
	public var ALC_SOFT_pause_device:Bool;

}
