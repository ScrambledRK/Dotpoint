package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTSecondaryColor")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/secondary_color.txt">EXT_secondary_color</a> extension.
 * 
 * <p>This extension allows specifying the RGB components of the secondary color used in the Color Sum stage, instead of using the default (0,0,0,0) color.
 * It applies only in RGBA mode and when LIGHTING is disabled.</p>
 */
extern class EXTSecondaryColor 
{
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_COLOR_SUM_EXT:Int = 33880;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CURRENT_SECONDARY_COLOR_EXT:Int = 33881;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_SIZE_EXT:Int = 33882;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_TYPE_EXT:Int = 33883;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT:Int = 33884;
/** Accepted by the {@code pname} parameter of GetPointerv.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_POINTER_EXT:Int = 33885;
/** Accepted by the {@code array} parameter of EnableClientState and DisableClientState.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_EXT:Int = 33886;
/** Function address.  */
	public var SecondaryColor3bEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3sEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3iEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3fEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3dEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3ubEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3usEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3uiEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3bvEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3svEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3ivEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3fvEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3dvEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3ubvEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3usvEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColor3uivEXT:haxe.Int64;
/** Function address.  */
	public var SecondaryColorPointerEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glSecondaryColor3dvEXT SecondaryColor3dvEXT}  */
