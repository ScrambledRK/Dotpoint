package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBMultitexture")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/multitexture.txt">ARB_multitexture</a> extension.
 * 
 * <p>This extension allows application of multiple textures to a fragment in one rendering pass.</p>
 * 
 * <p>Promoted to core in {@link GL13 OpenGL 1.3}.</p>
 */
extern class ARBMultitexture 
{
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE0_ARB:Int = 33984;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE1_ARB:Int = 33985;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE2_ARB:Int = 33986;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE3_ARB:Int = 33987;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE4_ARB:Int = 33988;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE5_ARB:Int = 33989;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE6_ARB:Int = 33990;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE7_ARB:Int = 33991;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE8_ARB:Int = 33992;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE9_ARB:Int = 33993;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE10_ARB:Int = 33994;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE11_ARB:Int = 33995;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE12_ARB:Int = 33996;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE13_ARB:Int = 33997;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE14_ARB:Int = 33998;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE15_ARB:Int = 33999;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE16_ARB:Int = 34000;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE17_ARB:Int = 34001;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE18_ARB:Int = 34002;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE19_ARB:Int = 34003;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE20_ARB:Int = 34004;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE21_ARB:Int = 34005;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE22_ARB:Int = 34006;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE23_ARB:Int = 34007;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE24_ARB:Int = 34008;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE25_ARB:Int = 34009;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE26_ARB:Int = 34010;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE27_ARB:Int = 34011;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE28_ARB:Int = 34012;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE29_ARB:Int = 34013;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE30_ARB:Int = 34014;
/** Accepted by the {@code texture} parameter of ActiveTexture and MultiTexCoord.  */
	inline static public var GL_TEXTURE31_ARB:Int = 34015;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_ACTIVE_TEXTURE_ARB:Int = 34016;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_CLIENT_ACTIVE_TEXTURE_ARB:Int = 34017;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_TEXTURE_UNITS_ARB:Int = 34018;
/** Function address.  */
	public var ActiveTextureARB:haxe.Int64;
/** Function address.  */
	public var ClientActiveTextureARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1fARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1sARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1iARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1dARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1fvARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1svARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1ivARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord1dvARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2fARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2sARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2iARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2dARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2fvARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2svARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2ivARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord2dvARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3fARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3sARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3iARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3dARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3fvARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3svARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3ivARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord3dvARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4fARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4sARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4iARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4dARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4fvARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4svARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4ivARB:haxe.Int64;
/** Function address.  */
	public var MultiTexCoord4dvARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Pointer version of {@link #glMultiTexCoord3dARB MultiTexCoord3dARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord3dvARB MultiTexCoord3dvARB}  */
	static public function glMultiTexCoord3dvARB(texture:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexCoord4svARB MultiTexCoord4svARB}  */
/** JNI method for {@link #glMultiTexCoord4svARB MultiTexCoord4svARB}  */
	static public function nglMultiTexCoord4svARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexCoord1iARB MultiTexCoord1iARB}  */
	static public function nglMultiTexCoord1iARB(texture:Int,s:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMultiTexCoord4dARB MultiTexCoord4dARB}  */
	static public function nglMultiTexCoord4dARB(texture:Int,s:Float,t:Float,r:Float,q:Float,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version of {@link #glMultiTexCoord2fARB MultiTexCoord2fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord2fvARB MultiTexCoord2fvARB}  */
	static public function glMultiTexCoord2fvARB(texture:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Sets the current four-dimensional texture coordinate for the specified texture coordinate set.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 * @param q       the q component of the current texture coordinates
 */
	static public function glMultiTexCoord4fARB(texture:Int,s:Float,t:Float,r:Float,q:Float):Void;
/** JNI method for {@link #glMultiTexCoord4sARB MultiTexCoord4sARB}  */
	static public function nglMultiTexCoord4sARB(texture:Int,s:Int16,t:Int16,r:Int16,q:Int16,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMultiTexCoord3dARB MultiTexCoord3dARB}  */
	static public function nglMultiTexCoord3dARB(texture:Int,s:Float,t:Float,r:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glMultiTexCoord2dvARB MultiTexCoord2dvARB}  */
/** JNI method for {@link #glMultiTexCoord2dvARB MultiTexCoord2dvARB}  */
	static public function nglMultiTexCoord2dvARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * Short version of {@link #glMultiTexCoord2fARB MultiTexCoord2fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 */
	static public function glMultiTexCoord2sARB(texture:Int,s:Int16,t:Int16):Void;
/** Unsafe version of {@link #glMultiTexCoord1fvARB MultiTexCoord1fvARB}  */
/** JNI method for {@link #glMultiTexCoord1fvARB MultiTexCoord1fvARB}  */
	static public function nglMultiTexCoord1fvARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glMultiTexCoord1fARB MultiTexCoord1fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord1fvARB MultiTexCoord1fvARB}  */
	static public function glMultiTexCoord1fvARB(texture:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexCoord2iARB MultiTexCoord2iARB}  */
	static public function nglMultiTexCoord2iARB(texture:Int,s:Int,t:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glClientActiveTextureARB ClientActiveTextureARB}  */
	static public function nglClientActiveTextureARB(texture:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMultiTexCoord3sARB MultiTexCoord3sARB}  */
	static public function nglMultiTexCoord3sARB(texture:Int,s:Int16,t:Int16,r:Int16,__functionAddress:haxe.Int64):Void;
/**
 * Sets the current three-dimensional texture coordinate for the specified texture coordinate set. {@code q} is implicitly set to 1.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 */
	static public function glMultiTexCoord3fARB(texture:Int,s:Float,t:Float,r:Float):Void;
/**
 * Short version of {@link #glMultiTexCoord1fARB MultiTexCoord1fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 */
	static public function glMultiTexCoord1sARB(texture:Int,s:Int16):Void;
/**
 * Sets the current two-dimensional texture coordinate for the specified texture coordinate set. {@code r} is implicitly set to 0 and {@code q} to 1.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 */
	static public function glMultiTexCoord2fARB(texture:Int,s:Float,t:Float):Void;
/**
 * Short version of {@link #glMultiTexCoord3fARB MultiTexCoord3fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 */
	static public function glMultiTexCoord3sARB(texture:Int,s:Int16,t:Int16,r:Int16):Void;
/**
 * Selects the vertex array client state parameters to be modified by the TexCoordPointer command and the array affected by EnableClientState and
 * DisableClientState with parameter TEXTURE_COORD_ARRAY.
 *
 * @param texture which texture coordinate array to make active. One of:<br>{@link #GL_TEXTURE0_ARB TEXTURE0_ARB}, GL_TEXTURE[1-31]
 */
	static public function glClientActiveTextureARB(texture:Int):Void;
/** JNI method for {@link #glMultiTexCoord2sARB MultiTexCoord2sARB}  */
	static public function nglMultiTexCoord2sARB(texture:Int,s:Int16,t:Int16,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMultiTexCoord3iARB MultiTexCoord3iARB}  */
	static public function nglMultiTexCoord3iARB(texture:Int,s:Int,t:Int,r:Int,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version of {@link #glMultiTexCoord1sARB MultiTexCoord1sARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord1svARB MultiTexCoord1svARB}  */
	static public function glMultiTexCoord1svARB(texture:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexCoord2fvARB MultiTexCoord2fvARB}  */
/** JNI method for {@link #glMultiTexCoord2fvARB MultiTexCoord2fvARB}  */
	static public function nglMultiTexCoord2fvARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glMultiTexCoord4sARB MultiTexCoord4sARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord4svARB MultiTexCoord4svARB}  */
	static public function glMultiTexCoord4svARB(texture:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glActiveTextureARB ActiveTextureARB}  */
	static public function nglActiveTextureARB(texture:Int,__functionAddress:haxe.Int64):Void;
/**
 * Short version of {@link #glMultiTexCoord4fARB MultiTexCoord4fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 * @param q       the q component of the current texture coordinates
 */
	static public function glMultiTexCoord4sARB(texture:Int,s:Int16,t:Int16,r:Int16,q:Int16):Void;
/** JNI method for {@link #glMultiTexCoord1dARB MultiTexCoord1dARB}  */
	static public function nglMultiTexCoord1dARB(texture:Int,s:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glMultiTexCoord3ivARB MultiTexCoord3ivARB}  */
/** JNI method for {@link #glMultiTexCoord3ivARB MultiTexCoord3ivARB}  */
	static public function nglMultiTexCoord3ivARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexCoord1sARB MultiTexCoord1sARB}  */
	static public function nglMultiTexCoord1sARB(texture:Int,s:Int16,__functionAddress:haxe.Int64):Void;
/**
 * Sets the current one-dimensional texture coordinate for the specified texture coordinate set. {@code t} and {@code r} are implicitly set to 0 and {@code q} to 1.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 */
	static public function glMultiTexCoord1fARB(texture:Int,s:Float):Void;
/**
 * Pointer version of {@link #glMultiTexCoord2dARB MultiTexCoord2dARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord2dvARB MultiTexCoord2dvARB}  */
	static public function glMultiTexCoord2dvARB(texture:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexCoord1dvARB MultiTexCoord1dvARB}  */
/** JNI method for {@link #glMultiTexCoord1dvARB MultiTexCoord1dvARB}  */
	static public function nglMultiTexCoord1dvARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord3svARB MultiTexCoord3svARB}  */
/** JNI method for {@link #glMultiTexCoord3svARB MultiTexCoord3svARB}  */
	static public function nglMultiTexCoord3svARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexCoord4iARB MultiTexCoord4iARB}  */
	static public function nglMultiTexCoord4iARB(texture:Int,s:Int,t:Int,r:Int,q:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMultiTexCoord2dARB MultiTexCoord2dARB}  */
	static public function nglMultiTexCoord2dARB(texture:Int,s:Float,t:Float,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version of {@link #glMultiTexCoord3fARB MultiTexCoord3fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord3fvARB MultiTexCoord3fvARB}  */
	static public function glMultiTexCoord3fvARB(texture:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glMultiTexCoord4iARB MultiTexCoord4iARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord4ivARB MultiTexCoord4ivARB}  */
	static public function glMultiTexCoord4ivARB(texture:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glMultiTexCoord1iARB MultiTexCoord1iARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord1ivARB MultiTexCoord1ivARB}  */
	static public function glMultiTexCoord1ivARB(texture:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexCoord3fvARB MultiTexCoord3fvARB}  */
/** JNI method for {@link #glMultiTexCoord3fvARB MultiTexCoord3fvARB}  */
	static public function nglMultiTexCoord3fvARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * Integer version of {@link #glMultiTexCoord2fARB MultiTexCoord2fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 */
	static public function glMultiTexCoord2iARB(texture:Int,s:Int,t:Int):Void;
/** JNI method for {@link #glMultiTexCoord4fARB MultiTexCoord4fARB}  */
	static public function nglMultiTexCoord4fARB(texture:Int,s:Float,t:Float,r:Float,q:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glMultiTexCoord4dvARB MultiTexCoord4dvARB}  */
/** JNI method for {@link #glMultiTexCoord4dvARB MultiTexCoord4dvARB}  */
	static public function nglMultiTexCoord4dvARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord1ivARB MultiTexCoord1ivARB}  */
/** JNI method for {@link #glMultiTexCoord1ivARB MultiTexCoord1ivARB}  */
	static public function nglMultiTexCoord1ivARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glMultiTexCoord3iARB MultiTexCoord3iARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord3ivARB MultiTexCoord3ivARB}  */
	static public function glMultiTexCoord3ivARB(texture:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Double version of {@link #glMultiTexCoord4fARB MultiTexCoord4fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 * @param q       the q component of the current texture coordinates
 */
	static public function glMultiTexCoord4dARB(texture:Int,s:Float,t:Float,r:Float,q:Float):Void;
/** JNI method for {@link #glMultiTexCoord3fARB MultiTexCoord3fARB}  */
	static public function nglMultiTexCoord3fARB(texture:Int,s:Float,t:Float,r:Float,__functionAddress:haxe.Int64):Void;
/**
 * Selects which texture unit subsequent texture state calls will affect. The number of texture units an implementation supports is implementation
 * dependent.
 *
 * @param texture which texture unit to make active. One of:<br>{@link #GL_TEXTURE0_ARB TEXTURE0_ARB}, GL_TEXTURE[1-31]
 */
	static public function glActiveTextureARB(texture:Int):Void;
/**
 * Pointer version of {@link #glMultiTexCoord2sARB MultiTexCoord2sARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord2svARB MultiTexCoord2svARB}  */
	static public function glMultiTexCoord2svARB(texture:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexCoord2ivARB MultiTexCoord2ivARB}  */
/** JNI method for {@link #glMultiTexCoord2ivARB MultiTexCoord2ivARB}  */
	static public function nglMultiTexCoord2ivARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord4fvARB MultiTexCoord4fvARB}  */
/** JNI method for {@link #glMultiTexCoord4fvARB MultiTexCoord4fvARB}  */
	static public function nglMultiTexCoord4fvARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * Double version of {@link #glMultiTexCoord3fARB MultiTexCoord3fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 */
	static public function glMultiTexCoord3dARB(texture:Int,s:Float,t:Float,r:Float):Void;
/**
 * Integer version of {@link #glMultiTexCoord1fARB MultiTexCoord1fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 */
	static public function glMultiTexCoord1iARB(texture:Int,s:Int):Void;
/** Unsafe version of {@link #glMultiTexCoord1svARB MultiTexCoord1svARB}  */
/** JNI method for {@link #glMultiTexCoord1svARB MultiTexCoord1svARB}  */
	static public function nglMultiTexCoord1svARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoord3dvARB MultiTexCoord3dvARB}  */
/** JNI method for {@link #glMultiTexCoord3dvARB MultiTexCoord3dvARB}  */
	static public function nglMultiTexCoord3dvARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * Double version of {@link #glMultiTexCoord2fARB MultiTexCoord2fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 */
	static public function glMultiTexCoord2dARB(texture:Int,s:Float,t:Float):Void;
/**
 * Pointer version of {@link #glMultiTexCoord2iARB MultiTexCoord2iARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord2ivARB MultiTexCoord2ivARB}  */
	static public function glMultiTexCoord2ivARB(texture:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexCoord1fARB MultiTexCoord1fARB}  */
	static public function nglMultiTexCoord1fARB(texture:Int,s:Float,__functionAddress:haxe.Int64):Void;
/**
 * Integer version of {@link #glMultiTexCoord4fARB MultiTexCoord4fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 * @param q       the q component of the current texture coordinates
 */
	static public function glMultiTexCoord4iARB(texture:Int,s:Int,t:Int,r:Int,q:Int):Void;
/**
 * Pointer version of {@link #glMultiTexCoord4dARB MultiTexCoord4dARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord4dvARB MultiTexCoord4dvARB}  */
	static public function glMultiTexCoord4dvARB(texture:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Integer version of {@link #glMultiTexCoord3fARB MultiTexCoord3fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 * @param t       the t component of the current texture coordinates
 * @param r       the r component of the current texture coordinates
 */
	static public function glMultiTexCoord3iARB(texture:Int,s:Int,t:Int,r:Int):Void;
/**
 * Pointer version of {@link #glMultiTexCoord4fARB MultiTexCoord4fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord4fvARB MultiTexCoord4fvARB}  */
	static public function glMultiTexCoord4fvARB(texture:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexCoord2svARB MultiTexCoord2svARB}  */
/** JNI method for {@link #glMultiTexCoord2svARB MultiTexCoord2svARB}  */
	static public function nglMultiTexCoord2svARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glMultiTexCoord1dARB MultiTexCoord1dARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord1dvARB MultiTexCoord1dvARB}  */
	static public function glMultiTexCoord1dvARB(texture:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Double version of {@link #glMultiTexCoord1fARB MultiTexCoord1fARB}.
 *
 * @param texture the coordinate set to be modified
 * @param s       the s component of the current texture coordinates
 */
	static public function glMultiTexCoord1dARB(texture:Int,s:Float):Void;
/** JNI method for {@link #glMultiTexCoord2fARB MultiTexCoord2fARB}  */
	static public function nglMultiTexCoord2fARB(texture:Int,s:Float,t:Float,__functionAddress:haxe.Int64):Void;
/** Returns the {@link ARBMultitexture} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBMultitexture;
/** Unsafe version of {@link #glMultiTexCoord4ivARB MultiTexCoord4ivARB}  */
/** JNI method for {@link #glMultiTexCoord4ivARB MultiTexCoord4ivARB}  */
	static public function nglMultiTexCoord4ivARB(texture:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glMultiTexCoord3sARB MultiTexCoord3sARB}.
 *
 * @param texture the coordinate set to be modified
 * @param v       the texture coordinate buffer
 */
/** Alternative version of: {@link #glMultiTexCoord3svARB MultiTexCoord3svARB}  */
	static public function glMultiTexCoord3svARB(texture:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,v:java.nio.ByteBuffer):Void {})

}
