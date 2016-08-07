package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBMatrixPalette")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/matrix_palette.txt">ARB_matrix_palette</a> extension.
 * 
 * <p>This extension extends the abilities of {@link ARBVertexBlend} to include a palette of modelview matrices. The n vertex units use a palette of m modelview
 * matrices. (Where n and m are constrained to implementation defined maxima.) Each vertex has a set of n indices into the palette, and a corresponding set
 * of n weights. Matrix indices can be changed for each vertex (between {@link GL11#glBegin Begin} and {@link GL11#glEnd End}).</p>
 * 
 * <p>When this extension is utilized, the enabled units transform each vertex by the modelview matrices specified by the vertices' respective indices. These
 * results are subsequently scaled by the weights of the respective units and then summed to create the eyespace vertex.</p>
 * 
 * <p>A similar procedure is followed for normals. Normals, however, are transformed by the inverse transpose of the modelview matrix.</p>
 */
extern class ARBMatrixPalette 
{
/**
 * Accepted by the {@code pname} parameters of GetFloatv, GetDoublev, and IsEnabled, by the {@code mode} parameter of MatrixMode, and by the {@code cap}
 * parameters of Enable and Disable.
 */
	inline static public var GL_MATRIX_PALETTE_ARB:Int = 34880;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB:Int = 34881;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_PALETTE_MATRICES_ARB:Int = 34882;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CURRENT_PALETTE_MATRIX_ARB:Int = 34883;
/** Accepted by the {@code cap} parameters of EnableClientState and DisableClientState and by the {@code pname} parameter of IsEnabled.  */
	inline static public var GL_MATRIX_INDEX_ARRAY_ARB:Int = 34884;
/** Accepted by the {@code pname} parameter of GetFloatv.  */
	inline static public var GL_CURRENT_MATRIX_INDEX_ARB:Int = 34885;
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_MATRIX_INDEX_ARRAY_SIZE_ARB:Int = 34886;
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_MATRIX_INDEX_ARRAY_TYPE_ARB:Int = 34887;
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_MATRIX_INDEX_ARRAY_STRIDE_ARB:Int = 34888;
/** Accepted by the {@code pname} parameter of GetPointerv.  */
	inline static public var GL_MATRIX_INDEX_ARRAY_POINTER_ARB:Int = 34889;
/** Function address.  */
	public var CurrentPaletteMatrixARB:haxe.Int64;
/** Function address.  */
	public var MatrixIndexuivARB:haxe.Int64;
/** Function address.  */
	public var MatrixIndexubvARB:haxe.Int64;
/** Function address.  */
	public var MatrixIndexusvARB:haxe.Int64;
/** Function address.  */
	public var MatrixIndexPointerARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glCurrentPaletteMatrixARB CurrentPaletteMatrixARB}  */
	static public function nglCurrentPaletteMatrixARB(index:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glMatrixIndexuivARB MatrixIndexuivARB}  */
/** JNI method for {@link #glMatrixIndexuivARB MatrixIndexuivARB}  */
	static public function nglMatrixIndexuivARB(size:Int,indices:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,indices:haxe.Int64):Void {})
/** Unsafe version of {@link #glMatrixIndexPointerARB MatrixIndexPointerARB}  */
/** JNI method for {@link #glMatrixIndexPointerARB MatrixIndexPointerARB}  */
	static public function nglMatrixIndexPointerARB(size:Int,type:Int,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,type:Int,stride:Int,pointer:haxe.Int64):Void {})
/** Alternative version of: {@link #glMatrixIndexuivARB MatrixIndexuivARB}  */
/**
 * Sets the current matrix indices.
 *
 * @param size    the number of index values to set. Must be a value between 1 and {@link ARBVertexBlend#GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param indices the matrix index values
 */
	static public function glMatrixIndexuivARB(size:Int,indices:java.nio.ByteBuffer):Void;
	@:overload(function (indices:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glMatrixIndexubvARB MatrixIndexubvARB}  */
/**
 * Byte version of {@link #glMatrixIndexuivARB MatrixIndexuivARB}.
 *
 * @param size    the number of index values to set. Must be a value between 1 and {@link ARBVertexBlend#GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param indices the matrix index values
 */
	static public function glMatrixIndexubvARB(size:Int,indices:java.nio.ByteBuffer):Void;
	@:overload(function (indices:java.nio.ByteBuffer):Void {})
/** Returns the {@link ARBMatrixPalette} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBMatrixPalette;
/** Alternative version of: {@link #glMatrixIndexusvARB MatrixIndexusvARB}  */
/**
 * Short version of {@link #glMatrixIndexuivARB MatrixIndexuivARB}.
 *
 * @param size    the number of index values to set. Must be a value between 1 and {@link ARBVertexBlend#GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param indices the matrix index values
 */
	static public function glMatrixIndexusvARB(size:Int,indices:java.nio.ByteBuffer):Void;
	@:overload(function (indices:java.nio.ShortBuffer):Void {})
/** Unsafe version of {@link #glMatrixIndexubvARB MatrixIndexubvARB}  */
/** JNI method for {@link #glMatrixIndexubvARB MatrixIndexubvARB}  */
	static public function nglMatrixIndexubvARB(size:Int,indices:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,indices:haxe.Int64):Void {})
/**
 * Defines which of the palette's matrices is affected by subsequent matrix operations when the current matrix mode is {@link #GL_MATRIX_PALETTE_ARB MATRIX_PALETTE_ARB},
 *
 * @param index the current matrix index. Must be a value between 0 and {@link #GL_MAX_PALETTE_MATRICES_ARB MAX_PALETTE_MATRICES_ARB}.
 */
	static public function glCurrentPaletteMatrixARB(index:Int):Void;
/** Unsafe version of {@link #glMatrixIndexusvARB MatrixIndexusvARB}  */
/** JNI method for {@link #glMatrixIndexusvARB MatrixIndexusvARB}  */
	static public function nglMatrixIndexusvARB(size:Int,indices:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,indices:haxe.Int64):Void {})
/** GL_UNSIGNED_BYTE version of: {@link #glMatrixIndexPointerARB MatrixIndexPointerARB}  */
/** GL_UNSIGNED_INT version of: {@link #glMatrixIndexPointerARB MatrixIndexPointerARB}  */
/** GL_UNSIGNED_SHORT version of: {@link #glMatrixIndexPointerARB MatrixIndexPointerARB}  */
/**
 * 
 *
 * @param size    the number of index values per vertex that are stored in the array. Must be a value between 1 and {@link ARBVertexBlend#GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param type    the data type of the values stored in the array. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param stride  the vertex stride in bytes. If specified as zero, then array elements are stored sequentially
 * @param pointer the matrix index data
 */
	static public function glMatrixIndexPointerARB(size:Int,type:Int,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (size:Int,stride:Int,pointer:java.nio.ByteBuffer):Void {})
	@:overload(function (size:Int,stride:Int,pointer:java.nio.IntBuffer):Void {})
	@:overload(function (size:Int,stride:Int,pointer:java.nio.ShortBuffer):Void {})

}
