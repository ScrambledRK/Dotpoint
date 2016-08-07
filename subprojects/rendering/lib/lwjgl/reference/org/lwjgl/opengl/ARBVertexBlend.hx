package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBVertexBlend")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/vertex_blend.txt">ARB_vertex_blend</a> extension.
 * 
 * <p>This extension provides the ability to replace the single modelview transformation with a set of n vertex units. (Where n is constrained to an
 * implementation defined maximum.) Each unit has its own modelview transform matrix. For each unit, there is a current weight associated with the vertex.
 * When this extension is enabled the vertices are transformed by the modelview matrices of all of the enabled units. Afterward, these results are scaled
 * by the weights for the respective units and then summed to create the eye-space vertex. A similar procedure is followed for the normals, except they are
 * transformed by the inverse transpose of the modelview matrices.</p>
 */
extern class ARBVertexBlend 
{
/** Accepted by the {@code value} parameters of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_UNITS_ARB:Int = 34468;
/** Accepted by the {@code value} parameters of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_ACTIVE_VERTEX_UNITS_ARB:Int = 34469;
/**
 * Accepted by the {@code cap} parameters of Enable and Disable, by the {@code value} parameter of IsEnabled, GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_WEIGHT_SUM_UNITY_ARB:Int = 34470;
/**
 * Accepted by the {@code cap} parameters of Enable and Disable, by the {@code value} parameter of IsEnabled, GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_VERTEX_BLEND_ARB:Int = 34471;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW0_ARB:Int = 5888;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW1_ARB:Int = 34058;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW2_ARB:Int = 34594;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW3_ARB:Int = 34595;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW4_ARB:Int = 34596;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW5_ARB:Int = 34597;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW6_ARB:Int = 34598;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW7_ARB:Int = 34599;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW8_ARB:Int = 34600;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW9_ARB:Int = 34601;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW10_ARB:Int = 34602;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW11_ARB:Int = 34603;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW12_ARB:Int = 34604;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW13_ARB:Int = 34605;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW14_ARB:Int = 34606;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW15_ARB:Int = 34607;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW16_ARB:Int = 34608;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW17_ARB:Int = 34609;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW18_ARB:Int = 34610;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW19_ARB:Int = 34611;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW20_ARB:Int = 34612;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW21_ARB:Int = 34613;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW22_ARB:Int = 34614;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW23_ARB:Int = 34615;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW24_ARB:Int = 34616;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW25_ARB:Int = 34617;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW26_ARB:Int = 34618;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW27_ARB:Int = 34619;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW28_ARB:Int = 34620;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW29_ARB:Int = 34621;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW30_ARB:Int = 34622;
/** Accepted by the {@code mode} parameter of MatrixMode and by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MODELVIEW31_ARB:Int = 34623;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CURRENT_WEIGHT_ARB:Int = 34472;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_WEIGHT_ARRAY_TYPE_ARB:Int = 34473;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_WEIGHT_ARRAY_STRIDE_ARB:Int = 34474;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_WEIGHT_ARRAY_SIZE_ARB:Int = 34475;
/** Accepted by the {@code pname} parameter of GetPointerv.  */
	inline static public var GL_WEIGHT_ARRAY_POINTER_ARB:Int = 34476;
/**
 * Accepted by the {@code cap} parameters of EnableClientState and DisableClientState, by the {@code value} parameter of IsEnabled, GetBooleanv,
 * GetIntegerv, GetFloatv, and GetDoublev.
 */
	inline static public var GL_WEIGHT_ARRAY_ARB:Int = 34477;
/** Function address.  */
	public var WeightfvARB:haxe.Int64;
/** Function address.  */
	public var WeightbvARB:haxe.Int64;
/** Function address.  */
	public var WeightubvARB:haxe.Int64;
/** Function address.  */
	public var WeightsvARB:haxe.Int64;
/** Function address.  */
	public var WeightusvARB:haxe.Int64;
/** Function address.  */
	public var WeightivARB:haxe.Int64;
/** Function address.  */
	public var WeightuivARB:haxe.Int64;
/** Function address.  */
	public var WeightdvARB:haxe.Int64;
/** Function address.  */
	public var WeightPointerARB:haxe.Int64;
/** Function address.  */
	public var VertexBlendARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glWeightuivARB WeightuivARB}  */
/** JNI method for {@link #glWeightuivARB WeightuivARB}  */
	static public function nglWeightuivARB(size:Int,weights:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,weights:haxe.Int64):Void {})
/** GL_FLOAT version of: {@link #glWeightPointerARB WeightPointerARB}  */
/** Buffer object offset version of: {@link #glWeightPointerARB WeightPointerARB}  */
/**
 * Specifies the location and organization of a weight array.
 *
 * @param size    the number of values per vertex that are stored in the array. Must be a value between 1 and {@link #GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param type    the data type of the values stored in the array. One of:<br>{@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_INT INT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL11#GL_DOUBLE DOUBLE}
 * @param stride  the vertex stride in bytes. If specified as zero, then array elements are stored sequentially
 * @param pointer the weight data
 */
	static public function glWeightPointerARB(size:Int,type:Int,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (size:Int,stride:Int,pointer:java.nio.FloatBuffer):Void {})
	@:overload(function (size:Int,type:Int,stride:Int,pointerOffset:haxe.Int64):Void {})
/**
 * Sets the number of active transformations applied.
 *
 * @param count the number of transformations to blend
 */
	static public function glVertexBlendARB(count:Int):Void;
