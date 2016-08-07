package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBSampleShading")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/sample_shading.txt">ARB_sample_shading</a> extension.
 * 
 * <p>In standard multisample rendering, an implementation is allowed to assign the same color and texture coordinate values to each sample, which then allows
 * the optimization where the shader is only evaluated once and then distributed to the samples that have been determined to be covered by the primitive
 * currently being rasterized. This can cause aliasing where the input color and texture coordinates are used to generate a result that doesn't antialias
 * itself, for example with alpha-tested transparency.</p>
 * 
 * <p>This extension adds the ability to explicitly request that an implementation use a minimum number of unique set of fragment computation inputs when
 * multisampling a pixel. Specifying such a requirement can reduce aliasing that results from evaluating the fragment computations too few times per pixel.</p>
 * 
 * <p>This extension adds new global state that controls the minimum number of samples for which attribute data is independently interpolated. When enabled,
 * all operations that were traditionally executed per-fragment operate independently on each sample.</p>
 * 
 * <p>This also extends the shading language to allow control over the sample being processed. This includes built-in fragment input variables identifying the
 * sample number and position being processed when executing fragment shaders per sample.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0} and GLSL 1.30. Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBSampleShading 
{
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_SAMPLE_SHADING_ARB:Int = 35894;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MIN_SAMPLE_SHADING_VALUE_ARB:Int = 35895;
/** Function address.  */
	public var MinSampleShadingARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Sets the minimum sample shading fraction. {@code value} is clamped to [0,1] when specified.
 *
 * @param value the minimum sample shading fraction
 */
	static public function glMinSampleShadingARB(value:Float):Void;
/** Returns the {@link ARBSampleShading} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBSampleShading;
/** JNI method for {@link #glMinSampleShadingARB MinSampleShadingARB}  */
	static public function nglMinSampleShadingARB(value:Float,__functionAddress:haxe.Int64):Void;

}