/** JNI method for {@link #glSecondaryColor3dvEXT SecondaryColor3dvEXT}  */
	static public function nglSecondaryColor3dvEXT(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/**
 * Integer version of {@link #glSecondaryColor3bEXT SecondaryColor3bEXT}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3iEXT(red:Int,green:Int,blue:Int):Void;
/** JNI method for {@link #glSecondaryColor3ubEXT SecondaryColor3ubEXT}  */
	static public function nglSecondaryColor3ubEXT(red:Int8,green:Int8,blue:Int8,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glSecondaryColor3ivEXT SecondaryColor3ivEXT}  */
/** JNI method for {@link #glSecondaryColor3ivEXT SecondaryColor3ivEXT}  */
	static public function nglSecondaryColor3ivEXT(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/** JNI method for {@link #glSecondaryColor3fEXT SecondaryColor3fEXT}  */
	static public function nglSecondaryColor3fEXT(red:Float,green:Float,blue:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glSecondaryColor3usvEXT SecondaryColor3usvEXT}  */
/** JNI method for {@link #glSecondaryColor3usvEXT SecondaryColor3usvEXT}  */
	static public function nglSecondaryColor3usvEXT(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/** JNI method for {@link #glSecondaryColor3dEXT SecondaryColor3dEXT}  */
	static public function nglSecondaryColor3dEXT(red:Float,green:Float,blue:Float,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version of {@link #glSecondaryColor3ubEXT SecondaryColor3ubEXT}.
 *
 * @param v the secondary color buffer
 */
	static public function glSecondaryColor3ubvEXT(v:java.nio.ByteBuffer):Void;
/** JNI method for {@link #glSecondaryColor3bEXT SecondaryColor3bEXT}  */
	static public function nglSecondaryColor3bEXT(red:Int8,green:Int8,blue:Int8,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glSecondaryColor3sEXT SecondaryColor3sEXT}  */
	static public function nglSecondaryColor3sEXT(red:Int16,green:Int16,blue:Int16,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glSecondaryColorPointerEXT SecondaryColorPointerEXT}  */
/** JNI method for {@link #glSecondaryColorPointerEXT SecondaryColorPointerEXT}  */
	static public function nglSecondaryColorPointerEXT(size:Int,type:Int,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,type:Int,stride:Int,pointer:haxe.Int64):Void {})
/** Unsafe version of {@link #glSecondaryColor3uivEXT SecondaryColor3uivEXT}  */
/** JNI method for {@link #glSecondaryColor3uivEXT SecondaryColor3uivEXT}  */
	static public function nglSecondaryColor3uivEXT(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/**
 * Short version of {@link #glSecondaryColor3bEXT SecondaryColor3bEXT}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3sEXT(red:Int16,green:Int16,blue:Int16):Void;
/**
 * Unsigned short version of {@link #glSecondaryColor3bEXT SecondaryColor3bEXT}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3usEXT(red:Int16,green:Int16,blue:Int16):Void;
/**
 * Pointer version of {@link #glSecondaryColor3fEXT SecondaryColor3fEXT}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3fvEXT SecondaryColor3fvEXT}  */
	static public function glSecondaryColor3fvEXT(v:java.nio.FloatBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/**
 * Unsigned int version of {@link #glSecondaryColor3bEXT SecondaryColor3bEXT}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3uiEXT(red:Int,green:Int,blue:Int):Void;
/** Unsafe version of {@link #glSecondaryColor3fvEXT SecondaryColor3fvEXT}  */
/** JNI method for {@link #glSecondaryColor3fvEXT SecondaryColor3fvEXT}  */
	static public function nglSecondaryColor3fvEXT(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/** JNI method for {@link #glSecondaryColor3uiEXT SecondaryColor3uiEXT}  */
	static public function nglSecondaryColor3uiEXT(red:Int,green:Int,blue:Int,__functionAddress:haxe.Int64):Void;
/**
 * Byte pointer version of {@link #glSecondaryColor3bEXT SecondaryColor3bEXT}.
 *
 * @param v the secondary color buffer
 */
	static public function glSecondaryColor3bvEXT(v:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glSecondaryColor3svEXT SecondaryColor3svEXT}  */
/** JNI method for {@link #glSecondaryColor3svEXT SecondaryColor3svEXT}  */
	static public function nglSecondaryColor3svEXT(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/** Unsafe version of {@link #glSecondaryColor3bvEXT SecondaryColor3bvEXT}  */
/** JNI method for {@link #glSecondaryColor3bvEXT SecondaryColor3bvEXT}  */
	static public function nglSecondaryColor3bvEXT(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/** JNI method for {@link #glSecondaryColor3usEXT SecondaryColor3usEXT}  */
	static public function nglSecondaryColor3usEXT(red:Int16,green:Int16,blue:Int16,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version of {@link #glSecondaryColor3sEXT SecondaryColor3sEXT}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3svEXT SecondaryColor3svEXT}  */
	static public function glSecondaryColor3svEXT(v:java.nio.ShortBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glSecondaryColor3usEXT SecondaryColor3usEXT}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3usvEXT SecondaryColor3usvEXT}  */
	static public function glSecondaryColor3usvEXT(v:java.nio.ShortBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/**
 * Unsigned version of {@link #glSecondaryColor3bEXT SecondaryColor3bEXT}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3ubEXT(red:Int8,green:Int8,blue:Int8):Void;
/**
 * Pointer version of {@link #glSecondaryColor3iEXT SecondaryColor3iEXT}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3ivEXT SecondaryColor3ivEXT}  */
	static public function glSecondaryColor3ivEXT(v:java.nio.IntBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glSecondaryColor3uiEXT SecondaryColor3uiEXT}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3uivEXT SecondaryColor3uivEXT}  */
	static public function glSecondaryColor3uivEXT(v:java.nio.IntBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})
/** GL_FLOAT version of: {@link #glSecondaryColorPointerEXT SecondaryColorPointerEXT}  */
/** GL_UNSIGNED_BYTE / GL_BYTE version of: {@link #glSecondaryColorPointerEXT SecondaryColorPointerEXT}  */
/** GL_UNSIGNED_SHORT / GL_SHORT version of: {@link #glSecondaryColorPointerEXT SecondaryColorPointerEXT}  */
/** Buffer object offset version of: {@link #glSecondaryColorPointerEXT SecondaryColorPointerEXT}  */
/**
 * Specifies the location and organization of a secondary color array.
 *
 * @param size    the number of values per vertex that are stored in the array, as well as their component ordering. Must be:<br>3
 * @param type    the data type of the values stored in the array. One of:<br>{@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_INT INT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL11#GL_DOUBLE DOUBLE}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL33#GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}
 * @param stride  the vertex stride in bytes. If specified as zero, then array elements are stored sequentially
 * @param pointer the secondary color array data
 */
	static public function glSecondaryColorPointerEXT(size:Int,type:Int,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (size:Int,stride:Int,pointer:java.nio.FloatBuffer):Void {})
	@:overload(function (size:Int,unsigned:Bool,stride:Int,pointer:java.nio.ByteBuffer):Void {})
	@:overload(function (size:Int,unsigned:Bool,stride:Int,pointer:java.nio.ShortBuffer):Void {})
	@:overload(function (size:Int,type:Int,stride:Int,pointerOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glSecondaryColor3ubvEXT SecondaryColor3ubvEXT}  */
/** JNI method for {@link #glSecondaryColor3ubvEXT SecondaryColor3ubvEXT}  */
	static public function nglSecondaryColor3ubvEXT(v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (v:haxe.Int64):Void {})
/** JNI method for {@link #glSecondaryColor3iEXT SecondaryColor3iEXT}  */
	static public function nglSecondaryColor3iEXT(red:Int,green:Int,blue:Int,__functionAddress:haxe.Int64):Void;
/**
 * Double version of {@link #glSecondaryColor3bEXT SecondaryColor3bEXT}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3dEXT(red:Float,green:Float,blue:Float):Void;
/**
 * Sets the R, G, and B components of the current secondary color.
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3bEXT(red:Int8,green:Int8,blue:Int8):Void;
/**
 * Float version of {@link #glSecondaryColor3bEXT SecondaryColor3bEXT}
 *
 * @param red   the red component of the current secondary color
 * @param green the green component of the current secondary color
 * @param blue  the blue component of the current secondary color
 */
	static public function glSecondaryColor3fEXT(red:Float,green:Float,blue:Float):Void;
/** Returns the {@link EXTSecondaryColor} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTSecondaryColor;
/**
 * Pointer version of {@link #glSecondaryColor3dEXT SecondaryColor3dEXT}.
 *
 * @param v the secondary color buffer
 */
/** Alternative version of: {@link #glSecondaryColor3dvEXT SecondaryColor3dvEXT}  */
	static public function glSecondaryColor3dvEXT(v:java.nio.DoubleBuffer):Void;
	@:overload(function (v:java.nio.ByteBuffer):Void {})

}