/** Unsafe version of {@link #glWeightubvARB WeightubvARB}  */
/** JNI method for {@link #glWeightubvARB WeightubvARB}  */
	static public function nglWeightubvARB(size:Int,weights:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,weights:haxe.Int64):Void {})
/** Unsafe version of {@link #glWeightusvARB WeightusvARB}  */
/** JNI method for {@link #glWeightusvARB WeightusvARB}  */
	static public function nglWeightusvARB(size:Int,weights:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,weights:haxe.Int64):Void {})
/** Alternative version of: {@link #glWeightfvARB WeightfvARB}  */
/**
 * Sets the current vertex weights.
 *
 * @param size    the number of weights to set. Must be a value between 1 and {@link #GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param weights the vertex weights
 */
	static public function glWeightfvARB(size:Int,weights:java.nio.ByteBuffer):Void;
	@:overload(function (weights:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glWeightPointerARB WeightPointerARB}  */
/** JNI method for {@link #glWeightPointerARB WeightPointerARB}  */
	static public function nglWeightPointerARB(size:Int,type:Int,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,type:Int,stride:Int,pointer:haxe.Int64):Void {})
/** Alternative version of: {@link #glWeightubvARB WeightubvARB}  */
/**
 * Unsigned byte version of {@link #glWeightfvARB WeightfvARB}.
 *
 * @param size    the number of weights to set. Must be a value between 1 and {@link #GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param weights the vertex weights
 */
	static public function glWeightubvARB(size:Int,weights:java.nio.ByteBuffer):Void;
	@:overload(function (weights:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glWeightdvARB WeightdvARB}  */
/** JNI method for {@link #glWeightdvARB WeightdvARB}  */
	static public function nglWeightdvARB(size:Int,weights:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,weights:haxe.Int64):Void {})
/** Unsafe version of {@link #glWeightivARB WeightivARB}  */
/** JNI method for {@link #glWeightivARB WeightivARB}  */
	static public function nglWeightivARB(size:Int,weights:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,weights:haxe.Int64):Void {})
/** Alternative version of: {@link #glWeightusvARB WeightusvARB}  */
/**
 * Unsigned short version of {@link #glWeightfvARB WeightfvARB}.
 *
 * @param size    the number of weights to set. Must be a value between 1 and {@link #GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param weights the vertex weights
 */
	static public function glWeightusvARB(size:Int,weights:java.nio.ByteBuffer):Void;
	@:overload(function (weights:java.nio.ShortBuffer):Void {})
/** Unsafe version of {@link #glWeightfvARB WeightfvARB}  */
/** JNI method for {@link #glWeightfvARB WeightfvARB}  */
	static public function nglWeightfvARB(size:Int,weights:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,weights:haxe.Int64):Void {})
/** JNI method for {@link #glVertexBlendARB VertexBlendARB}  */
	static public function nglVertexBlendARB(count:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glWeightivARB WeightivARB}  */
/**
 * Integer version of {@link #glWeightfvARB WeightfvARB}.
 *
 * @param size    the number of weights to set. Must be a value between 1 and {@link #GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param weights the vertex weights
 */
	static public function glWeightivARB(size:Int,weights:java.nio.ByteBuffer):Void;
	@:overload(function (weights:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glWeightbvARB WeightbvARB}  */
/** JNI method for {@link #glWeightbvARB WeightbvARB}  */
	static public function nglWeightbvARB(size:Int,weights:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,weights:haxe.Int64):Void {})
/** Alternative version of: {@link #glWeightsvARB WeightsvARB}  */
/**
 * Short version of {@link #glWeightfvARB WeightfvARB}.
 *
 * @param size    the number of weights to set. Must be a value between 1 and {@link #GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param weights the vertex weights
 */
	static public function glWeightsvARB(size:Int,weights:java.nio.ByteBuffer):Void;
	@:overload(function (weights:java.nio.ShortBuffer):Void {})
/** Alternative version of: {@link #glWeightdvARB WeightdvARB}  */
/**
 * Double version of {@link #glWeightfvARB WeightfvARB}.
 *
 * @param size    the number of weights to set. Must be a value between 1 and {@link #GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param weights the vertex weights
 */
	static public function glWeightdvARB(size:Int,weights:java.nio.ByteBuffer):Void;
	@:overload(function (weights:java.nio.DoubleBuffer):Void {})
/** Returns the {@link ARBVertexBlend} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBVertexBlend;
/** Unsafe version of {@link #glWeightsvARB WeightsvARB}  */
/** JNI method for {@link #glWeightsvARB WeightsvARB}  */
	static public function nglWeightsvARB(size:Int,weights:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (size:Int,weights:haxe.Int64):Void {})
/** Alternative version of: {@link #glWeightuivARB WeightuivARB}  */
/**
 * Unsigned integer version of {@link #glWeightfvARB WeightfvARB}.
 *
 * @param size    the number of weights to set. Must be a value between 1 and {@link #GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param weights the vertex weights
 */
	static public function glWeightuivARB(size:Int,weights:java.nio.ByteBuffer):Void;
	@:overload(function (weights:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glWeightbvARB WeightbvARB}  */
/**
 * Byte version of {@link #glWeightfvARB WeightfvARB}.
 *
 * @param size    the number of weights to set. Must be a value between 1 and {@link #GL_MAX_VERTEX_UNITS_ARB MAX_VERTEX_UNITS_ARB}.
 * @param weights the vertex weights
 */
	static public function glWeightbvARB(size:Int,weights:java.nio.ByteBuffer):Void;
	@:overload(function (weights:java.nio.ByteBuffer):Void {})

}
