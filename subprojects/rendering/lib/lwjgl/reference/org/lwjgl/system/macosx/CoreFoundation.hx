package org.lwjgl.system.macosx;

import java.StdTypes;
@:native("org.lwjgl.system.macosx.CoreFoundation")
@:final
/** Native bindings to &lt;CoreFoundation.h&gt;.  */
extern class CoreFoundation 
{
/** Boolean values.  */
	inline static public var TRUE:Int8 = 1;
/** Boolean values.  */
	inline static public var FALSE:Int8 = 0;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingMacRoman:Int = 0;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingWindowsLatin1:Int = 1280;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingISOLatin1:Int = 513;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingNextStepLatin:Int = 2817;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingASCII:Int = 1536;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingUnicode:Int = 256;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingUTF8:Int = 134217984;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingNonLossyASCII:Int = 3071;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingUTF16:Int = 256;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingUTF16BE:Int = 268435712;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingUTF16LE:Int = 335544576;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingUTF32:Int = 201326848;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingUTF32BE:Int = 402653440;
/** Platform-independent built-in encodings; always available on all platforms.  */
	inline static public var kCFStringEncodingUTF32LE:Int = 469762304;
/** URL path styles.  */
	inline static public var kCFURLPOSIXPathStyle:Int = 0;
/** URL path styles.  */
	inline static public var kCFURLHFSPathStyle:Int = 1;
/** URL path styles.  */
	inline static public var kCFURLWindowsPathStyle:Int = 2;
/**
 * Null allocator which does nothing and allocates no memory. This allocator is useful as the "bytesDeallocator" in {@code CFData} or "contentsDeallocator"
 * in {@code CFString} where the memory should not be freed.
 */
	static public function kCFAllocatorNull():haxe.Int64;
/** JNI method for {@link #CFStringCreateWithCString}  */
	static public function nCFStringCreateWithCString(allocator:haxe.Int64,cStr:haxe.Int64,encoding:Int):haxe.Int64;
/** JNI method for {@link #CFURLCreateWithFileSystemPath}  */
	static public function nCFURLCreateWithFileSystemPath(allocator:haxe.Int64,filePath:haxe.Int64,pathStyle:haxe.Int64,isDirectory:Int8):haxe.Int64;
/** Default system allocator; you rarely need to use this.  */
	static public function kCFAllocatorSystemDefault():haxe.Int64;
/**
 * This allocator uses {@code malloc()}, {@code realloc()}, and {@code free()}. This should not be generally used; stick to {@link #kCFAllocatorDefault}
 * whenever possible. This allocator is useful as the "bytesDeallocator" in {@code CFData} or "contentsDeallocator" in {@code CFString} where the memory
 * was obtained as a result of {@code malloc()} type functions.
 */
	static public function kCFAllocatorMalloc():haxe.Int64;
/**
 * Creates a {@code CFURL} object using a local file system path string.
 *
 * @param allocator   the allocator to use to allocate memory for the new object. Pass {@code NULL} or {@code kCFAllocatorDefault} to use the current default allocator.
 * @param filePath    the path string to convert to a {@code CFURL} object. If {@code filePath} is not absolute, the resulting URL will be considered relative to the
 *                    current working directory (evaluated when this function is being invoked).
 * @param pathStyle   the operating system path style used in {@code filePath}
 * @param isDirectory a Boolean value that specifies whether filePath is treated as a directory path when resolving against relative path components. Pass true if the
 *                    pathname indicates a directory, false otherwise.
 */
	static public function CFURLCreateWithFileSystemPath(allocator:haxe.Int64,filePath:haxe.Int64,pathStyle:haxe.Int64,isDirectory:Int8):haxe.Int64;
/**
 * This allocator explicitly uses the default malloc zone, returned by {@code malloc_default_zone()}. It should only be used when an object is safe to be
 * allocated in non-scanned memory.
 */
	static public function kCFAllocatorMallocZone():haxe.Int64;
/** Special allocator argument to {@link #CFAllocatorCreate} which means "use the functions given in the context to allocate the allocator itself as well".  */
	static public function kCFAllocatorUseContext():haxe.Int64;
/**
 * Returns a pointer to a function in a bundle’s executable code using the function name as the search key.
 *
 * @param bundle       the bundle to examine
 * @param functionName the name of the function to locate
 */
	static public function CFBundleGetFunctionPointerForName(bundle:haxe.Int64,functionName:haxe.Int64):haxe.Int64;
/** JNI method for {@link #CFRetain}  */
	static public function nCFRetain(cf:haxe.Int64):haxe.Int64;
/** JNI method for {@link #CFBundleCreate}  */
	static public function nCFBundleCreate(allocator:haxe.Int64,bundleURL:haxe.Int64):haxe.Int64;
/** JNI method for {@link #CFStringCreateWithCStringNoCopy}  */
	static public function nCFStringCreateWithCStringNoCopy(allocator:haxe.Int64,cStr:haxe.Int64,encoding:Int,contentsDeallocator:haxe.Int64):haxe.Int64;
/**
 * Creates an immutable string from a C string.
 *
 * @param allocator the allocator to use to allocate memory for the new object. Pass {@code NULL} or {@code kCFAllocatorDefault} to use the current default allocator.
 * @param cStr      the NULL-terminated C string to be used to create the {@code CFString} object. The string must use an 8-bit encoding.
 * @param encoding  the encoding of the characters in the C string. The encoding must specify an 8-bit encoding.
 */
	static public function CFStringCreateWithCString(allocator:haxe.Int64,cStr:java.nio.ByteBuffer,encoding:Int):haxe.Int64;
/**
 * Releases a Core Foundation object.
 * 
 * <p>If the retain count of {@code cf} becomes zero the memory allocated to the object is deallocated and the object is destroyed. If you create, copy, or
 * explicitly retain (see the {@link #CFRetain} function) a Core Foundation object, you are responsible for releasing it when you no longer need it.</p>
 *
 * @param cf the CFType object to release
 */
	static public function CFRelease(cf:haxe.Int64):Void;
/** JNI method for {@link #CFRelease}  */
	static public function nCFRelease(cf:haxe.Int64):Void;
/** This is a synonym for {@code NULL}, if you'd rather use a named constant.  */
	static public function kCFAllocatorDefault():haxe.Int64;
/**
 * Creates a CFString object from an external C string buffer that might serve as the backing store for the object.
 *
 * @param allocator           the allocator to use to allocate memory for the new object. Pass {@code NULL} or {@code kCFAllocatorDefault} to use the current default allocator.
 * @param cStr                the NULL-terminated C string to be used to create the {@code CFString} object. The string must use an 8-bit encoding.
 * @param encoding            the encoding of the characters in the C string. The encoding must specify an 8-bit encoding.
 * @param contentsDeallocator the {@code CFAllocator} object to use to deallocate the external string buffer when it is no longer needed. You can pass {@code NULL} or
 *                            {@code kCFAllocatorDefault} to request the default allocator for this purpose. If the buffer does not need to be deallocated, or if you want to
 *                            assume responsibility for deallocating the buffer (and not have the {@code CFString} object deallocate it), pass {@code kCFAllocatorNull}.
 */
	static public function CFStringCreateWithCStringNoCopy(allocator:haxe.Int64,cStr:java.nio.ByteBuffer,encoding:Int,contentsDeallocator:haxe.Int64):haxe.Int64;
/**
 * Creates a {@code CFBundle} object.
 *
 * @param allocator the allocator to use to allocate memory for the new object. Pass {@code NULL} or {@code kCFAllocatorDefault} to use the current default allocator.
 * @param bundleURL the location of the bundle for which to create a {@code CFBundle} object
 */
	static public function CFBundleCreate(allocator:haxe.Int64,bundleURL:haxe.Int64):haxe.Int64;
/**
 * Retains a Core Foundation object.
 * 
 * <p>You should retain a Core Foundation object when you receive it from elsewhere (that is, you did not create or copy it) and you want it to persist. If
 * you retain a Core Foundation object you are responsible for releasing it.</p>
 *
 * @param cf the CFType object to retain
 */
	static public function CFRetain(cf:haxe.Int64):haxe.Int64;
/** JNI method for {@link #CFBundleGetFunctionPointerForName}  */
	static public function nCFBundleGetFunctionPointerForName(bundle:haxe.Int64,functionName:haxe.Int64):haxe.Int64;

}
