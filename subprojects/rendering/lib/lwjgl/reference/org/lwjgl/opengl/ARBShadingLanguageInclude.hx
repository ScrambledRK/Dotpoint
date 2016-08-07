package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBShadingLanguageInclude")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/shading_language_include.txt">ARB_shading_language_include</a> extension.
 * 
 * <p>This extension introduces a {@code &#35;include} GLSL directive to allow reusing the same shader text in multiple shaders and defines the semantics and syntax of
 * the names allowed in {@code &#35;include} directives. It also defines API mechanisms to define the named string backing a {@code &#35;include}.</p>
 * 
 * <h3>Introduction</h3>
 * 
 * <p>The GLSL {@code &#35;include} mechanism looks up paths in a tree built through the OpenGL API. This appendix describes the syntax and semantic model of the tree and
 * paths into the tree. How the tree is used is up to users of the tree, like the OpenGL API or GLSL.</p>
 * 
 * <h3>The Tree</h3>
 * 
 * <p>The tree is a singly rooted hierarchy of tree locations. The root may have one or more child locations, and any location may in turn have its own
 * children. Except for the root, each location has exactly one parent; the root has no parent.</p>
 * 
 * <h3>Paths into the Tree</h3>
 * 
 * <p>The locations in the tree are created or looked up by path strings. The path string "/" locates the root of the tree. The path "/foo" locates the child
 * "foo" of the root. Formally, a valid path is a sequence of tokens delimited by the beginning of the string, by the path-separator forward slash ( / ),
 * and by the end of the string. The string "foo/bar" has two tokens; "foo" and "bar". The string "/foo/./bar" has 3 tokens; "foo", ".", and "bar". The
 * string "/foo/.." has two tokens; "foo" and "..". The string "/foo/.bar" has two tokens; "foo" and ".bar". A path is invalid if
 * <ul>
 * <li>{@code path} contains any characters not listed in Section 3.1 "Character Set", or the double quote character, or angled brackets, or any white
 * space characters other than the space character.</li>
 * <li>{@code path} has consecutive forward slashes ( // ); "/foo//bar" is not valid (zero length tokens are not allowed).</li>
 * <li>{@code path} ends with a forward slash ( / )</li>
 * <li>{@code path} contains no characters.</li>
 * </ul>
 * There are no path escape characters, so there is no way to get the forward slash delimiter within a single token.</p>
 * 
 * <p>When using a path to lookup a tree location, the path tokens are used to walk the tree. The initial location to start the walk is specified by the user
 * of the tree and is updated as follows by the tokens in the path. (Paths starting with "/" will start at the root.) Taken left to right:</p>
 * 
 * <p>The token ".." walks to the parent. Or, if already at the root, then the location remains at the root.</p>
 * 
 * <p>The token "." leaves the location unchanged.</p>
 * 
 * <p>Any other token is considered the name of a child of the current location, and walks to that child. (If there is no child of that name, this may result
 * in a failed lookup or in the child being created, as specified by the user of the tree for the operation being performed.)</p>
 * 
 * <h3>Associated Strings</h3>
 * 
 * <p>Each location in the tree can have an additional string associated with it (that a user like the {@code &#35;include} mechanism can use as an included string). This
 * is true even for locations that have children: "/foo/bar" can exist in the tree at the same time that "/foo" has an additional string associated with
 * it. Typically, when a path is used to find a location in the tree, it is for the purpose of returning this associated string.</p>
 * 
 * <p>Hence, the tree can be built from a collection of (path,string) pairs, where path is a string establishing the existence of a location in the tree and
 * string is the string associated with the node. Details of how to do this are specified by the user of the tree.</p>
 * 
 * <p>Requires GLSL 1.10.</p>
 */
extern class ARBShadingLanguageInclude 
{
/** Accepted by the {@code type} parameter of NamedStringARB.  */
	inline static public var GL_SHADER_INCLUDE_ARB:Int = 36270;
/** Accepted by the {@code pname} parameter of GetNamedStringivARB.  */
	inline static public var GL_NAMED_STRING_LENGTH_ARB:Int = 36329;
/** Accepted by the {@code pname} parameter of GetNamedStringivARB.  */
	inline static public var GL_NAMED_STRING_TYPE_ARB:Int = 36330;
/** Function address.  */
	public var NamedStringARB:haxe.Int64;
/** Function address.  */
	public var DeleteNamedStringARB:haxe.Int64;
/** Function address.  */
	public var CompileShaderIncludeARB:haxe.Int64;
/** Function address.  */
	public var IsNamedStringARB:haxe.Int64;
/** Function address.  */
	public var GetNamedStringARB:haxe.Int64;
/** Function address.  */
	public var GetNamedStringivARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glDeleteNamedStringARB DeleteNamedStringARB}  */
/** JNI method for {@link #glDeleteNamedStringARB DeleteNamedStringARB}  */
	static public function nglDeleteNamedStringARB(namelen:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (namelen:Int,name:haxe.Int64):Void {})
/** CharSequence version of: {@link #glDeleteNamedStringARB DeleteNamedStringARB}  */
/** Alternative version of: {@link #glDeleteNamedStringARB DeleteNamedStringARB}  */
/**
 * Deletes a named string.
 *
 * @param namelen the number of characters in {@code name}. If negative, {@code name} is considered to be a null-terminated string.
 * @param name    the name associated with the string
 */
	static public function glDeleteNamedStringARB(namelen:Int,name:java.nio.ByteBuffer):Void;
	@:overload(function (name:java.lang.CharSequence):Void {})
	@:overload(function (name:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetNamedStringARB GetNamedStringARB}  */
/** JNI method for {@link #glGetNamedStringARB GetNamedStringARB}  */
	static public function nglGetNamedStringARB(namelen:Int,name:haxe.Int64,bufSize:Int,stringlen:haxe.Int64,string:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (namelen:Int,name:haxe.Int64,bufSize:Int,stringlen:haxe.Int64,string:haxe.Int64):Void {})
/** CharSequence version of: {@link #glIsNamedStringARB IsNamedStringARB}  */
/** Alternative version of: {@link #glIsNamedStringARB IsNamedStringARB}  */
/**
 * Returns {@link GL11#GL_TRUE TRUE} if the tree location corresponding to {@code name} has a string associated with it, and {@link GL11#GL_FALSE FALSE} if the tree location has no string
 * associated with it.
 *
 * @param namelen the number of characters in {@code name}. If negative, {@code name} is considered to be a null-terminated string.
 * @param name    the name associated with the string
 */
	static public function glIsNamedStringARB(namelen:Int,name:java.nio.ByteBuffer):Bool;
	@:overload(function (name:java.lang.CharSequence):Bool {})
	@:overload(function (name:java.nio.ByteBuffer):Bool {})
/** Single return value version of: {@link #glGetNamedStringivARB GetNamedStringivARB}  */
	static public function glGetNamedStringiARB(name:java.lang.CharSequence,pname:Int):Int;
/** String return (w/ implicit max length) version of: {@link #glGetNamedStringARB GetNamedStringARB}  */
/** String return version of: {@link #glGetNamedStringARB GetNamedStringARB}  */
/** CharSequence version of: {@link #glGetNamedStringARB GetNamedStringARB}  */
/** Alternative version of: {@link #glGetNamedStringARB GetNamedStringARB}  */
/**
 * Returns in {@code string} the string corresponding to the specified {@code name}. The returned string will be null-terminated.
 *
 * @param namelen   the number of characters in {@code name}. If negative, {@code name} is considered to be a null-terminated string.
 * @param name      the name associated with the string
 * @param bufSize   the maximum number of characters that may be written into {@code string}, including the null terminator
 * @param stringlen a buffer in which to place the actual number of characters written into {@code string}, excluding the null terminator. If {@code NULL}, no length is
 *                  returned.
 * @param string    a buffer in which to place the returned string
 */
	static public function glGetNamedStringARB(namelen:Int,name:java.nio.ByteBuffer,bufSize:Int,stringlen:java.nio.ByteBuffer,string:java.nio.ByteBuffer):Void;
	@:overload(function (name:java.lang.CharSequence):String {})
	@:overload(function (name:java.lang.CharSequence,bufSize:Int):String {})
	@:overload(function (name:java.lang.CharSequence,stringlen:java.nio.IntBuffer,string:java.nio.ByteBuffer):Void {})
	@:overload(function (name:java.nio.ByteBuffer,stringlen:java.nio.IntBuffer,string:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glCompileShaderIncludeARB CompileShaderIncludeARB}  */
/** JNI method for {@link #glCompileShaderIncludeARB CompileShaderIncludeARB}  */
	static public function nglCompileShaderIncludeARB(shader:Int,count:Int,path:haxe.Int64,length:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (shader:Int,count:Int,path:haxe.Int64,length:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetNamedStringivARB GetNamedStringivARB}  */
/** JNI method for {@link #glGetNamedStringivARB GetNamedStringivARB}  */
	static public function nglGetNamedStringivARB(namelen:Int,name:haxe.Int64,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (namelen:Int,name:haxe.Int64,pname:Int,params:haxe.Int64):Void {})
/** CharSequence version of: {@link #glGetNamedStringivARB GetNamedStringivARB}  */
/** Alternative version of: {@link #glGetNamedStringivARB GetNamedStringivARB}  */
/**
 * Returns properties of the named string whose tree location corresponds to {@code name}.
 *
 * @param namelen the number of characters in {@code name}. If negative, {@code name} is considered to be a null-terminated string.
 * @param name    the name associated with the string
 * @param pname   the parameter to query. One of:<br>{@link #GL_NAMED_STRING_LENGTH_ARB NAMED_STRING_LENGTH_ARB}, {@link #GL_NAMED_STRING_TYPE_ARB NAMED_STRING_TYPE_ARB}
 * @param params  a buffer in which to place the returned value
 */
	static public function glGetNamedStringivARB(namelen:Int,name:java.nio.ByteBuffer,pname:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (name:java.lang.CharSequence,pname:Int,params:java.nio.IntBuffer):Void {})
	@:overload(function (name:java.nio.ByteBuffer,pname:Int,params:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glIsNamedStringARB IsNamedStringARB}  */
/** JNI method for {@link #glIsNamedStringARB IsNamedStringARB}  */
	static public function nglIsNamedStringARB(namelen:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Bool;
	@:overload(function (namelen:Int,name:haxe.Int64):Bool {})
/** Unsafe version of {@link #glNamedStringARB NamedStringARB}  */
/** JNI method for {@link #glNamedStringARB NamedStringARB}  */
	static public function nglNamedStringARB(type:Int,namelen:Int,name:haxe.Int64,stringlen:Int,string:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,namelen:Int,name:haxe.Int64,stringlen:Int,string:haxe.Int64):Void {})
/** Returns the {@link ARBShadingLanguageInclude} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBShadingLanguageInclude;
/** Alternative version of: {@link #glCompileShaderIncludeARB CompileShaderIncludeARB}  */
/**
 * Compiles a shader object.
 * 
 * <p>The ordered list of {@code path}s is used during compilation, together with the arguments of {@code &#35;include} directives in the shader source, to search for
 * named strings corresponding to the {@code &#35;include} directives. If a {@code &#35;include} directive does not correspond to a valid named string, compilation will fail.</p>
 *
 * @param shader the shader object compile
 * @param count  
 * @param path   an ordered array of {@code count} pointers to optionally null-terminated character strings defining search paths
 * @param length an array {@code count} values with the number of characters in each string (the string length). If an element in {@code length} is negative, its
 *               accompanying string is null-terminated. If {@code length} is {@code NULL}, all strings in the {@code path} argument are considered null-terminated.
 */
	static public function glCompileShaderIncludeARB(shader:Int,count:Int,path:java.nio.ByteBuffer,length:java.nio.ByteBuffer):Void;
	@:overload(function (shader:Int,path:org.lwjgl.PointerBuffer,length:java.nio.IntBuffer):Void {})
/** CharSequence version of: {@link #glNamedStringARB NamedStringARB}  */
/** Alternative version of: {@link #glNamedStringARB NamedStringARB}  */
/**
 * Specifies a string and its name. Such strings can be included by name in shaders during compilation, allowing reuse of the same code segments.
 * 
 * <p>After calling NamedStringARB, the contents of {@code string} are associated with the tree location corresponding to {@code name}. If a string is already
 * associated with that tree location, it will be replaced with the new {@code string}.</p>
 *
 * @param type      the string type. Must be:<br>{@link #GL_SHADER_INCLUDE_ARB SHADER_INCLUDE_ARB}
 * @param namelen   the number of characters in {@code name}. If negative, {@code name} is considered to be a null-terminated string.
 * @param name      the name associated with the string
 * @param stringlen the number of characters in {@code string}. If negative, {@code string} is considered to be a null-terminated string.
 * @param string    an arbitrary string of characters
 */
	static public function glNamedStringARB(type:Int,namelen:Int,name:java.nio.ByteBuffer,stringlen:Int,string:java.nio.ByteBuffer):Void;
	@:overload(function (type:Int,name:java.lang.CharSequence,string:java.lang.CharSequence):Void {})
	@:overload(function (type:Int,name:java.nio.ByteBuffer,string:java.nio.ByteBuffer):Void {})

}
