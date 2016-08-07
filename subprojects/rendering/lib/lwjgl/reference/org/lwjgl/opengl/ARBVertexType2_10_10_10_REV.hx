package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBVertexType2_10_10_10_REV")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/vertex_type_2_10_10_10_rev.txt">ARB_vertex_type_2_10_10_10_rev</a> extension.
 * 
 * <p>This extension adds two new vertex attribute data formats: a signed 2.10.10.10 and an unsigned 2.10.10.10 vertex data format. These vertex data formats
 * describe a 4 component stream which can be used to store normals or other attributes in a quantized form. Normals, tangents, binormals and other vertex
 * attributes can often be specified at reduced precision without introducing noticeable artifacts, reducing the amount of memory and memory bandwidth they consume.</p>
 * 
 * <p>Promoted to core in {@link GL33 OpenGL 3.3}.</p>
 */
extern class ARBVertexType2_10_10_10_REV 
{
/**
 * Accepted by the {@code type} parameter of VertexAttribPointer, VertexPointer, NormalPointer, ColorPointer, SecondaryColorPointer, TexCoordPointer,
 * VertexAttribP{1234}ui, VertexP*, TexCoordP*, MultiTexCoordP*, NormalP3ui, ColorP*, SecondaryColorP and VertexAttribP*.
 */
	inline static public var GL_INT_2_10_10_10_REV:Int = 36255;
/** Function address.  */
	public var VertexP2ui:haxe.Int64;
/** Function address.  */
	public var VertexP3ui:haxe.Int64;
/** Function address.  */
	public var VertexP4ui:haxe.Int64;
/** Function address.  */
	public var VertexP2uiv:haxe.Int64;
/** Function address.  */
	public var VertexP3uiv:haxe.Int64;
/** Function address.  */
	public var VertexP4uiv:haxe.Int64;
/** Function address.  */
	public var TexCoordP1ui:haxe.Int64;
/** Function address.  */
	public var TexCoordP2ui:haxe.Int64;
/** Function address.  */
	public var TexCoordP3ui:haxe.Int64;
/** Function address.  */
	public var TexCoordP4ui:haxe.Int64;
/** Function address.  */
	public var TexCoordP1uiv:haxe.Int64;
/** Function address.  */
	public var TexCoordP2uiv:haxe.Int64;
/** Function address.  */
	public var TexCoordP3uiv:haxe.Int64;
/** Function address.  */
	public var TexCoordP4uiv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP1ui:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP2ui:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP3ui:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP4ui:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP1uiv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP2uiv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP3uiv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP4uiv:haxe.Int64;
/** Function address.  */
	public var NormalP3ui:haxe.Int64;
/** Function address.  */
	public var NormalP3uiv:haxe.Int64;
/** Function address.  */
	public var ColorP3ui:haxe.Int64;
/** Function address.  */
	public var ColorP4ui:haxe.Int64;
/** Function address.  */
	public var ColorP3uiv:haxe.Int64;
/** Function address.  */
	public var ColorP4uiv:haxe.Int64;
/** Function address.  */
	public var SecondaryColorP3ui:haxe.Int64;
/** Function address.  */
	public var SecondaryColorP3uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribP1ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribP2ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribP3ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribP4ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribP1uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribP2uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribP3uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribP4uiv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider,fc:Bool):Void;
/**
 * Pointer version of {@link #glVertexAttribP1ui VertexAttribP1ui}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
/** Alternative version of: {@link #glVertexAttribP1uiv VertexAttribP1uiv}  */
	static public function glVertexAttribP1uiv(index:Int,type:Int,normalized:Bool,value:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:java.nio.ByteBuffer):Void {})
/**
 * Packed component version of {@link GL11#glNormal3f Normal3f}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
	static public function glNormalP3ui(type:Int,coords:Int):Void;
/** Unsafe version of {@link #glVertexAttribP3uiv VertexAttribP3uiv}  */
	static public function nglVertexAttribP3uiv(index:Int,type:Int,normalized:Bool,value:haxe.Int64):Void;
/**
 * Packed component version of {@link GL11#glTexCoord4f TexCoord4f}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
	static public function glTexCoordP4ui(type:Int,coords:Int):Void;
/**
 * Packed component version of {@link GL11#glTexCoord2f TexCoord2f}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
	static public function glTexCoordP2ui(type:Int,coords:Int):Void;
/**
 * Packed component version of {@link GL11#glVertex2f Vertex2f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
	static public function glVertexP2ui(type:Int,value:Int):Void;
/**
 * Packed component version of {@link GL20#glVertexAttrib3f VertexAttrib3f}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
	static public function glVertexAttribP3ui(index:Int,type:Int,normalized:Bool,value:Int):Void;
/** Unsafe version of {@link #glMultiTexCoordP4uiv MultiTexCoordP4uiv}  */
	static public function nglMultiTexCoordP4uiv(texture:Int,type:Int,coords:haxe.Int64):Void;
