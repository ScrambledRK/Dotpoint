package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBClipControl")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/clip_control.txt">ARB_clip_control</a> extension.
 * 
 * <p>This extension provides additional clip control modes to configure how clip space is mapped to window space.  This extension's goal is to 1) allow
 * OpenGL to effectively match Direct3D's coordinate system conventions, and 2) potentially improve the numerical precision of the Z coordinate mapping.</p>
 * 
 * <p>Promoted to core in {@link GL45 OpenGL 4.5}.</p>
 */
extern class ARBClipControl 
{
/** Accepted by the {@code origin} parameter of {@link #glClipControl ClipControl}.  */
	inline static public var GL_LOWER_LEFT:Int = 36001;
/** Accepted by the {@code origin} parameter of {@link #glClipControl ClipControl}.  */
	inline static public var GL_UPPER_LEFT:Int = 36002;
/** Accepted by the {@code depth} parameter of {@link #glClipControl ClipControl}.  */
	inline static public var GL_NEGATIVE_ONE_TO_ONE:Int = 37726;
/** Accepted by the {@code depth} parameter of {@link #glClipControl ClipControl}.  */
	inline static public var GL_ZERO_TO_ONE:Int = 37727;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CLIP_ORIGIN:Int = 37724;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CLIP_DEPTH_MODE:Int = 37725;
/** Function address.  */
	public var ClipControl:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Returns the {@link ARBClipControl} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBClipControl;
/**
 * Controls the clipping volume behavior.
 * 
 * <p>These parameters update the clip control origin and depth mode respectively. The initial value of the clip control origin is {@link #GL_LOWER_LEFT LOWER_LEFT} and
 * the initial value of the depth mode is {@link #GL_NEGATIVE_ONE_TO_ONE NEGATIVE_ONE_TO_ONE}.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated if ClipControl is executed between the execution of {@link GL11#glBegin Begin} and the corresponding
 * execution of {@link GL11#glEnd End}.</p>
 *
 * @param origin the clip origin. One of:<br>{@link #GL_LOWER_LEFT LOWER_LEFT}, {@link #GL_UPPER_LEFT UPPER_LEFT}
 * @param depth  the clip depth mode. One of:<br>{@link #GL_NEGATIVE_ONE_TO_ONE NEGATIVE_ONE_TO_ONE}, {@link #GL_ZERO_TO_ONE ZERO_TO_ONE}
 */
	static public function glClipControl(origin:Int,depth:Int):Void;

}
