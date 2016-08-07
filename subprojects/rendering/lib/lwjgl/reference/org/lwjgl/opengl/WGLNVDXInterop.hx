package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLNVDXInterop")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/DX_interop.txt">WGL_NV_DX_interop</a> extension.
 * 
 * <p>This extension allows OpenGL to directly access DirectX buffers and surfaces. A DirectX vertex buffer may be shared as an OpenGL buffer object and a
 * DirectX surface may be shared as an OpenGL texture or renderbuffer object.</p>
 * 
 * <p>Requires {@link GL21 OpenGL 2.1}.</p>
 */
extern class WGLNVDXInterop 
{
/** Accepted by the {@code access} parameters of {@link #wglDXRegisterObjectNV DXRegisterObjectNV} and {@link #wglDXObjectAccessNV DXObjectAccessNV}.  */
	inline static public var WGL_ACCESS_READ_ONLY_NV:Int = 0;
/** Accepted by the {@code access} parameters of {@link #wglDXRegisterObjectNV DXRegisterObjectNV} and {@link #wglDXObjectAccessNV DXObjectAccessNV}.  */
	inline static public var WGL_ACCESS_READ_WRITE_NV:Int = 1;
/** Accepted by the {@code access} parameters of {@link #wglDXRegisterObjectNV DXRegisterObjectNV} and {@link #wglDXObjectAccessNV DXObjectAccessNV}.  */
	inline static public var WGL_ACCESS_WRITE_DISCARD_NV:Int = 2;
/** Function address.  */
	public var DXSetResourceShareHandleNV:haxe.Int64;
/** Function address.  */
	public var DXOpenDeviceNV:haxe.Int64;
/** Function address.  */
	public var DXCloseDeviceNV:haxe.Int64;
/** Function address.  */
	public var DXRegisterObjectNV:haxe.Int64;
/** Function address.  */
	public var DXUnregisterObjectNV:haxe.Int64;
/** Function address.  */
	public var DXObjectAccessNV:haxe.Int64;
/** Function address.  */
	public var DXLockObjectsNV:haxe.Int64;
/** Function address.  */
	public var DXUnlockObjectsNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #wglDXUnlockObjectsNV DXUnlockObjectsNV}  */
/** JNI method for {@link #wglDXUnlockObjectsNV DXUnlockObjectsNV}  */
	static public function nwglDXUnlockObjectsNV(device:haxe.Int64,count:Int,objects:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (device:haxe.Int64,count:Int,objects:haxe.Int64):Int {})
/** Unsafe version of {@link #wglDXLockObjectsNV DXLockObjectsNV}  */
/** JNI method for {@link #wglDXLockObjectsNV DXLockObjectsNV}  */
	static public function nwglDXLockObjectsNV(device:haxe.Int64,count:Int,objects:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (device:haxe.Int64,count:Int,objects:haxe.Int64):Int {})
/**
 * Modifies the access mode of an interop object, if a different access mode is required after the object has been registered.
 *
 * @param object the GL/DirectX interop object
 * @param access the new access mode. One of:<br>{@link #WGL_ACCESS_READ_ONLY_NV ACCESS_READ_ONLY_NV}, {@link #WGL_ACCESS_READ_WRITE_NV ACCESS_READ_WRITE_NV}, {@link #WGL_ACCESS_WRITE_DISCARD_NV ACCESS_WRITE_DISCARD_NV}
 */
	static public function wglDXObjectAccessNV(object:haxe.Int64,access:Int):Int;
/**
 * 
 *
 * @param dxObject    a pointer to the DirectX resource that will be shared
 * @param shareHandle the share handle that the OS generated for the resource
 */
	static public function wglDXSetResourceShareHandleNV(dxObject:haxe.Int64,shareHandle:haxe.Int64):Int;
/** JNI method for {@link #wglDXUnregisterObjectNV DXUnregisterObjectNV}  */
	static public function nwglDXUnregisterObjectNV(device:haxe.Int64,object:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Alternative version of: {@link #wglDXLockObjectsNV DXLockObjectsNV}  */
/**
 * Before a GL object which is associated with a DirectX resource may be used, it must be locked with this function.
 * 
 * <p>A return value of TRUE indicates that all objects were successfully locked.  A return value of FALSE indicates an error. If the function returns FALSE,
 * none of the objects will be locked.</p>
 * 
 * <p>Attempting to access an interop object via GL when the object is not locked, or attempting to access the DirectX resource through the DirectX API when
 * it is locked by GL, will result in undefined behavior and may result in data corruption or program termination. Likewise, passing invalid interop device
 * or object handles to this function has undefined results, including program termination.</p>
 *
 * @param device  the GL/DirectX interop device handle
 * @param count   the number of objects to lock
 * @param objects an array of {@code count} interop objects
 */
	static public function wglDXLockObjectsNV(device:haxe.Int64,count:Int,objects:java.nio.ByteBuffer):Int;
	@:overload(function (device:haxe.Int64,objects:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #wglDXSetResourceShareHandleNV DXSetResourceShareHandleNV}  */
	static public function nwglDXSetResourceShareHandleNV(dxObject:haxe.Int64,shareHandle:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * 
 *
 * @param device 
 * @param object 
 */
	static public function wglDXUnregisterObjectNV(device:haxe.Int64,object:haxe.Int64):Int;
/**
 * 
 *
 * @param device 
 */
	static public function wglDXCloseDeviceNV(device:haxe.Int64):Int;
/** JNI method for {@link #wglDXObjectAccessNV DXObjectAccessNV}  */
	static public function nwglDXObjectAccessNV(object:haxe.Int64,access:Int,__functionAddress:haxe.Int64):Int;
/** JNI method for {@link #wglDXOpenDeviceNV DXOpenDeviceNV}  */
	static public function nwglDXOpenDeviceNV(dxDevice:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
/** Returns the {@link WGLNVDXInterop} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLNVDXInterop;
/**
 * Prepares a DirectX device for interoperability and returns a handle to a GL/DirectX interop device.
 *
 * @param dxDevice a pointer to a supported Direct3D device object
 */
	static public function wglDXOpenDeviceNV(dxDevice:haxe.Int64):haxe.Int64;
/** JNI method for {@link #wglDXRegisterObjectNV DXRegisterObjectNV}  */
	static public function nwglDXRegisterObjectNV(device:haxe.Int64,dxResource:haxe.Int64,name:Int,type:Int,access:Int,__functionAddress:haxe.Int64):haxe.Int64;
/**
 * Prepares a DirectX object for use by the GL and returns a handle to a GL/DirectX interop object.
 *
 * @param device     a GL/DirectX interop device handle, as returned by {@link #wglDXOpenDeviceNV DXOpenDeviceNV}
 * @param dxResource a pointer to a DirectX resource to be registered with the GL
 * @param name       the GL object name to be assigned to the DirectX resource in the namespace of the objects identified by {@code type} in the current GL context
 * @param type       the GL object type that will map to the DirectX resource being shared
 * @param access     indicates the intended usage of the resource in GL. One of:<br>{@link #WGL_ACCESS_READ_ONLY_NV ACCESS_READ_ONLY_NV}, {@link #WGL_ACCESS_READ_WRITE_NV ACCESS_READ_WRITE_NV}, {@link #WGL_ACCESS_WRITE_DISCARD_NV ACCESS_WRITE_DISCARD_NV}
 */
	static public function wglDXRegisterObjectNV(device:haxe.Int64,dxResource:haxe.Int64,name:Int,type:Int,access:Int):haxe.Int64;
/** JNI method for {@link #wglDXCloseDeviceNV DXCloseDeviceNV}  */
	static public function nwglDXCloseDeviceNV(device:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Alternative version of: {@link #wglDXUnlockObjectsNV DXUnlockObjectsNV}  */
/**
 * Return control of an object to DirectX.
 *
 * @param device  the GL/DirectX interop device handle
 * @param count   the number of objects to unlock
 * @param objects an array of {@code count} interop objects
 */
	static public function wglDXUnlockObjectsNV(device:haxe.Int64,count:Int,objects:java.nio.ByteBuffer):Int;
	@:overload(function (device:haxe.Int64,objects:org.lwjgl.PointerBuffer):Int {})

}
