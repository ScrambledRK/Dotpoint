package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVVertexBufferUnifiedMemory")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/vertex_buffer_unified_memory.txt">NV_vertex_buffer_unified_memory</a> extension.
 * 
 * <p>This extension provides a mechanism to specify vertex attrib and element array locations using GPU addresses.</p>
 * 
 * <p>Binding vertex buffers is one of the most frequent and expensive operations in many GL applications, due to the cost of chasing pointers and binding
 * objects described in the Overview of {@link NVShaderBufferLoad NV_shader_buffer_load}. The intent of this extension is to enable a way for the application to specify
 * vertex attrib state that alleviates the overhead of object binds and driver memory management.</p>
 */
extern class NVVertexBufferUnifiedMemory 
{
/** Accepted by the {@code cap} parameter of DisableClientState, EnableClientState, IsEnabled.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV:Int = 36638;
/** Accepted by the {@code cap} parameter of DisableClientState, EnableClientState, IsEnabled.  */
	inline static public var GL_ELEMENT_ARRAY_UNIFIED_NV:Int = 36639;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64i_vNV.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV:Int = 36640;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64i_vNV.  */
	inline static public var GL_TEXTURE_COORD_ARRAY_ADDRESS_NV:Int = 36645;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64vNV.  */
	inline static public var GL_VERTEX_ARRAY_ADDRESS_NV:Int = 36641;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64vNV.  */
	inline static public var GL_NORMAL_ARRAY_ADDRESS_NV:Int = 36642;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64vNV.  */
	inline static public var GL_COLOR_ARRAY_ADDRESS_NV:Int = 36643;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64vNV.  */
	inline static public var GL_INDEX_ARRAY_ADDRESS_NV:Int = 36644;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64vNV.  */
	inline static public var GL_EDGE_FLAG_ARRAY_ADDRESS_NV:Int = 36646;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64vNV.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV:Int = 36647;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64vNV.  */
	inline static public var GL_FOG_COORD_ARRAY_ADDRESS_NV:Int = 36648;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64vNV.  */
	inline static public var GL_ELEMENT_ARRAY_ADDRESS_NV:Int = 36649;
/** Accepted by the {@code target} parameter of GetIntegeri_vNV.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV:Int = 36650;
/** Accepted by the {@code target} parameter of GetIntegeri_vNV.  */
	inline static public var GL_TEXTURE_COORD_ARRAY_LENGTH_NV:Int = 36655;
/** Accepted by the {@code value} parameter of GetIntegerv.  */
	inline static public var GL_VERTEX_ARRAY_LENGTH_NV:Int = 36651;
/** Accepted by the {@code value} parameter of GetIntegerv.  */
	inline static public var GL_NORMAL_ARRAY_LENGTH_NV:Int = 36652;
/** Accepted by the {@code value} parameter of GetIntegerv.  */
	inline static public var GL_COLOR_ARRAY_LENGTH_NV:Int = 36653;
/** Accepted by the {@code value} parameter of GetIntegerv.  */
	inline static public var GL_INDEX_ARRAY_LENGTH_NV:Int = 36654;
/** Accepted by the {@code value} parameter of GetIntegerv.  */
	inline static public var GL_EDGE_FLAG_ARRAY_LENGTH_NV:Int = 36656;
/** Accepted by the {@code value} parameter of GetIntegerv.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_LENGTH_NV:Int = 36657;
/** Accepted by the {@code value} parameter of GetIntegerv.  */
	inline static public var GL_FOG_COORD_ARRAY_LENGTH_NV:Int = 36658;
/** Accepted by the {@code value} parameter of GetIntegerv.  */
	inline static public var GL_ELEMENT_ARRAY_LENGTH_NV:Int = 36659;
/** Function address.  */
	public var BufferAddressRangeNV:haxe.Int64;
/** Function address.  */
	public var VertexFormatNV:haxe.Int64;
/** Function address.  */
	public var NormalFormatNV:haxe.Int64;
/** Function address.  */
	public var ColorFormatNV:haxe.Int64;
/** Function address.  */
	public var IndexFormatNV:haxe.Int64;
/** Function address.  */
	public var TexCoordFormatNV:haxe.Int64;
/** Function address.  */
	public var EdgeFlagFormatNV:haxe.Int64;
/** Function address.  */
	public var SecondaryColorFormatNV:haxe.Int64;
/** Function address.  */
	public var FogCoordFormatNV:haxe.Int64;
/** Function address.  */
	public var VertexAttribFormatNV:haxe.Int64;
/** Function address.  */
	public var VertexAttribIFormatNV:haxe.Int64;
/** Function address.  */
	public var GetIntegerui64i_vNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * 
 *
 * @param index  
 * @param size   
 * @param type   
 * @param stride 
 */
	static public function glVertexAttribIFormatNV(index:Int,size:Int,type:Int,stride:Int):Void;
/**
 * 
 *
 * @param type   
 * @param stride 
 */
	static public function glIndexFormatNV(type:Int,stride:Int):Void;
/**
 * 
 *
 * @param index      
 * @param size       
 * @param type       
 * @param normalized 
 * @param stride     
 */
	static public function glVertexAttribFormatNV(index:Int,size:Int,type:Int,normalized:Bool,stride:Int):Void;
/**
 * 
 *
 * @param pname   
 * @param index   
 * @param address 
 * @param length  
 */
	static public function glBufferAddressRangeNV(pname:Int,index:Int,address:haxe.Int64,length:haxe.Int64):Void;
/**
 * 
 *
 * @param size   
 * @param type   
 * @param stride 
 */
	static public function glColorFormatNV(size:Int,type:Int,stride:Int):Void;
/** Single return value version of: {@link #glGetIntegerui64i_vNV GetIntegerui64i_vNV}  */
	static public function glGetIntegerui64iNV(value:Int,index:Int):haxe.Int64;
/** Unsafe version of {@link #glGetIntegerui64i_vNV GetIntegerui64i_vNV}  */
/** JNI method for {@link #glGetIntegerui64i_vNV GetIntegerui64i_vNV}  */
	static public function nglGetIntegerui64i_vNV(value:Int,index:Int,result:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (value:Int,index:Int,result:haxe.Int64):Void {})
/**
 * 
 *
 * @param size   
 * @param type   
 * @param stride 
 */
	static public function glVertexFormatNV(size:Int,type:Int,stride:Int):Void;
/** JNI method for {@link #glNormalFormatNV NormalFormatNV}  */
	static public function nglNormalFormatNV(type:Int,stride:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glEdgeFlagFormatNV EdgeFlagFormatNV}  */
	static public function nglEdgeFlagFormatNV(stride:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttribIFormatNV VertexAttribIFormatNV}  */
	static public function nglVertexAttribIFormatNV(index:Int,size:Int,type:Int,stride:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glTexCoordFormatNV TexCoordFormatNV}  */
	static public function nglTexCoordFormatNV(size:Int,type:Int,stride:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param value  
 * @param index  
 * @param result 
 */
/** Alternative version of: {@link #glGetIntegerui64i_vNV GetIntegerui64i_vNV}  */
	static public function glGetIntegerui64i_vNV(value:Int,index:Int,result:java.nio.LongBuffer):Void;
	@:overload(function (value:Int,index:Int,result:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param type   
 * @param stride 
 */
	static public function glFogCoordFormatNV(type:Int,stride:Int):Void;
/**
 * 
 *
 * @param type   
 * @param stride 
 */
	static public function glNormalFormatNV(type:Int,stride:Int):Void;
/** JNI method for {@link #glVertexAttribFormatNV VertexAttribFormatNV}  */
	static public function nglVertexAttribFormatNV(index:Int,size:Int,type:Int,normalized:Bool,stride:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glIndexFormatNV IndexFormatNV}  */
	static public function nglIndexFormatNV(type:Int,stride:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glSecondaryColorFormatNV SecondaryColorFormatNV}  */
	static public function nglSecondaryColorFormatNV(size:Int,type:Int,stride:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBufferAddressRangeNV BufferAddressRangeNV}  */
	static public function nglBufferAddressRangeNV(pname:Int,index:Int,address:haxe.Int64,length:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexFormatNV VertexFormatNV}  */
	static public function nglVertexFormatNV(size:Int,type:Int,stride:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glColorFormatNV ColorFormatNV}  */
	static public function nglColorFormatNV(size:Int,type:Int,stride:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glFogCoordFormatNV FogCoordFormatNV}  */
	static public function nglFogCoordFormatNV(type:Int,stride:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param size   
 * @param type   
 * @param stride 
 */
	static public function glTexCoordFormatNV(size:Int,type:Int,stride:Int):Void;
/**
 * 
 *
 * @param size   
 * @param type   
 * @param stride 
 */
	static public function glSecondaryColorFormatNV(size:Int,type:Int,stride:Int):Void;
/**
 * 
 *
 * @param stride 
 */
	static public function glEdgeFlagFormatNV(stride:Int):Void;
/** Returns the {@link NVVertexBufferUnifiedMemory} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVVertexBufferUnifiedMemory;

}
