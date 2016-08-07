package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTFramebufferObject")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/framebuffer_object.txt">EXT_framebuffer_object</a> extension.
 * 
 * <p>This extension defines a simple interface for drawing to rendering destinations other than the buffers provided to the GL by the window-system.</p>
 * 
 * <p>In this extension, these newly defined rendering destinations are known collectively as "framebuffer-attachable images". This extension provides a
 * mechanism for attaching framebuffer-attachable images to the GL framebuffer as one of the standard GL logical buffers: color, depth, and stencil.
 * (Attaching a framebuffer-attachable image to the accum logical buffer is left for a future extension to define). When a framebuffer-attachable image is
 * attached to the framebuffer, it is used as the source and destination of fragment operations.</p>
 * 
 * <p>By allowing the use of a framebuffer-attachable image as a rendering destination, this extension enables a form of "offscreen" rendering. Furthermore,
 * "render to texture" is supported by allowing the images of a texture to be used as framebuffer-attachable images. A particular image of a texture object
 * is selected for use as a framebuffer-attachable image by specifying the mipmap level, cube map face (for a cube map texture), and z-offset (for a 3D
 * texture) that identifies the image. The "render to texture" semantics of this extension are similar to performing traditional rendering to the
 * framebuffer, followed immediately by a call to CopyTexSubImage. However, by using this extension instead, an application can achieve the same effect,
 * but with the advantage that the GL can usually eliminate the data copy that would have been incurred by calling CopyTexSubImage.</p>
 * 
 * <p>This extension also defines a new GL object type, called a "renderbuffer", which encapsulates a single 2D pixel image. The image of renderbuffer can be
 * used as a framebuffer-attachable image for generalized offscreen rendering and it also provides a means to support rendering to GL logical buffer types
 * which have no corresponding texture format (stencil, accum, etc). A renderbuffer is similar to a texture in that both renderbuffers and textures can be
 * independently allocated and shared among multiple contexts. The framework defined by this extension is general enough that support for attaching images
 * from GL objects other than textures and renderbuffers could be added by layered extensions.</p>
 * 
 * <p>To facilitate efficient switching between collections of framebuffer-attachable images, this extension introduces another new GL object, called a
 * framebuffer object. A framebuffer object contains the state that defines the traditional GL framebuffer, including its set of images. Prior to this
 * extension, it was the window-system which defined and managed this collection of images, traditionally by grouping them into a "drawable". The
 * window-system API's would also provide a function (i.e., wglMakeCurrent, glXMakeCurrent, aglSetDrawable, etc.) to bind a drawable with a GL context (as
 * is done in the WGL_ARB_pbuffer extension). In this extension however, this functionality is subsumed by the GL and the GL provides the function
 * BindFramebufferEXT to bind a framebuffer object to the current context. Later, the context can bind back to the window-system-provided framebuffer in
 * order to display rendered content.</p>
 * 
 * <p>Previous extensions that enabled rendering to a texture have been much more complicated. One example is the combination of ARB_pbuffer and
 * ARB_render_texture, both of which are window-system extensions. This combination requires calling MakeCurrent, an operation that may be expensive, to
 * switch between the window and the pbuffer drawables. An application must create one pbuffer per renderable texture in order to portably use
 * ARB_render_texture. An application must maintain at least one GL context per texture format, because each context can only operate on a single
 * pixelformat or FBConfig. All of these characteristics make ARB_render_texture both inefficient and cumbersome to use.</p>
 * 
 * <p>EXT_framebuffer_object, on the other hand, is both simpler to use and more efficient than ARB_render_texture. The EXT_framebuffer_object API is
 * contained wholly within the GL API and has no (non-portable) window-system components. Under EXT_framebuffer_object, it is not necessary to create a
 * second GL context when rendering to a texture image whose format differs from that of the window. Finally, unlike the pbuffers of ARB_render_texture, a
 * single framebuffer object can facilitate rendering to an unlimited number of texture objects.</p>
 * 
 * <p>Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class EXTFramebufferObject 
{
/**
 * Accepted by the {@code target} parameter of BindFramebufferEXT, CheckFramebufferStatusEXT, FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT,
 * and GetFramebufferAttachmentParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_EXT:Int = 36160;
/**
 * Accepted by the {@code target} parameter of BindRenderbufferEXT, RenderbufferStorageEXT, and GetRenderbufferParameterivEXT, and returned by
 * GetFramebufferAttachmentParameterivEXT.
 */
	inline static public var GL_RENDERBUFFER_EXT:Int = 36161;
/** Accepted by the {@code internalformat} parameter of RenderbufferStorageEXT.  */
	inline static public var GL_STENCIL_INDEX1_EXT:Int = 36166;
/** Accepted by the {@code internalformat} parameter of RenderbufferStorageEXT.  */
	inline static public var GL_STENCIL_INDEX4_EXT:Int = 36167;
/** Accepted by the {@code internalformat} parameter of RenderbufferStorageEXT.  */
	inline static public var GL_STENCIL_INDEX8_EXT:Int = 36168;
/** Accepted by the {@code internalformat} parameter of RenderbufferStorageEXT.  */
	inline static public var GL_STENCIL_INDEX16_EXT:Int = 36169;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameterivEXT.  */
	inline static public var GL_RENDERBUFFER_WIDTH_EXT:Int = 36162;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameterivEXT.  */
	inline static public var GL_RENDERBUFFER_HEIGHT_EXT:Int = 36163;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameterivEXT.  */
	inline static public var GL_RENDERBUFFER_INTERNAL_FORMAT_EXT:Int = 36164;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameterivEXT.  */
	inline static public var GL_RENDERBUFFER_RED_SIZE_EXT:Int = 36176;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameterivEXT.  */
	inline static public var GL_RENDERBUFFER_GREEN_SIZE_EXT:Int = 36177;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameterivEXT.  */
	inline static public var GL_RENDERBUFFER_BLUE_SIZE_EXT:Int = 36178;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameterivEXT.  */
	inline static public var GL_RENDERBUFFER_ALPHA_SIZE_EXT:Int = 36179;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameterivEXT.  */
	inline static public var GL_RENDERBUFFER_DEPTH_SIZE_EXT:Int = 36180;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameterivEXT.  */
	inline static public var GL_RENDERBUFFER_STENCIL_SIZE_EXT:Int = 36181;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT:Int = 36048;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT:Int = 36049;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT:Int = 36050;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT:Int = 36051;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT:Int = 36052;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT0_EXT:Int = 36064;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT1_EXT:Int = 36065;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT2_EXT:Int = 36066;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT3_EXT:Int = 36067;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT4_EXT:Int = 36068;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT5_EXT:Int = 36069;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT6_EXT:Int = 36070;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT7_EXT:Int = 36071;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT8_EXT:Int = 36072;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT9_EXT:Int = 36073;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT10_EXT:Int = 36074;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT11_EXT:Int = 36075;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT12_EXT:Int = 36076;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT13_EXT:Int = 36077;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT14_EXT:Int = 36078;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_COLOR_ATTACHMENT15_EXT:Int = 36079;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_DEPTH_ATTACHMENT_EXT:Int = 36096;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT, and GetFramebufferAttachmentParameterivEXT.  */
	inline static public var GL_STENCIL_ATTACHMENT_EXT:Int = 36128;
/** Returned by CheckFramebufferStatusEXT().  */
	inline static public var GL_FRAMEBUFFER_COMPLETE_EXT:Int = 36053;
/** Returned by CheckFramebufferStatusEXT().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT:Int = 36054;
/** Returned by CheckFramebufferStatusEXT().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT:Int = 36055;
/** Returned by CheckFramebufferStatusEXT().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT:Int = 36057;
/** Returned by CheckFramebufferStatusEXT().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT:Int = 36058;
/** Returned by CheckFramebufferStatusEXT().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT:Int = 36059;
/** Returned by CheckFramebufferStatusEXT().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT:Int = 36060;
/** Returned by CheckFramebufferStatusEXT().  */
	inline static public var GL_FRAMEBUFFER_UNSUPPORTED_EXT:Int = 36061;
/** Accepted by GetIntegerv().  */
	inline static public var GL_FRAMEBUFFER_BINDING_EXT:Int = 36006;
/** Accepted by GetIntegerv().  */
	inline static public var GL_RENDERBUFFER_BINDING_EXT:Int = 36007;
/** Accepted by GetIntegerv().  */
	inline static public var GL_MAX_COLOR_ATTACHMENTS_EXT:Int = 36063;
/** Accepted by GetIntegerv().  */
	inline static public var GL_MAX_RENDERBUFFER_SIZE_EXT:Int = 34024;
/** Returned by GetError().  */
	inline static public var GL_INVALID_FRAMEBUFFER_OPERATION_EXT:Int = 1286;
/** Function address.  */
	public var IsRenderbufferEXT:haxe.Int64;
/** Function address.  */
	public var BindRenderbufferEXT:haxe.Int64;
/** Function address.  */
	public var DeleteRenderbuffersEXT:haxe.Int64;
/** Function address.  */
	public var GenRenderbuffersEXT:haxe.Int64;
/** Function address.  */
	public var RenderbufferStorageEXT:haxe.Int64;
/** Function address.  */
	public var GetRenderbufferParameterivEXT:haxe.Int64;
/** Function address.  */
	public var IsFramebufferEXT:haxe.Int64;
/** Function address.  */
	public var BindFramebufferEXT:haxe.Int64;
/** Function address.  */
	public var DeleteFramebuffersEXT:haxe.Int64;
/** Function address.  */
	public var GenFramebuffersEXT:haxe.Int64;
/** Function address.  */
	public var CheckFramebufferStatusEXT:haxe.Int64;
/** Function address.  */
	public var FramebufferTexture1DEXT:haxe.Int64;
/** Function address.  */
	public var FramebufferTexture2DEXT:haxe.Int64;
/** Function address.  */
	public var FramebufferTexture3DEXT:haxe.Int64;
/** Function address.  */
	public var FramebufferRenderbufferEXT:haxe.Int64;
/** Function address.  */
	public var GetFramebufferAttachmentParameterivEXT:haxe.Int64;
/** Function address.  */
	public var GenerateMipmapEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Single return value version of: {@link #glGetRenderbufferParameterivEXT GetRenderbufferParameterivEXT}  */
	static public function glGetRenderbufferParameteriEXT(target:Int,pname:Int):Int;
/**
 * 
 *
 * @param target 
 */
	static public function glCheckFramebufferStatusEXT(target:Int):Int;
/** JNI method for {@link #glCheckFramebufferStatusEXT CheckFramebufferStatusEXT}  */
	static public function nglCheckFramebufferStatusEXT(target:Int,__functionAddress:haxe.Int64):Int;
/**
 * 
 *
 * @param target 
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glGetRenderbufferParameterivEXT GetRenderbufferParameterivEXT}  */
	static public function glGetRenderbufferParameterivEXT(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetFramebufferAttachmentParameterivEXT GetFramebufferAttachmentParameterivEXT}  */
	static public function glGetFramebufferAttachmentParameteriEXT(target:Int,attachment:Int,pname:Int):Int;
/** JNI method for {@link #glFramebufferTexture2DEXT FramebufferTexture2DEXT}  */
	static public function nglFramebufferTexture2DEXT(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param target     
 * @param attachment 
 * @param pname      
 * @param params     
 */
/** Alternative version of: {@link #glGetFramebufferAttachmentParameterivEXT GetFramebufferAttachmentParameterivEXT}  */
	static public function glGetFramebufferAttachmentParameterivEXT(target:Int,attachment:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,attachment:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param target     
 * @param attachment 
 * @param textarget  
 * @param texture    
 * @param level      
 * @param zoffset    
 */
	static public function glFramebufferTexture3DEXT(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int,zoffset:Int):Void;
/** Single value version of: {@link #glDeleteFramebuffersEXT DeleteFramebuffersEXT}  */
/** Alternative version of: {@link #glDeleteFramebuffersEXT DeleteFramebuffersEXT}  */
/**
 * 
 *
 * @param n            
 * @param framebuffers 
 */
	static public function glDeleteFramebuffersEXT(n:Int,framebuffers:java.nio.ByteBuffer):Void;
	@:overload(function (framebuffer:Int):Void {})
	@:overload(function (framebuffers:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param target             
 * @param attachment         
 * @param renderbuffertarget 
 * @param renderbuffer       
 */
	static public function glFramebufferRenderbufferEXT(target:Int,attachment:Int,renderbuffertarget:Int,renderbuffer:Int):Void;
/** Unsafe version of {@link #glGenFramebuffersEXT GenFramebuffersEXT}  */
/** JNI method for {@link #glGenFramebuffersEXT GenFramebuffersEXT}  */
	static public function nglGenFramebuffersEXT(n:Int,framebuffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,framebuffers:haxe.Int64):Void {})
/** JNI method for {@link #glRenderbufferStorageEXT RenderbufferStorageEXT}  */
	static public function nglRenderbufferStorageEXT(target:Int,internalformat:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBindRenderbufferEXT BindRenderbufferEXT}  */
	static public function nglBindRenderbufferEXT(target:Int,renderbuffer:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGenRenderbuffersEXT GenRenderbuffersEXT}  */
/** JNI method for {@link #glGenRenderbuffersEXT GenRenderbuffersEXT}  */
	static public function nglGenRenderbuffersEXT(n:Int,renderbuffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,renderbuffers:haxe.Int64):Void {})
/**
 * 
 *
 * @param framebuffer 
 */
	static public function glIsFramebufferEXT(framebuffer:Int):Bool;
/**
 * 
 *
 * @param target       
 * @param renderbuffer 
 */
	static public function glBindRenderbufferEXT(target:Int,renderbuffer:Int):Void;
/** JNI method for {@link #glFramebufferTexture3DEXT FramebufferTexture3DEXT}  */
	static public function nglFramebufferTexture3DEXT(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int,zoffset:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param target     
 * @param attachment 
 * @param textarget  
 * @param texture    
 * @param level      
 */
	static public function glFramebufferTexture2DEXT(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int):Void;
/**
 * 
 *
 * @param target 
 */
	static public function glGenerateMipmapEXT(target:Int):Void;
/**
 * 
 *
 * @param renderbuffer 
 */
	static public function glIsRenderbufferEXT(renderbuffer:Int):Bool;
/**
 * 
 *
 * @param target         
 * @param internalformat 
 * @param width          
 * @param height         
 */
	static public function glRenderbufferStorageEXT(target:Int,internalformat:Int,width:Int,height:Int):Void;
/** JNI method for {@link #glIsRenderbufferEXT IsRenderbufferEXT}  */
	static public function nglIsRenderbufferEXT(renderbuffer:Int,__functionAddress:haxe.Int64):Bool;
/**
 * 
 *
 * @param target     
 * @param attachment 
 * @param textarget  
 * @param texture    
 * @param level      
 */
	static public function glFramebufferTexture1DEXT(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int):Void;
/** Unsafe version of {@link #glGetFramebufferAttachmentParameterivEXT GetFramebufferAttachmentParameterivEXT}  */
/** JNI method for {@link #glGetFramebufferAttachmentParameterivEXT GetFramebufferAttachmentParameterivEXT}  */
	static public function nglGetFramebufferAttachmentParameterivEXT(target:Int,attachment:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,attachment:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glDeleteRenderbuffersEXT DeleteRenderbuffersEXT}  */
/** JNI method for {@link #glDeleteRenderbuffersEXT DeleteRenderbuffersEXT}  */
	static public function nglDeleteRenderbuffersEXT(n:Int,renderbuffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,renderbuffers:haxe.Int64):Void {})
/** Single return value version of: {@link #glGenFramebuffersEXT GenFramebuffersEXT}  */
/** Alternative version of: {@link #glGenFramebuffersEXT GenFramebuffersEXT}  */
/**
 * 
 *
 * @param n            
 * @param framebuffers 
 */
	static public function glGenFramebuffersEXT(n:Int,framebuffers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (framebuffers:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param target      
 * @param framebuffer 
 */
	static public function glBindFramebufferEXT(target:Int,framebuffer:Int):Void;
/** JNI method for {@link #glFramebufferRenderbufferEXT FramebufferRenderbufferEXT}  */
	static public function nglFramebufferRenderbufferEXT(target:Int,attachment:Int,renderbuffertarget:Int,renderbuffer:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBindFramebufferEXT BindFramebufferEXT}  */
	static public function nglBindFramebufferEXT(target:Int,framebuffer:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glDeleteFramebuffersEXT DeleteFramebuffersEXT}  */
/** JNI method for {@link #glDeleteFramebuffersEXT DeleteFramebuffersEXT}  */
	static public function nglDeleteFramebuffersEXT(n:Int,framebuffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,framebuffers:haxe.Int64):Void {})
/** Single return value version of: {@link #glGenRenderbuffersEXT GenRenderbuffersEXT}  */
/** Alternative version of: {@link #glGenRenderbuffersEXT GenRenderbuffersEXT}  */
/**
 * 
 *
 * @param n             
 * @param renderbuffers 
 */
	static public function glGenRenderbuffersEXT(n:Int,renderbuffers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (renderbuffers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetRenderbufferParameterivEXT GetRenderbufferParameterivEXT}  */
/** JNI method for {@link #glGetRenderbufferParameterivEXT GetRenderbufferParameterivEXT}  */
	static public function nglGetRenderbufferParameterivEXT(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glFramebufferTexture1DEXT FramebufferTexture1DEXT}  */
	static public function nglFramebufferTexture1DEXT(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int,__functionAddress:haxe.Int64):Void;
/** Returns the {@link EXTFramebufferObject} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTFramebufferObject;
/** JNI method for {@link #glGenerateMipmapEXT GenerateMipmapEXT}  */
	static public function nglGenerateMipmapEXT(target:Int,__functionAddress:haxe.Int64):Void;
/** Single value version of: {@link #glDeleteRenderbuffersEXT DeleteRenderbuffersEXT}  */
/** Alternative version of: {@link #glDeleteRenderbuffersEXT DeleteRenderbuffersEXT}  */
/**
 * 
 *
 * @param n             
 * @param renderbuffers 
 */
	static public function glDeleteRenderbuffersEXT(n:Int,renderbuffers:java.nio.ByteBuffer):Void;
	@:overload(function (renderbuffer:Int):Void {})
	@:overload(function (renderbuffers:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glIsFramebufferEXT IsFramebufferEXT}  */
	static public function nglIsFramebufferEXT(framebuffer:Int,__functionAddress:haxe.Int64):Bool;

}
