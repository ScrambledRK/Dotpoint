package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBRobustness")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/robustness.txt">ARB_robustness</a> extension.
 * 
 * <p>Several recent trends in how OpenGL integrates into modern computer systems have created new requirements for robustness and security for OpenGL
 * rendering contexts.</p>
 * 
 * <p>Additionally GPU architectures now support hardware fault detection; for example, video memory supporting ECC (error correcting codes) and error
 * detection. OpenGL contexts should be capable of recovering from hardware faults such as uncorrectable memory errors. Along with recovery from such
 * hardware faults, the recovery mechanism can also allow recovery from video memory access exceptions and system software failures. System software
 * failures can be due to device changes or driver failures.</p>
 * 
 * <p>Demands for increased software robustness and concerns about malware exploiting buffer overflows have lead API designers to provide additional "safe"
 * APIs that bound the amount of data returned by an API query. For example, the safer "snprintf" or "_snprintf" routines are prefered over "sprintf".</p>
 * 
 * <p>The OpenGL API has many such robustness perils. OpenGL queries return (write) some number of bytes to a buffer indicated by a pointer parameter. The
 * exact number of bytes written by existing OpenGL queries is not expressed directly by any specific parameter; instead the number of bytes returned is a
 * complex function of one or more query arguments, sometimes context state such as pixel store modes or the active texture selector, and the current state
 * of an object (such as a texture level's number of total texels). By the standards of modern API design, such queries are not "safe". Making these
 * queries safer involves introducing a new query API with an additional parameter that specifies the number of bytes in the buffer and never writing bytes
 * beyond that limit.</p>
 * 
 * <p>Multi-threaded use of OpenGL contexts in a "share group" allow sharing of objects such as textures and programs. Such sharing in conjunction with
 * concurrent OpenGL commands stream execution by two or more contexts introduces hazards whereby one context can change objects in ways that can cause
 * buffer overflows for another context's OpenGL queries.</p>
 * 
 * <p>The original {@link ARBVertexBufferObject ARB_vertex_buffer_object} extension includes an issue that explicitly states program termination is allowed when out-of-bounds
 * vertex buffer object fetches occur. Modern GPUs capable of DirectX 10 enforce the well-defined behavior of always returning zero values for indices or
 * non-fixed components in this case. Older GPUs may require extra checks to enforce well-defined (and termination free) behavior, but this expense is
 * warranted when processing potentially untrusted content.</p>
 * 
 * <p>The intent of this extension is to address some specific robustness goals:
 * <ul>
 * <li>For all existing OpenGL queries, provide additional "safe" APIs that limit data written to user pointers to a buffer size in bytes that is an
 * explicit additional parameter of the query.</li>
 * <li>Provide a mechanism for an OpenGL application to learn about graphics resets that affect the context. When a graphics reset occurs, the OpenGL
 * context becomes unusable and the application must create a new context to continue operation. Detecting a graphics reset happens through an
 * inexpensive query.</li>
 * <li>Provide an enable to guarantee that out-of-bounds buffer object accesses by the GPU will have deterministic behavior and preclude application
 * instability or termination due to an incorrect buffer access. Such accesses include vertex buffer fetches of attributes and indices, and indexed
 * reads of uniforms or parameters from buffers.</li>
 * </ul></p>
 * 
 * <p>In one anticipated usage model, WebGL contexts may make use of these robust features to grant greater stability when using untrusted code. WebGL
 * contexts cannot call OpenGL commands directly but rather must route all OpenGL API calls through the web browser. It is then the web browser that
 * configures the context, using the commands in this extension, to enforce safe behavior. In this scenario, the WebGL content cannot specify or change the
 * use of this extension's features itself; the web browser enforces this policy.</p>
 * 
 * <p>There are other well-known robustness issues with the OpenGL API which this extension does not address. For example, selector-based OpenGL commands are
 * a well-known source of programming errors. Code to manipulate texture state may assume the active texture selector is set appropriately when an
 * intervening function call obscures a change to the active texture state resulting in incorrectly updated or queried state. The
 * <a href="http://www.opengl.org/registry/specs/EXT/direct_state_access.txt">EXT_direct_state_access</a> extension introduces selector-free OpenGL commands and queries to address that particular issue so this
 * extension does not.</p>
 * 
 * <p>The intent of this extension is NOT to deprecate any existing API and thereby introduce compatibility issues and coding burdens on existing code, but
 * rather to provide new APIs to ensure a level of robustness commensurate with the expectations of modern applications of OpenGL.</p>
 */
extern class ARBRobustness 
{
/** Returned by GetGraphicsResetStatusARB.  */
	inline static public var GL_NO_ERROR:Int = 0;
/** Returned by GetGraphicsResetStatusARB.  */
	inline static public var GL_GUILTY_CONTEXT_RESET_ARB:Int = 33363;
/** Returned by GetGraphicsResetStatusARB.  */
	inline static public var GL_INNOCENT_CONTEXT_RESET_ARB:Int = 33364;
/** Returned by GetGraphicsResetStatusARB.  */
	inline static public var GL_UNKNOWN_CONTEXT_RESET_ARB:Int = 33365;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_RESET_NOTIFICATION_STRATEGY_ARB:Int = 33366;
/** Returned by GetIntegerv and related simple queries when {@code value} is RESET_NOTIFICATION_STRATEGY_ARB.  */
	inline static public var GL_LOSE_CONTEXT_ON_RESET_ARB:Int = 33362;
/** Returned by GetIntegerv and related simple queries when {@code value} is RESET_NOTIFICATION_STRATEGY_ARB.  */
	inline static public var GL_NO_RESET_NOTIFICATION_ARB:Int = 33377;
/** Returned by GetIntegerv when {@code pname} is CONTEXT_FLAGS.  */
	inline static public var GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB:Int = 4;
/** Function address.  */
	public var GetGraphicsResetStatusARB:haxe.Int64;
/** Function address.  */
	public var GetnMapdvARB:haxe.Int64;
/** Function address.  */
	public var GetnMapfvARB:haxe.Int64;
/** Function address.  */
	public var GetnMapivARB:haxe.Int64;
/** Function address.  */
	public var GetnPixelMapfvARB:haxe.Int64;
/** Function address.  */
	public var GetnPixelMapuivARB:haxe.Int64;
/** Function address.  */
	public var GetnPixelMapusvARB:haxe.Int64;
/** Function address.  */
	public var GetnPolygonStippleARB:haxe.Int64;
/** Function address.  */
	public var GetnTexImageARB:haxe.Int64;
/** Function address.  */
	public var ReadnPixelsARB:haxe.Int64;
/** Function address.  */
	public var GetnColorTableARB:haxe.Int64;
/** Function address.  */
	public var GetnConvolutionFilterARB:haxe.Int64;
/** Function address.  */
	public var GetnSeparableFilterARB:haxe.Int64;
/** Function address.  */
	public var GetnHistogramARB:haxe.Int64;
/** Function address.  */
	public var GetnMinmaxARB:haxe.Int64;
/** Function address.  */
	public var GetnCompressedTexImageARB:haxe.Int64;
/** Function address.  */
	public var GetnUniformfvARB:haxe.Int64;
/** Function address.  */
	public var GetnUniformivARB:haxe.Int64;
/** Function address.  */
	public var GetnUniformuivARB:haxe.Int64;
/** Function address.  */
	public var GetnUniformdvARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Alternative version of: {@link #glGetnMapivARB GetnMapivARB}  */
/**
 * Robust version of {@link GL11#glGetMapiv GetMapiv}
 *
 * @param target  the evaluator target. One of:<br>{@link GL11#GL_MAP1_VERTEX_3 MAP1_VERTEX_3}, {@link GL11#GL_MAP1_VERTEX_4 MAP1_VERTEX_4}, {@link GL11#GL_MAP1_COLOR_4 MAP1_COLOR_4}, {@link GL11#GL_MAP1_NORMAL MAP1_NORMAL}, {@link GL11#GL_MAP1_TEXTURE_COORD_1 MAP1_TEXTURE_COORD_1}, {@link GL11#GL_MAP1_TEXTURE_COORD_2 MAP1_TEXTURE_COORD_2}, {@link GL11#GL_MAP1_TEXTURE_COORD_3 MAP1_TEXTURE_COORD_3}, {@link GL11#GL_MAP1_TEXTURE_COORD_4 MAP1_TEXTURE_COORD_4}, {@link GL11#GL_MAP2_VERTEX_3 MAP2_VERTEX_3}, {@link GL11#GL_MAP2_VERTEX_4 MAP2_VERTEX_4}, {@link GL11#GL_MAP2_COLOR_4 MAP2_COLOR_4}, {@link GL11#GL_MAP2_NORMAL MAP2_NORMAL}, {@link GL11#GL_MAP2_TEXTURE_COORD_1 MAP2_TEXTURE_COORD_1}, {@link GL11#GL_MAP2_TEXTURE_COORD_2 MAP2_TEXTURE_COORD_2}, {@link GL11#GL_MAP2_TEXTURE_COORD_3 MAP2_TEXTURE_COORD_3}, {@link GL11#GL_MAP2_TEXTURE_COORD_4 MAP2_TEXTURE_COORD_4}
 * @param query   the information to query. One of:<br>{@link GL11#GL_ORDER ORDER}, {@link GL11#GL_COEFF COEFF}, {@link GL11#GL_DOMAIN DOMAIN}
 * @param bufSize the maximum number of bytes to write into {@code data}
 * @param data    a buffer in which to place the returned data
 */
	static public function glGetnMapivARB(target:Int,query:Int,bufSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,query:Int,data:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glGetnPolygonStippleARB GetnPolygonStippleARB}  */
/** Buffer object offset version of: {@link #glGetnPolygonStippleARB GetnPolygonStippleARB}  */
/**
 * Robust version of {@link GL11#glGetPolygonStipple GetPolygonStipple}
 *
 * @param bufSize the maximum number of bytes to write into {@code pattern}
 * @param pattern a buffer in which to place the returned pattern
 */
	static public function glGetnPolygonStippleARB(bufSize:Int,pattern:java.nio.ByteBuffer):Void;
	@:overload(function (pattern:java.nio.ByteBuffer):Void {})
	@:overload(function (bufSize:Int,patternOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnHistogramARB GetnHistogramARB}  */
/** JNI method for {@link #glGetnHistogramARB GetnHistogramARB}  */
	static public function nglGetnHistogramARB(target:Int,reset:Bool,format:Int,type:Int,bufSize:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,reset:Bool,format:Int,type:Int,bufSize:Int,values:haxe.Int64):Void {})
/** DoubleBuffer version of: {@link #glGetnTexImageARB GetnTexImageARB}  */
/** FloatBuffer version of: {@link #glGetnTexImageARB GetnTexImageARB}  */
/** IntBuffer version of: {@link #glGetnTexImageARB GetnTexImageARB}  */
/** ShortBuffer version of: {@link #glGetnTexImageARB GetnTexImageARB}  */
/** Buffer object offset version of: {@link #glGetnTexImageARB GetnTexImageARB}  */
/**
 * Robust version of {@link GL11#glGetTexImage GetTexImage}
 *
 * @param tex     the texture (or texture face) to be obtained. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_X TEXTURE_CUBE_MAP_POSITIVE_X}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_X TEXTURE_CUBE_MAP_NEGATIVE_X}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_Y TEXTURE_CUBE_MAP_POSITIVE_Y}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_Y TEXTURE_CUBE_MAP_NEGATIVE_Y}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_Z TEXTURE_CUBE_MAP_POSITIVE_Z}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_Z TEXTURE_CUBE_MAP_NEGATIVE_Z}
 * @param level   the level-of-detail number
 * @param format  the pixel format. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the pixel type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param bufSize the maximum number of bytes to write into {@code img}
 * @param img     a buffer in which to place the returned data
 */
	static public function glGetnTexImageARB(tex:Int,level:Int,format:Int,type:Int,bufSize:Int,img:java.nio.ByteBuffer):Void;
	@:overload(function (tex:Int,level:Int,format:Int,type:Int,img:java.nio.DoubleBuffer):Void {})
	@:overload(function (tex:Int,level:Int,format:Int,type:Int,img:java.nio.FloatBuffer):Void {})
	@:overload(function (tex:Int,level:Int,format:Int,type:Int,img:java.nio.IntBuffer):Void {})
	@:overload(function (tex:Int,level:Int,format:Int,type:Int,img:java.nio.ShortBuffer):Void {})
	@:overload(function (tex:Int,level:Int,format:Int,type:Int,bufSize:Int,imgOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glReadnPixelsARB ReadnPixelsARB}  */
/** JNI method for {@link #glReadnPixelsARB ReadnPixelsARB}  */
	static public function nglReadnPixelsARB(x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,bufSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,bufSize:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnColorTableARB GetnColorTableARB}  */
/** JNI method for {@link #glGetnColorTableARB GetnColorTableARB}  */
	static public function nglGetnColorTableARB(target:Int,format:Int,type:Int,bufSize:Int,table:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,format:Int,type:Int,bufSize:Int,table:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetnHistogramARB GetnHistogramARB}  */
/** Buffer object offset version of: {@link #glGetnHistogramARB GetnHistogramARB}  */
/**
 * Robust version of {@link ARBImaging#glGetHistogram GetHistogram}
 *
 * @param target  the histogram target. Must be:<br>{@link ARBImaging#GL_HISTOGRAM HISTOGRAM}
 * @param reset   if {@link GL11#GL_TRUE TRUE}, then all counters of all elements of the histogram are reset to zero. Counters are reset whether returned or not.
 * @param format  the pixel data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type    the pixel data types. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param bufSize the maximum number of bytes to write into {@code values}
 * @param values  a buffer in which to place the returned data
 */
	static public function glGetnHistogramARB(target:Int,reset:Bool,format:Int,type:Int,bufSize:Int,values:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,reset:Bool,format:Int,type:Int,values:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,reset:Bool,format:Int,type:Int,bufSize:Int,valuesOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnPixelMapuivARB GetnPixelMapuivARB}  */
/** JNI method for {@link #glGetnPixelMapuivARB GetnPixelMapuivARB}  */
	static public function nglGetnPixelMapuivARB(map:Int,bufSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (map:Int,bufSize:Int,data:haxe.Int64):Void {})
/** JNI method for {@link #glGetGraphicsResetStatusARB GetGraphicsResetStatusARB}  */
	static public function nglGetGraphicsResetStatusARB(__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #glGetnMapfvARB GetnMapfvARB}  */
/** JNI method for {@link #glGetnMapfvARB GetnMapfvARB}  */
	static public function nglGetnMapfvARB(target:Int,query:Int,bufSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,query:Int,bufSize:Int,data:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetnMapivARB GetnMapivARB}  */
	static public function glGetnMapiARB(target:Int,query:Int):Int;
/** Unsafe version of {@link #glGetnPixelMapusvARB GetnPixelMapusvARB}  */
/** JNI method for {@link #glGetnPixelMapusvARB GetnPixelMapusvARB}  */
	static public function nglGetnPixelMapusvARB(map:Int,bufSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (map:Int,bufSize:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnConvolutionFilterARB GetnConvolutionFilterARB}  */
/** JNI method for {@link #glGetnConvolutionFilterARB GetnConvolutionFilterARB}  */
	static public function nglGetnConvolutionFilterARB(target:Int,format:Int,type:Int,bufSize:Int,image:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,format:Int,type:Int,bufSize:Int,image:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetnUniformivARB GetnUniformivARB}  */
/**
 * Robust version of {@link GL20#glGetUniformiv GetUniformiv}
 *
 * @param program  the program object to be queried
 * @param location the location of the uniform variable to be queried
 * @param bufSize  the maximum number of bytes to write into {@code params}
 * @param params   a buffer in which to place the returned data
 */
	static public function glGetnUniformivARB(program:Int,location:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glGetnMapfvARB GetnMapfvARB}  */
/**
 * Robust version of {@link GL11#glGetMapfv GetMapfv}
 *
 * @param target  the evaluator map
 * @param query   the information to query
 * @param bufSize the maximum number of bytes to write into {@code data}
 * @param data    a buffer in which to place the returned data
 */
	static public function glGetnMapfvARB(target:Int,query:Int,bufSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,query:Int,data:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glGetnSeparableFilterARB GetnSeparableFilterARB}  */
/** Buffer object offset version of: {@link #glGetnSeparableFilterARB GetnSeparableFilterARB}  */
/** Buffer object offset version of: {@link #glGetnSeparableFilterARB GetnSeparableFilterARB}  */
/**
 * Robust version of {@link ARBImaging#glGetSeparableFilter GetSeparableFilter}
 *
 * @param target        the filter target. Must be:<br>{@link ARBImaging#GL_SEPARABLE_2D SEPARABLE_2D}
 * @param format        the filter data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type          the filter data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param rowBufSize    the maximum number of bytes to write into {@code row}
 * @param row           a buffer in which to return the filter row
 * @param columnBufSize the maximum number of bytes to write into {@code column}
 * @param column        a buffer in which to return the filter column
 * @param span          
 */
	static public function glGetnSeparableFilterARB(target:Int,format:Int,type:Int,rowBufSize:Int,row:java.nio.ByteBuffer,columnBufSize:Int,column:java.nio.ByteBuffer,span:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,format:Int,type:Int,row:java.nio.ByteBuffer,column:java.nio.ByteBuffer,span:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,format:Int,type:Int,rowBufSize:Int,rowOffset:haxe.Int64,columnBufSize:Int,column:java.nio.ByteBuffer,span:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,format:Int,type:Int,rowBufSize:Int,row:java.nio.ByteBuffer,columnBufSize:Int,columnOffset:haxe.Int64,span:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glGetnUniformuivARB GetnUniformuivARB}  */
/**
 * Robust version of {@link GL30#glGetUniformuiv GetUniformuiv}
 *
 * @param program  the program object to be queried
 * @param location the location of the uniform variable to be queried
 * @param bufSize  the maximum number of bytes to write into {@code params}
 * @param params   a buffer in which to place the returned data
 */
	static public function glGetnUniformuivARB(program:Int,location:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.IntBuffer):Void {})
/** FloatBuffer version of: {@link #glGetnColorTableARB GetnColorTableARB}  */
/** IntBuffer version of: {@link #glGetnColorTableARB GetnColorTableARB}  */
/** ShortBuffer version of: {@link #glGetnColorTableARB GetnColorTableARB}  */
/** Buffer object offset version of: {@link #glGetnColorTableARB GetnColorTableARB}  */
/**
 * Robust version of {@link ARBImaging#glGetColorTable GetColorTable}
 *
 * @param target  the color table target. One of:<br>{@link ARBImaging#GL_COLOR_TABLE COLOR_TABLE}, {@link ARBImaging#GL_POST_CONVOLUTION_COLOR_TABLE POST_CONVOLUTION_COLOR_TABLE}, {@link ARBImaging#GL_POST_COLOR_MATRIX_COLOR_TABLE POST_COLOR_MATRIX_COLOR_TABLE}
 * @param format  the color data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type    the color data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param bufSize the maximum number of bytes to write into {@code table}
 * @param table   a buffer in which to place the returned data
 */
	static public function glGetnColorTableARB(target:Int,format:Int,type:Int,bufSize:Int,table:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,format:Int,type:Int,table:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,format:Int,type:Int,table:java.nio.IntBuffer):Void {})
	@:overload(function (target:Int,format:Int,type:Int,table:java.nio.ShortBuffer):Void {})
	@:overload(function (target:Int,format:Int,type:Int,bufSize:Int,tableOffset:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetnConvolutionFilterARB GetnConvolutionFilterARB}  */
/** Buffer object offset version of: {@link #glGetnConvolutionFilterARB GetnConvolutionFilterARB}  */
/**
 * Robust version of {@link ARBImaging#glGetConvolutionFilter GetConvolutionFilter}
 *
 * @param target  the convolution target. One of:<br>{@link ARBImaging#GL_CONVOLUTION_1D CONVOLUTION_1D}, {@link ARBImaging#GL_CONVOLUTION_2D CONVOLUTION_2D}
 * @param format  the filter data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type    the filter data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param bufSize the maximum number of bytes to write into {@code image}
 * @param image   a buffer in which to place the returned data
 */
	static public function glGetnConvolutionFilterARB(target:Int,format:Int,type:Int,bufSize:Int,image:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,format:Int,type:Int,image:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,format:Int,type:Int,bufSize:Int,imageOffset:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetnUniformdvARB GetnUniformdvARB}  */
/**
 * Robust version of {@link GL40#glGetUniformdv GetUniformdv}
 *
 * @param program  the program object to be queried
 * @param location the location of the uniform variable to be queried
 * @param bufSize  the maximum number of bytes to write into {@code params}
 * @param params   a buffer in which to place the returned data
 */
	static public function glGetnUniformdvARB(program:Int,location:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glGetnMinmaxARB GetnMinmaxARB}  */
/** JNI method for {@link #glGetnMinmaxARB GetnMinmaxARB}  */
	static public function nglGetnMinmaxARB(target:Int,reset:Bool,format:Int,type:Int,bufSize:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,reset:Bool,format:Int,type:Int,bufSize:Int,values:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnUniformfvARB GetnUniformfvARB}  */
/** JNI method for {@link #glGetnUniformfvARB GetnUniformfvARB}  */
	static public function nglGetnUniformfvARB(program:Int,location:Int,bufSize:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,bufSize:Int,params:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetnCompressedTexImageARB GetnCompressedTexImageARB}  */
/** Buffer object offset version of: {@link #glGetnCompressedTexImageARB GetnCompressedTexImageARB}  */
/**
 * Robust version of {@link GL13#glGetCompressedTexImage GetCompressedTexImage}
 *
 * @param target  the target texture. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_X TEXTURE_CUBE_MAP_POSITIVE_X}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_X TEXTURE_CUBE_MAP_NEGATIVE_X}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_Y TEXTURE_CUBE_MAP_POSITIVE_Y}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_Y TEXTURE_CUBE_MAP_NEGATIVE_Y}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_Z TEXTURE_CUBE_MAP_POSITIVE_Z}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_Z TEXTURE_CUBE_MAP_NEGATIVE_Z}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}
 * @param level   the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param bufSize the maximum number of bytes to write into {@code img}
 * @param img     a buffer in which to place the returned data
 */
	static public function glGetnCompressedTexImageARB(target:Int,level:Int,bufSize:Int,img:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,img:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,bufSize:Int,imgOffset:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetnMinmaxARB GetnMinmaxARB}  */
/** Buffer object offset version of: {@link #glGetnMinmaxARB GetnMinmaxARB}  */
/**
 * Robust version of {@link ARBImaging#glGetMinmax GetMinmax}
 *
 * @param target  the minmax target. Must be:<br>{@link ARBImaging#GL_MINMAX MINMAX}
 * @param reset   If {@link GL11#GL_TRUE TRUE}, then each minimum value is reset to the maximum representable value, and each maximum value is reset to the minimum
 *                representable value. All values are reset, whether returned or not.
 * @param format  the pixel data format. One of:<br>{@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}
 * @param type    the pixel data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param bufSize the maximum number of bytes to write into {@code values}
 * @param values  a buffer in which to place the returned data
 */
	static public function glGetnMinmaxARB(target:Int,reset:Bool,format:Int,type:Int,bufSize:Int,values:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,reset:Bool,format:Int,type:Int,values:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,reset:Bool,format:Int,type:Int,bufSize:Int,valuesOffset:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetnUniformfvARB GetnUniformfvARB}  */
	static public function glGetnUniformfARB(program:Int,location:Int):Float;
/** Unsafe version of {@link #glGetnCompressedTexImageARB GetnCompressedTexImageARB}  */
/** JNI method for {@link #glGetnCompressedTexImageARB GetnCompressedTexImageARB}  */
	static public function nglGetnCompressedTexImageARB(target:Int,level:Int,bufSize:Int,img:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,bufSize:Int,img:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetnUniformfvARB GetnUniformfvARB}  */
/**
 * Robust version of {@link GL20#glGetUniformfv GetUniformfv}
 *
 * @param program  the program object to be queried
 * @param location the location of the uniform variable to be queried
 * @param bufSize  the maximum number of bytes to write into {@code params}
 * @param params   a buffer in which to place the returned data
 */
	static public function glGetnUniformfvARB(program:Int,location:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.FloatBuffer):Void {})
/** Single return value version of: {@link #glGetnUniformdvARB GetnUniformdvARB}  */
	static public function glGetnUniformdARB(program:Int,location:Int):Float;
/** Unsafe version of {@link #glGetnTexImageARB GetnTexImageARB}  */
/** JNI method for {@link #glGetnTexImageARB GetnTexImageARB}  */
	static public function nglGetnTexImageARB(tex:Int,level:Int,format:Int,type:Int,bufSize:Int,img:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (tex:Int,level:Int,format:Int,type:Int,bufSize:Int,img:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnMapdvARB GetnMapdvARB}  */
/** JNI method for {@link #glGetnMapdvARB GetnMapdvARB}  */
	static public function nglGetnMapdvARB(target:Int,query:Int,bufSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,query:Int,bufSize:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnPolygonStippleARB GetnPolygonStippleARB}  */
/** JNI method for {@link #glGetnPolygonStippleARB GetnPolygonStippleARB}  */
	static public function nglGetnPolygonStippleARB(bufSize:Int,pattern:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (bufSize:Int,pattern:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnPixelMapfvARB GetnPixelMapfvARB}  */
/** JNI method for {@link #glGetnPixelMapfvARB GetnPixelMapfvARB}  */
	static public function nglGetnPixelMapfvARB(map:Int,bufSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (map:Int,bufSize:Int,data:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetnPixelMapuivARB GetnPixelMapuivARB}  */
/**
 * Robust version of {@link GL11#glGetPixelMapuiv GetPixelMapuiv}
 *
 * @param map     the pixel map parameter to query
 * @param bufSize the maximum number of bytes to write into {@code data}
 * @param data    a buffer in which to place the returned data
 */
	static public function glGetnPixelMapuivARB(map:Int,bufSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (map:Int,data:java.nio.IntBuffer):Void {})
/** FloatBuffer version of: {@link #glReadnPixelsARB ReadnPixelsARB}  */
/** IntBuffer version of: {@link #glReadnPixelsARB ReadnPixelsARB}  */
/** ShortBuffer version of: {@link #glReadnPixelsARB ReadnPixelsARB}  */
/** Buffer object offset version of: {@link #glReadnPixelsARB ReadnPixelsARB}  */
/**
 * Robust version of {@link GL11#glReadPixels ReadPixels}
 *
 * @param x       the left pixel coordinate
 * @param y       the lower pixel coordinate
 * @param width   the number of pixels to read in the x-dimension
 * @param height  the number of pixels to read in the y-dimension
 * @param format  the pixel format. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the pixel type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param bufSize the maximum number of bytes to write into {@code data}
 * @param data    a buffer in which to place the returned data
 */
	static public function glReadnPixelsARB(x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,bufSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
	@:overload(function (x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,data:java.nio.ShortBuffer):Void {})
	@:overload(function (x:Int,y:Int,width:Int,height:Int,format:Int,type:Int,bufSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnSeparableFilterARB GetnSeparableFilterARB}  */
/** JNI method for {@link #glGetnSeparableFilterARB GetnSeparableFilterARB}  */
	static public function nglGetnSeparableFilterARB(target:Int,format:Int,type:Int,rowBufSize:Int,row:haxe.Int64,columnBufSize:Int,column:haxe.Int64,span:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,format:Int,type:Int,rowBufSize:Int,row:haxe.Int64,columnBufSize:Int,column:haxe.Int64,span:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetnPixelMapfvARB GetnPixelMapfvARB}  */
/**
 * Robust version of {@link GL11#glGetPixelMapfv GetPixelMapfv}
 *
 * @param map     the pixel map parameter to query. One of:<br>{@link GL11#GL_PIXEL_MAP_I_TO_I PIXEL_MAP_I_TO_I}, {@link GL11#GL_PIXEL_MAP_S_TO_S PIXEL_MAP_S_TO_S}, {@link GL11#GL_PIXEL_MAP_I_TO_R PIXEL_MAP_I_TO_R}, {@link GL11#GL_PIXEL_MAP_I_TO_G PIXEL_MAP_I_TO_G}, {@link GL11#GL_PIXEL_MAP_I_TO_B PIXEL_MAP_I_TO_B}, {@link GL11#GL_PIXEL_MAP_I_TO_A PIXEL_MAP_I_TO_A}, {@link GL11#GL_PIXEL_MAP_R_TO_R PIXEL_MAP_R_TO_R}, {@link GL11#GL_PIXEL_MAP_G_TO_G PIXEL_MAP_G_TO_G}, {@link GL11#GL_PIXEL_MAP_B_TO_B PIXEL_MAP_B_TO_B}, {@link GL11#GL_PIXEL_MAP_A_TO_A PIXEL_MAP_A_TO_A}
 * @param bufSize the maximum number of bytes to write into {@code data}
 * @param data    a buffer in which to place the returned data
 */
	static public function glGetnPixelMapfvARB(map:Int,bufSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (map:Int,data:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glGetnUniformuivARB GetnUniformuivARB}  */
/** JNI method for {@link #glGetnUniformuivARB GetnUniformuivARB}  */
	static public function nglGetnUniformuivARB(program:Int,location:Int,bufSize:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,bufSize:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnUniformivARB GetnUniformivARB}  */
/** JNI method for {@link #glGetnUniformivARB GetnUniformivARB}  */
	static public function nglGetnUniformivARB(program:Int,location:Int,bufSize:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,bufSize:Int,params:haxe.Int64):Void {})
/**
 * The symbolic constant returned indicates if the GL context has been in a reset state at any point since the last call to {@code GetGraphicsResetStatusARB}.
 * {@link #GL_NO_ERROR NO_ERROR} indicates that the GL context has not been in a reset state since the last call. {@link #GL_GUILTY_CONTEXT_RESET_ARB GUILTY_CONTEXT_RESET_ARB} indicates that a reset has been
 * detected that is attributable to the current GL context. {@link #GL_INNOCENT_CONTEXT_RESET_ARB INNOCENT_CONTEXT_RESET_ARB} indicates a reset has been detected that is not attributable to the
 * current GL context. {@link #GL_UNKNOWN_CONTEXT_RESET_ARB UNKNOWN_CONTEXT_RESET_ARB} indicates a detected graphics reset whose cause is unknown.
 * 
 * <p>If a reset status other than {@link #GL_NO_ERROR NO_ERROR} is returned and subsequent calls return {@link #GL_NO_ERROR NO_ERROR}, the context reset was encountered and completed. If a reset
 * status is repeatedly returned, the context may be in the process of resetting.</p>
 * 
 * <p>Reset notification behavior is determined at context creation time, and may be queried by calling {@link GL11#glGetIntegerv GetIntegerv} with the symbolic constant
 * {@link #GL_RESET_NOTIFICATION_STRATEGY_ARB RESET_NOTIFICATION_STRATEGY_ARB}.</p>
 * 
 * <p>If the reset notification behavior is {@link #GL_NO_RESET_NOTIFICATION_ARB NO_RESET_NOTIFICATION_ARB}, then the implementation will never deliver notification of reset events, and
 * {@code GetGraphicsResetStatusARB} will always return {@link #GL_NO_ERROR NO_ERROR}.</p>
 * 
 * <p>If the behavior is {@link #GL_LOSE_CONTEXT_ON_RESET_ARB LOSE_CONTEXT_ON_RESET_ARB}, a graphics reset will result in the loss of all context state, requiring the recreation of all associated
 * objects. In this case {@code GetGraphicsResetStatusARB}. may return any of the values described above.</p>
 * 
 * <p>If a graphics reset notification occurs in a context, a notification must also occur in all other contexts which share objects with that context.</p>
 */
	static public function glGetGraphicsResetStatusARB():Int;
/** Alternative version of: {@link #glGetnPixelMapusvARB GetnPixelMapusvARB}  */
/**
 * Robust version of {@link GL11#glGetPixelMapusv GetPixelMapusv}
 *
 * @param map     the pixel map parameter to query
 * @param bufSize the maximum number of bytes to write into {@code data}
 * @param data    a buffer in which to place the returned data
 */
	static public function glGetnPixelMapusvARB(map:Int,bufSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (map:Int,data:java.nio.ShortBuffer):Void {})
/** Single return value version of: {@link #glGetnMapfvARB GetnMapfvARB}  */
	static public function glGetnMapfARB(target:Int,query:Int):Float;
/** Single return value version of: {@link #glGetnUniformivARB GetnUniformivARB}  */
	static public function glGetnUniformiARB(program:Int,location:Int):Int;
/** Single return value version of: {@link #glGetnUniformuivARB GetnUniformuivARB}  */
	static public function glGetnUniformuiARB(program:Int,location:Int):Int;
/** Returns the {@link ARBRobustness} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBRobustness;
/** Alternative version of: {@link #glGetnMapdvARB GetnMapdvARB}  */
/**
 * Robust version of {@link GL11#glGetMapdv GetMapdv}
 *
 * @param target  the evaluator map
 * @param query   the information to query
 * @param bufSize the maximum number of bytes to write into {@code data}
 * @param data    a buffer in which to place the returned data
 */
	static public function glGetnMapdvARB(target:Int,query:Int,bufSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,query:Int,data:java.nio.DoubleBuffer):Void {})
/** Single return value version of: {@link #glGetnMapdvARB GetnMapdvARB}  */
	static public function glGetnMapdARB(target:Int,query:Int):Float;
/** Unsafe version of {@link #glGetnUniformdvARB GetnUniformdvARB}  */
/** JNI method for {@link #glGetnUniformdvARB GetnUniformdvARB}  */
	static public function nglGetnUniformdvARB(program:Int,location:Int,bufSize:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,bufSize:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetnMapivARB GetnMapivARB}  */
/** JNI method for {@link #glGetnMapivARB GetnMapivARB}  */
	static public function nglGetnMapivARB(target:Int,query:Int,bufSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,query:Int,bufSize:Int,data:haxe.Int64):Void {})

}
