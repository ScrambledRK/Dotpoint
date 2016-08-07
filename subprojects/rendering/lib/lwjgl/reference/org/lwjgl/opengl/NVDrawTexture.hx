package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVDrawTexture")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/draw_texture.txt">NV_draw_texture</a> extension.
 * 
 * <p>This extension provides a new function, DrawTextureNV(), allowing
 * applications to draw an screen-aligned rectangle displaying some or all of
 * the contents of a two-dimensional or rectangle texture.  Callers specify a
 * texture object, an optional sampler object, window coordinates of the
 * rectangle to draw, and texture coordinates corresponding to the corners of
 * the rectangle.  For each fragment produced by the rectangle, DrawTextureNV
 * interpolates the texture coordinates, performs a texture lookup, and uses
 * the texture result as the fragment color.</p>
 */
extern class NVDrawTexture 
{
/** Function address.  */
	public var DrawTextureNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glDrawTextureNV DrawTextureNV}  */
	static public function nglDrawTextureNV(texture:Int,sampler:Int,x0:Float,y0:Float,x1:Float,y1:Float,z:Float,s0:Float,t0:Float,s1:Float,t1:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture 
 * @param sampler 
 * @param x0      
 * @param y0      
 * @param x1      
 * @param y1      
 * @param z       
 * @param s0      
 * @param t0      
 * @param s1      
 * @param t1      
 */
	static public function glDrawTextureNV(texture:Int,sampler:Int,x0:Float,y0:Float,x1:Float,y1:Float,z:Float,s0:Float,t0:Float,s1:Float,t1:Float):Void;
/** Returns the {@link NVDrawTexture} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVDrawTexture;

}
