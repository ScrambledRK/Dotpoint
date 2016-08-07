package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVTextureMultisample")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/texture_multisample.txt">NV_texture_multisample</a> extension.
 * 
 * <p>This specification extends <a href="http://www.opengl.org/registry/specs/NV/gpu_program4.txt">NV_gpu_program4</a> to support per-sample fetching from multisample textures described in
 * {@link ARBTextureMultisample ARB_texture_multisample}.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0}, {@link ARBTextureMultisample ARB_texture_multisample}.</p>
 */
extern class NVTextureMultisample 
{
/** Accepted by the {@code pname} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_COVERAGE_SAMPLES_NV:Int = 36933;
/** Accepted by the {@code pname} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_COLOR_SAMPLES_NV:Int = 36934;
/** Function address.  */
	public var TexImage2DMultisampleCoverageNV:haxe.Int64;
/** Function address.  */
	public var TexImage3DMultisampleCoverageNV:haxe.Int64;
/** Function address.  */
	public var TextureImage2DMultisampleNV:haxe.Int64;
/** Function address.  */
	public var TextureImage3DMultisampleNV:haxe.Int64;
/** Function address.  */
	public var TextureImage2DMultisampleCoverageNV:haxe.Int64;
/** Function address.  */
	public var TextureImage3DMultisampleCoverageNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glTexImage3DMultisampleCoverageNV TexImage3DMultisampleCoverageNV}  */
	static public function nglTexImage3DMultisampleCoverageNV(target:Int,coverageSamples:Int,colorSamples:Int,internalFormat:Int,width:Int,height:Int,depth:Int,fixedSampleLocations:Bool,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture              
 * @param target               
 * @param coverageSamples      
 * @param colorSamples         
 * @param internalFormat       
 * @param width                
 * @param height               
 * @param depth                
 * @param fixedSampleLocations 
 */
	static public function glTextureImage3DMultisampleCoverageNV(texture:Int,target:Int,coverageSamples:Int,colorSamples:Int,internalFormat:Int,width:Int,height:Int,depth:Int,fixedSampleLocations:Bool):Void;
/** JNI method for {@link #glTextureImage2DMultisampleCoverageNV TextureImage2DMultisampleCoverageNV}  */
	static public function nglTextureImage2DMultisampleCoverageNV(texture:Int,target:Int,coverageSamples:Int,colorSamples:Int,internalFormat:Int,width:Int,height:Int,fixedSampleLocations:Bool,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param target               
 * @param coverageSamples      
 * @param colorSamples         
 * @param internalFormat       
 * @param width                
 * @param height               
 * @param fixedSampleLocations 
 */
	static public function glTexImage2DMultisampleCoverageNV(target:Int,coverageSamples:Int,colorSamples:Int,internalFormat:Int,width:Int,height:Int,fixedSampleLocations:Bool):Void;
/** JNI method for {@link #glTextureImage2DMultisampleNV TextureImage2DMultisampleNV}  */
	static public function nglTextureImage2DMultisampleNV(texture:Int,target:Int,samples:Int,internalFormat:Int,width:Int,height:Int,fixedSampleLocations:Bool,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture              
 * @param target               
 * @param samples              
 * @param internalFormat       
 * @param width                
 * @param height               
 * @param fixedSampleLocations 
 */
	static public function glTextureImage2DMultisampleNV(texture:Int,target:Int,samples:Int,internalFormat:Int,width:Int,height:Int,fixedSampleLocations:Bool):Void;
/** JNI method for {@link #glTexImage2DMultisampleCoverageNV TexImage2DMultisampleCoverageNV}  */
	static public function nglTexImage2DMultisampleCoverageNV(target:Int,coverageSamples:Int,colorSamples:Int,internalFormat:Int,width:Int,height:Int,fixedSampleLocations:Bool,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glTextureImage3DMultisampleNV TextureImage3DMultisampleNV}  */
	static public function nglTextureImage3DMultisampleNV(texture:Int,target:Int,samples:Int,internalFormat:Int,width:Int,height:Int,depth:Int,fixedSampleLocations:Bool,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture              
 * @param target               
 * @param samples              
 * @param internalFormat       
 * @param width                
 * @param height               
 * @param depth                
 * @param fixedSampleLocations 
 */
	static public function glTextureImage3DMultisampleNV(texture:Int,target:Int,samples:Int,internalFormat:Int,width:Int,height:Int,depth:Int,fixedSampleLocations:Bool):Void;
/**
 * 
 *
 * @param texture              
 * @param target               
 * @param coverageSamples      
 * @param colorSamples         
 * @param internalFormat       
 * @param width                
 * @param height               
 * @param fixedSampleLocations 
 */
	static public function glTextureImage2DMultisampleCoverageNV(texture:Int,target:Int,coverageSamples:Int,colorSamples:Int,internalFormat:Int,width:Int,height:Int,fixedSampleLocations:Bool):Void;
/** JNI method for {@link #glTextureImage3DMultisampleCoverageNV TextureImage3DMultisampleCoverageNV}  */
	static public function nglTextureImage3DMultisampleCoverageNV(texture:Int,target:Int,coverageSamples:Int,colorSamples:Int,internalFormat:Int,width:Int,height:Int,depth:Int,fixedSampleLocations:Bool,__functionAddress:haxe.Int64):Void;
/** Returns the {@link NVTextureMultisample} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVTextureMultisample;
/**
 * 
 *
 * @param target               
 * @param coverageSamples      
 * @param colorSamples         
 * @param internalFormat       
 * @param width                
 * @param height               
 * @param depth                
 * @param fixedSampleLocations 
 */
	static public function glTexImage3DMultisampleCoverageNV(target:Int,coverageSamples:Int,colorSamples:Int,internalFormat:Int,width:Int,height:Int,depth:Int,fixedSampleLocations:Bool):Void;

}
