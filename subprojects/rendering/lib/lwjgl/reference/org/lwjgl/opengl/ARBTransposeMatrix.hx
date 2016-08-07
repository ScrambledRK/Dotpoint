package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTransposeMatrix")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/transpose_matrix.txt">ARB_transpose_matrix</a> extension.
 * 
 * <p>New functions and tokens are added allowing application matrices stored in row major order rather than column major order to be transferred to the
 * OpenGL implementation. This allows an application to use standard C-language 2-dimensional arrays ({@code m[row][col]}) and have the array indices match the
 * expected matrix row and column indexes. These arrays are referred to as transpose matrices since they are the transpose of the standard matrices passed
 * to OpenGL.</p>
 * 
 * <p>This extension adds an interface for transfering data to and from the OpenGL pipeline, it does not change any OpenGL processing or imply any changes in
 * state representation.</p>
 * 
 * <p>Promoted to core in {@link GL13 OpenGL 1.3}.</p>
 */
extern class ARBTransposeMatrix 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TRANSPOSE_MODELVIEW_MATRIX_ARB:Int = 34019;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TRANSPOSE_PROJECTION_MATRIX_ARB:Int = 34020;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TRANSPOSE_TEXTURE_MATRIX_ARB:Int = 34021;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TRANSPOSE_COLOR_MATRIX_ARB:Int = 34022;
/** Function address.  */
	public var LoadTransposeMatrixfARB:haxe.Int64;
/** Function address.  */
	public var LoadTransposeMatrixdARB:haxe.Int64;
/** Function address.  */
	public var MultTransposeMatrixfARB:haxe.Int64;
/** Function address.  */
	public var MultTransposeMatrixdARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glLoadTransposeMatrixdARB LoadTransposeMatrixdARB}  */
/** JNI method for {@link #glLoadTransposeMatrixdARB LoadTransposeMatrixdARB}  */
	static public function nglLoadTransposeMatrixdARB(m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (m:haxe.Int64):Void {})
/**
 * Double version of {@link #glLoadTransposeMatrixfARB LoadTransposeMatrixfARB}.
 *
 * @param m the matrix data
 */
/** Alternative version of: {@link #glLoadTransposeMatrixdARB LoadTransposeMatrixdARB}  */
	static public function glLoadTransposeMatrixdARB(m:java.nio.DoubleBuffer):Void;
	@:overload(function (m:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultTransposeMatrixfARB MultTransposeMatrixfARB}  */
/** JNI method for {@link #glMultTransposeMatrixfARB MultTransposeMatrixfARB}  */
	static public function nglMultTransposeMatrixfARB(m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (m:haxe.Int64):Void {})
/**
 * Multiplies the current matrix with a 4 &times; 4 matrix in row-major order. See {@link #glLoadTransposeMatrixfARB LoadTransposeMatrixfARB} for details.
 *
 * @param m the matrix data
 */
/** Alternative version of: {@link #glMultTransposeMatrixfARB MultTransposeMatrixfARB}  */
	static public function glMultTransposeMatrixfARB(m:java.nio.FloatBuffer):Void;
	@:overload(function (m:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glLoadTransposeMatrixfARB LoadTransposeMatrixfARB}  */
/** JNI method for {@link #glLoadTransposeMatrixfARB LoadTransposeMatrixfARB}  */
	static public function nglLoadTransposeMatrixfARB(m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (m:haxe.Int64):Void {})
/**
 * Double version of {@link #glMultTransposeMatrixfARB MultTransposeMatrixfARB}.
 *
 * @param m the matrix data
 */
/** Alternative version of: {@link #glMultTransposeMatrixdARB MultTransposeMatrixdARB}  */
	static public function glMultTransposeMatrixdARB(m:java.nio.DoubleBuffer):Void;
	@:overload(function (m:java.nio.ByteBuffer):Void {})
/**
 * Sets the current matrix to a 4 &times; 4 matrix in row-major order.
 * 
 * <p>The matrix is stored as 16 consecutive values, i.e. as:
 * <table border=1 cellspacing=0 cellpadding=2 class="lwjgl matrix">
 * <tr><td>a1</td><td>a2</td><td>a3</td><td>a4</td></tr>
 * <tr><td>a5</td><td>a6</td><td>a7</td><td>a8</td></tr>
 * <tr><td>a9</td><td>a10</td><td>a11</td><td>a12</td></tr>
 * <tr><td>a13</td><td>a14</td><td>a15</td><td>a16</td></tr>
 * </table></p>
 *
 * @param m the matrix data
 */
/** Alternative version of: {@link #glLoadTransposeMatrixfARB LoadTransposeMatrixfARB}  */
	static public function glLoadTransposeMatrixfARB(m:java.nio.FloatBuffer):Void;
	@:overload(function (m:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultTransposeMatrixdARB MultTransposeMatrixdARB}  */
/** JNI method for {@link #glMultTransposeMatrixdARB MultTransposeMatrixdARB}  */
	static public function nglMultTransposeMatrixdARB(m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (m:haxe.Int64):Void {})
/** Returns the {@link ARBTransposeMatrix} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTransposeMatrix;

}
