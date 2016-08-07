package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.APIUtil")
@:final
/**
 * Utility class useful to API bindings.
 * <p/>
 * Method names in this class are prefixed with {@code api} to avoid ambiguities when used with static imports.
 */
extern class APIUtil 
{
/**
 * Parses a version string. The version string must have the format {@code MAJOR.MINOR.REVISION IMPL}, where {@code MAJOR} is the major version (integer),
 * {@code MINOR} is the minor version (integer), {@code REVISION} is the revision version (string, optional) and {@code IMPL} is implementation-specific
 * information (string, optional).
 *
 * @param version the API version string
 *
 * @return the parsed {@link APIVersion}
 */
/**
 * Parses a version string. The version string must have the format {@code PREFIX MAJOR.MINOR.REVISION IMPL}, where {@code PREFIX} is the specified prefix
 * (string, optional), {@code MAJOR} is the major version (integer), {@code MINOR} is the minor version (integer), {@code REVISION} is the revision version
 * (string, optional) and {@code IMPL} is implementation-specific information (string, optional).
 *
 * @param version the version string
 * @param prefix  the version string prefix, may be null
 *
 * @return the parsed {@link APIVersion}
 */
	static public function apiParseVersion(version:String,prefix:String):org.lwjgl.system.APIUtil_APIVersion;
	@:overload(function (version:String):org.lwjgl.system.APIUtil_APIVersion {})
/** Returns a resetted thread-local {@link APIBuffer}.  */
	static public function apiBuffer():org.lwjgl.system.APIBuffer;
	static public function apiCreateLibrary(name:String):org.lwjgl.system.DynamicLinkLibrary;
/**
 * Returns a thread-local {@link APIBuffer}, without resetting it. This makes the APIBuffer work like a stack when used in nested API calls. The user is
 * responsible for resetting the {@link APIBuffer} to an appropriate state before the nested call returns.
 *
 * @see APIBuffer#pop
 */
	static public function apiStack():org.lwjgl.system.APIBuffer;

}
