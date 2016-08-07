package org.lwjgl;

import java.StdTypes;
@:native("org.lwjgl.Pointer")
/**
 * Pointer interface.
 * <p/>
 * LWJGL can run on both 32bit and 64bit architectures. Since LWJGL applications deal with native memory directly, this interface provides necessary information
 * about the underlying architecture of the running JVM process.
 * <p/>
 * When interacting with native functions, pointer values are mapped to Java {@code long}. LWJGL automatically converts long values to the correct pointer
 * addresses when used in native code. Native functions sometimes require arrays of pointer values; the {@link PointerBuffer} class may be used for that
 * purpose. It has an API similar to a {@link java.nio.LongBuffer} but handles pointer casts automatically.
 */
extern interface Pointer
{
/**
 * Returns the raw pointer address as a {@code long} value.
 *
 * @return the pointer address
 */
	public function getPointer():haxe.Int64;

}