/**
 * Packed component version of {@link GL20#glVertexAttrib1f VertexAttrib1f}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
	static public function glVertexAttribP1ui(index:Int,type:Int,normalized:Bool,value:Int):Void;
/**
 * Packed component version of {@link GL13#glMultiTexCoord3f MultiTexCoord3f}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>type, of, packing, used, on, the, data
 * @param coords  the packed value
 */
	static public function glMultiTexCoordP3ui(texture:Int,type:Int,coords:Int):Void;
/**
 * Pointer version of {@link #glMultiTexCoordP2ui MultiTexCoordP2ui}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords  the packed value
 */
/** Alternative version of: {@link #glMultiTexCoordP2uiv MultiTexCoordP2uiv}  */
	static public function glMultiTexCoordP2uiv(texture:Int,type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glTexCoordP4ui TexCoordP4ui}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
/** Alternative version of: {@link #glTexCoordP4uiv TexCoordP4uiv}  */
	static public function glTexCoordP4uiv(type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glSecondaryColorP3ui SecondaryColorP3ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
/** Alternative version of: {@link #glSecondaryColorP3uiv SecondaryColorP3uiv}  */
	static public function glSecondaryColorP3uiv(type:Int,color:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,color:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glNormalP3uiv NormalP3uiv}  */
	static public function nglNormalP3uiv(type:Int,coords:haxe.Int64):Void;
/** Unsafe version of {@link #glTexCoordP4uiv TexCoordP4uiv}  */
	static public function nglTexCoordP4uiv(type:Int,coords:haxe.Int64):Void;
/**
 * Packed component version of {@link GL13#glMultiTexCoord1f MultiTexCoord1f}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>type, of, packing, used, on, the, data
 * @param coords  the packed value
 */
	static public function glMultiTexCoordP1ui(texture:Int,type:Int,coords:Int):Void;
/**
 * Pointer version of {@link #glVertexP4ui VertexP4ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
/** Alternative version of: {@link #glVertexP4uiv VertexP4uiv}  */
	static public function glVertexP4uiv(type:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,value:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexAttribP2ui VertexAttribP2ui}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
/** Alternative version of: {@link #glVertexAttribP2uiv VertexAttribP2uiv}  */
	static public function glVertexAttribP2uiv(index:Int,type:Int,normalized:Bool,value:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexP2uiv VertexP2uiv}  */
	static public function nglVertexP2uiv(type:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttribP4uiv VertexAttribP4uiv}  */
	static public function nglVertexAttribP4uiv(index:Int,type:Int,normalized:Bool,value:haxe.Int64):Void;
/** Unsafe version of {@link #glColorP4uiv ColorP4uiv}  */
	static public function nglColorP4uiv(type:Int,color:haxe.Int64):Void;
/** Unsafe version of {@link #glMultiTexCoordP1uiv MultiTexCoordP1uiv}  */
	static public function nglMultiTexCoordP1uiv(texture:Int,type:Int,coords:haxe.Int64):Void;
/**
 * Packed component version of {@link GL11#glVertex4f Vertex4f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
	static public function glVertexP4ui(type:Int,value:Int):Void;
/**
 * Packed component version of {@link GL11#glColor3f Color3f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
	static public function glColorP3ui(type:Int,color:Int):Void;
/** Unsafe version of {@link #glVertexAttribP1uiv VertexAttribP1uiv}  */
	static public function nglVertexAttribP1uiv(index:Int,type:Int,normalized:Bool,value:haxe.Int64):Void;
/**
 * Pointer version of {@link #glMultiTexCoordP3ui MultiTexCoordP3ui}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords  the packed value
 */
/** Alternative version of: {@link #glMultiTexCoordP3uiv MultiTexCoordP3uiv}  */
	static public function glMultiTexCoordP3uiv(texture:Int,type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,type:Int,coords:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glTexCoordP3uiv TexCoordP3uiv}  */
	static public function nglTexCoordP3uiv(type:Int,coords:haxe.Int64):Void;
/**
 * Pointer version of {@link #glTexCoordP3ui TexCoordP3ui}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
/** Alternative version of: {@link #glTexCoordP3uiv TexCoordP3uiv}  */
	static public function glTexCoordP3uiv(type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexAttribP3ui VertexAttribP3ui}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
/** Alternative version of: {@link #glVertexAttribP3uiv VertexAttribP3uiv}  */
	static public function glVertexAttribP3uiv(index:Int,type:Int,normalized:Bool,value:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexP3ui VertexP3ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
/** Alternative version of: {@link #glVertexP3uiv VertexP3uiv}  */
	static public function glVertexP3uiv(type:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexP3uiv VertexP3uiv}  */
	static public function nglVertexP3uiv(type:Int,value:haxe.Int64):Void;
/**
 * Packed component version of {@link GL11#glTexCoord3f TexCoord3f}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
	static public function glTexCoordP3ui(type:Int,coords:Int):Void;
/**
 * Packed component version of {@link GL11#glTexCoord1f TexCoord1f}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
	static public function glTexCoordP1ui(type:Int,coords:Int):Void;
/**
 * Packed component version of {@link GL20#glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
	static public function glVertexAttribP4ui(index:Int,type:Int,normalized:Bool,value:Int):Void;
/** Unsafe version of {@link #glColorP3uiv ColorP3uiv}  */
	static public function nglColorP3uiv(type:Int,color:haxe.Int64):Void;
/**
 * Packed component version of {@link GL20#glVertexAttrib2f VertexAttrib2f}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
	static public function glVertexAttribP2ui(index:Int,type:Int,normalized:Bool,value:Int):Void;
/** Unsafe version of {@link #glMultiTexCoordP2uiv MultiTexCoordP2uiv}  */
	static public function nglMultiTexCoordP2uiv(texture:Int,type:Int,coords:haxe.Int64):Void;
/**
 * Packed component version of {@link GL13#glMultiTexCoord2f MultiTexCoord2f}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>type, of, packing, used, on, the, data
 * @param coords  the packed value
 */
	static public function glMultiTexCoordP2ui(texture:Int,type:Int,coords:Int):Void;
/**
 * Packed component version of {@link GL13#glMultiTexCoord4f MultiTexCoord4f}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>type, of, packing, used, on, the, data
 * @param coords  the packed value
 */
	static public function glMultiTexCoordP4ui(texture:Int,type:Int,coords:Int):Void;
/**
 * Pointer version of {@link #glColorP3ui ColorP3ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
/** Alternative version of: {@link #glColorP3uiv ColorP3uiv}  */
	static public function glColorP3uiv(type:Int,color:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,color:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glMultiTexCoordP4ui MultiTexCoordP4ui}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords  the packed value
 */
/** Alternative version of: {@link #glMultiTexCoordP4uiv MultiTexCoordP4uiv}  */
	static public function glMultiTexCoordP4uiv(texture:Int,type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,type:Int,coords:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glSecondaryColorP3uiv SecondaryColorP3uiv}  */
	static public function nglSecondaryColorP3uiv(type:Int,color:haxe.Int64):Void;
/**
 * Pointer version of {@link #glTexCoordP2ui TexCoordP2ui}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
/** Alternative version of: {@link #glTexCoordP2uiv TexCoordP2uiv}  */
	static public function glTexCoordP2uiv(type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,coords:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glTexCoordP2uiv TexCoordP2uiv}  */
	static public function nglTexCoordP2uiv(type:Int,coords:haxe.Int64):Void;
/**
 * Pointer version {@link #glNormalP3ui NormalP3ui}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
/** Alternative version of: {@link #glNormalP3uiv NormalP3uiv}  */
	static public function glNormalP3uiv(type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexP2ui VertexP2ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
/** Alternative version of: {@link #glVertexP2uiv VertexP2uiv}  */
	static public function glVertexP2uiv(type:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexP4uiv VertexP4uiv}  */
	static public function nglVertexP4uiv(type:Int,value:haxe.Int64):Void;
/**
 * Pointer version of {@link #glVertexAttribP4ui VertexAttribP4ui}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
/** Alternative version of: {@link #glVertexAttribP4uiv VertexAttribP4uiv}  */
	static public function glVertexAttribP4uiv(index:Int,type:Int,normalized:Bool,value:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexCoordP3uiv MultiTexCoordP3uiv}  */
	static public function nglMultiTexCoordP3uiv(texture:Int,type:Int,coords:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttribP2uiv VertexAttribP2uiv}  */
	static public function nglVertexAttribP2uiv(index:Int,type:Int,normalized:Bool,value:haxe.Int64):Void;
/**
 * Packed component version of {@link GL11#glVertex3f Vertex3f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
	static public function glVertexP3ui(type:Int,value:Int):Void;
/**
 * Pointer version of {@link #glColorP4ui ColorP4ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
/** Alternative version of: {@link #glColorP4uiv ColorP4uiv}  */
	static public function glColorP4uiv(type:Int,color:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,color:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glMultiTexCoordP1ui MultiTexCoordP1ui}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords  the packed value
 */
/** Alternative version of: {@link #glMultiTexCoordP1uiv MultiTexCoordP1uiv}  */
	static public function glMultiTexCoordP1uiv(texture:Int,type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * Packed component version of {@link GL11#glColor4f Color4f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
	static public function glColorP4ui(type:Int,color:Int):Void;
/** Returns the {@link ARBVertexType2_10_10_10_REV} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBVertexType2_10_10_10_REV;
/**
 * Pointer version of {@link #glTexCoordP1ui TexCoordP1ui}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
/** Alternative version of: {@link #glTexCoordP1uiv TexCoordP1uiv}  */
	static public function glTexCoordP1uiv(type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * Packed component version of {@link GL14#glSecondaryColor3f SecondaryColor3f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
	static public function glSecondaryColorP3ui(type:Int,color:Int):Void;
/** Unsafe version of {@link #glTexCoordP1uiv TexCoordP1uiv}  */
	static public function nglTexCoordP1uiv(type:Int,coords:haxe.Int64):Void;

}
