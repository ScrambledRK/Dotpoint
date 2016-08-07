package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVCommandList")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/command_list.txt">NV_command_list</a> extension.
 * 
 * <p>This extension adds a few new features designed to provide very low overhead batching and replay of rendering commands and state changes:
 * <ul>
 * <li>A state object, which stores a pre-validated representation of the the state of (almost) the entire pipeline.</li>
 * <li>A more flexible and extensible MultiDrawIndirect (MDI) type of mechanism, using a token-based command stream, allowing to setup binding state and
 * emit draw calls.</li>
 * <li>A set of functions to execute a list of the token-based command streams with state object changes interleaved with the streams.</li>
 * <li>Command lists enabling compilation and reuse of sequences of command streams and state object changes.</li>
 * </ul></p>
 * 
 * <p>Because state objects reflect the state of the entire pipeline, it is expected that they can be pre-validated and executed efficiently. It is also
 * expected that when state objects are combined into a command list, the command list can diff consecutive state objects to produce a reduced/ optimized
 * set of state changes specific to that transition.</p>
 * 
 * <p>The token-based command stream can also be stored in regular buffer objects and therefore be modified by the server itself. This allows more complex
 * work creation than the original MDI approach, which was limited to emitting draw calls only.</p>
 * 
 * <h3>Command structures</h3>
 * <pre><code style="font-family: monospace">
 * typedef struct {
 *   uint  header;
 * } TerminateSequenceCommandNV;
 * 
 * typedef struct {
 *   uint  header;
 * } NOPCommandNV;
 * 
 * typedef  struct {
 *   uint  header;
 *   uint  count;
 *   uint  firstIndex;
 *   uint  baseVertex;
 * } DrawElementsCommandNV;
 * 
 * typedef  struct {
 *   uint  header;
 *   uint  count;
 *   uint  first;
 * } DrawArraysCommandNV;
 * 
 * typedef  struct {
 *   uint  header;
 *   uint  mode;
 *   uint  count;
 *   uint  instanceCount;
 *   uint  firstIndex;
 *   uint  baseVertex;
 *   uint  baseInstance;
 * } DrawElementsInstancedCommandNV;
 * 
 * typedef  struct {
 *   uint  header;
 *   uint  mode;
 *   uint  count;
 *   uint  instanceCount;
 *   uint  first;
 *   uint  baseInstance;
 * } DrawArraysInstancedCommandNV;
 * 
 * typedef struct {
 *   uint  header;
 *   uint  addressLo;
 *   uint  addressHi;
 *   uint  typeSizeInByte;
 * } ElementAddressCommandNV;
 * 
 * typedef struct {
 *   uint  header;
 *   uint  index;
 *   uint  addressLo;
 *   uint  addressHi;
 * } AttributeAddressCommandNV;
 * 
 * typedef struct {
 *   uint    header;
 *   ushort  index;
 *   ushort  stage;
 *   uint    addressLo;
 *   uint    addressHi;
 * } UniformAddressCommandNV;
 * 
 * typedef struct {
 *   uint  header;
 *   float red;
 *   float green;
 *   float blue;
 *   float alpha;
 * } BlendColorCommandNV;
 * 
 * typedef struct {
 *   uint  header;
 *   uint  frontStencilRef;
 *   uint  backStencilRef;
 * } StencilRefCommandNV;
 * 
 * typedef struct {
 *   uint  header;
 *   float lineWidth;
 * } LineWidthCommandNV;
 * 
 * typedef struct {
 *   uint  header;
 *   float scale;
 *   float bias;
 * } PolygonOffsetCommandNV;
 * 
 * typedef struct {
 *   uint  header;
 *   float alphaRef;
 * } AlphaRefCommandNV;
 * 
 * typedef struct {
 *   uint  header;
 *   uint  x;
 *   uint  y;
 *   uint  width;
 *   uint  height;
 * } ViewportCommandNV; // only ViewportIndex 0
 * 
 * typedef struct {
 *   uint  header;
 *   uint  x;
 *   uint  y;
 *   uint  width;
 *   uint  height;
 * } ScissorCommandNV; // only ViewportIndex 0
 * 
 * typedef struct {
 *   uint  header;
 *   uint  frontFace; // 0 for CW, 1 for CCW
 * } FrontFaceCommandNV;</code></pre>
 * 
 * <p>Tight packing is used for all structures.</p>
 */
extern class NVCommandList 
{
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_TERMINATE_SEQUENCE_COMMAND_NV:Int = 0;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_NOP_COMMAND_NV:Int = 1;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_DRAW_ELEMENTS_COMMAND_NV:Int = 2;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_DRAW_ARRAYS_COMMAND_NV:Int = 3;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_DRAW_ELEMENTS_STRIP_COMMAND_NV:Int = 4;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_DRAW_ARRAYS_STRIP_COMMAND_NV:Int = 5;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_DRAW_ELEMENTS_INSTANCED_COMMAND_NV:Int = 6;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_DRAW_ARRAYS_INSTANCED_COMMAND_NV:Int = 7;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_ELEMENT_ADDRESS_COMMAND_NV:Int = 8;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_ATTRIBUTE_ADDRESS_COMMAND_NV:Int = 9;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_UNIFORM_ADDRESS_COMMAND_NV:Int = 10;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_BLEND_COLOR_COMMAND_NV:Int = 11;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_STENCIL_REF_COMMAND_NV:Int = 12;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_LINE_WIDTH_COMMAND_NV:Int = 13;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_POLYGON_OFFSET_COMMAND_NV:Int = 14;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_ALPHA_REF_COMMAND_NV:Int = 15;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_VIEWPORT_COMMAND_NV:Int = 16;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_SCISSOR_COMMAND_NV:Int = 17;
/** Used in DrawCommandsStates buffer formats, in GetCommandHeaderNV to return the header.  */
	inline static public var GL_FRONT_FACE_COMMAND_NV:Int = 18;
/** Function address.  */
	public var CreateStatesNV:haxe.Int64;
/** Function address.  */
	public var DeleteStatesNV:haxe.Int64;
/** Function address.  */
	public var IsStateNV:haxe.Int64;
/** Function address.  */
	public var StateCaptureNV:haxe.Int64;
/** Function address.  */
	public var GetCommandHeaderNV:haxe.Int64;
/** Function address.  */
	public var GetStageIndexNV:haxe.Int64;
/** Function address.  */
	public var DrawCommandsNV:haxe.Int64;
/** Function address.  */
	public var DrawCommandsAddressNV:haxe.Int64;
/** Function address.  */
	public var DrawCommandsStatesNV:haxe.Int64;
/** Function address.  */
	public var DrawCommandsStatesAddressNV:haxe.Int64;
/** Function address.  */
	public var CreateCommandListsNV:haxe.Int64;
/** Function address.  */
	public var DeleteCommandListsNV:haxe.Int64;
/** Function address.  */
	public var IsCommandListNV:haxe.Int64;
/** Function address.  */
	public var ListDrawCommandsStatesClientNV:haxe.Int64;
/** Function address.  */
	public var CommandListSegmentsNV:haxe.Int64;
/** Function address.  */
	public var CompileCommandListNV:haxe.Int64;
/** Function address.  */
	public var CallCommandListNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glCallCommandListNV CallCommandListNV}  */
	static public function nglCallCommandListNV(list:Int,__functionAddress:haxe.Int64):Void;
/** Single value version of: {@link #glDeleteCommandListsNV DeleteCommandListsNV}  */
/** Alternative version of: {@link #glDeleteCommandListsNV DeleteCommandListsNV}  */
/**
 * Deletes <code>n</code> command lists stored in <code>lists</code>. Once a command list is deleted it has no contents and its name is again unused.
 * Unused names in <code>lists</code> are silently ignored, as is the value zero.
 *
 * @param n     the number of command list names to delete
 * @param lists the buffer from which to read the command list names to delete
 */
	static public function glDeleteCommandListsNV(n:Int,lists:java.nio.ByteBuffer):Void;
	@:overload(function (list:Int):Void {})
	@:overload(function (lists:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glCommandListSegmentsNV CommandListSegmentsNV}  */
	static public function nglCommandListSegmentsNV(list:Int,segments:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glDrawCommandsNV DrawCommandsNV}  */
/** JNI method for {@link #glDrawCommandsNV DrawCommandsNV}  */
	static public function nglDrawCommandsNV(primitiveMode:Int,buffer:Int,indirects:haxe.Int64,sizes:haxe.Int64,count:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (primitiveMode:Int,buffer:Int,indirects:haxe.Int64,sizes:haxe.Int64,count:Int):Void {})
/** Alternative version of: {@link #glDrawCommandsNV DrawCommandsNV}  */
/**
 * Accepts arrays of buffer addresses as an array of offsets <code>indirects</code> into a buffer named by <code>buffer</code>, an array of command
 * lengths in <code>sizes</code>. All arrays have <code>count</code> entries.
 *
 * @param primitiveMode the primitive mode
 * @param buffer        the buffer object name
 * @param indirects     the array of offsets into the buffer
 * @param sizes         the array of command lengths
 * @param count         the number of commands
 */
	static public function glDrawCommandsNV(primitiveMode:Int,buffer:Int,indirects:java.nio.ByteBuffer,sizes:java.nio.ByteBuffer,count:Int):Void;
	@:overload(function (primitiveMode:Int,buffer:Int,indirects:org.lwjgl.PointerBuffer,sizes:java.nio.IntBuffer):Void {})
/**
 * Makes the list indicated by <code>list</code> switch from allowing collection of commands to allowing its execution. At this time, the implementation
 * may generate optimized commands to transition between states as efficiently as possible.
 *
 * @param list the command list to compile
 */
	static public function glCompileCommandListNV(list:Int):Void;
/** Unsafe version of {@link #glCreateStatesNV CreateStatesNV}  */
/** JNI method for {@link #glCreateStatesNV CreateStatesNV}  */
	static public function nglCreateStatesNV(n:Int,states:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,states:haxe.Int64):Void {})
/** JNI method for {@link #glStateCaptureNV StateCaptureNV}  */
	static public function nglStateCaptureNV(state:Int,mode:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glDrawCommandsAddressNV DrawCommandsAddressNV}  */
/** JNI method for {@link #glDrawCommandsAddressNV DrawCommandsAddressNV}  */
	static public function nglDrawCommandsAddressNV(primitiveMode:Int,indirects:haxe.Int64,sizes:haxe.Int64,count:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (primitiveMode:Int,indirects:haxe.Int64,sizes:haxe.Int64,count:Int):Void {})
/** Unsafe version of {@link #glListDrawCommandsStatesClientNV ListDrawCommandsStatesClientNV}  */
/** JNI method for {@link #glListDrawCommandsStatesClientNV ListDrawCommandsStatesClientNV}  */
	static public function nglListDrawCommandsStatesClientNV(list:Int,segment:Int,indirects:haxe.Int64,sizes:haxe.Int64,states:haxe.Int64,fbos:haxe.Int64,count:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (list:Int,segment:Int,indirects:haxe.Int64,sizes:haxe.Int64,states:haxe.Int64,fbos:haxe.Int64,count:Int):Void {})
/** JNI method for {@link #glIsStateNV IsStateNV}  */
	static public function nglIsStateNV(state:Int,__functionAddress:haxe.Int64):Bool;
/**
 * Returns the 16bit value for a specific shader stage; the returned value is implementation specific. The value is to be used with the stage field within
 * <code>UniformAddressCommandNV</code> tokens.
 *
 * @param shadertype the shader stage type
 */
	static public function glGetStageIndexNV(shadertype:Int):Int16;
/**
 * Executes the command list indicated by <code>list</code>, which operates as if the DrawCommandsStates* commands were replayed in the order they were
 * enqueued on each segment, starting from segment zero and proceeding to the maximum segment. All buffer or texture resources' residency must be managed
 * explicitly, including texture attachments of the effective fbos during list enqueuing.
 *
 * @param list the command list to call
 */
	static public function glCallCommandListNV(list:Int):Void;
/** JNI method for {@link #glGetStageIndexNV GetStageIndexNV}  */
	static public function nglGetStageIndexNV(shadertype:Int,__functionAddress:haxe.Int64):Int16;
/** JNI method for {@link #glGetCommandHeaderNV GetCommandHeaderNV}  */
	static public function nglGetCommandHeaderNV(tokenID:Int,size:Int,__functionAddress:haxe.Int64):Int;
/**
 * Indicates that {@code list} will have {@code segments} ordered sequences of commands that it enqueues. This must be called before any commands are
 * enqueued. In the initial state, a command list has a single segment.
 *
 * @param list     the command list
 * @param segments the number of ordered sequences of commands
 */
	static public function glCommandListSegmentsNV(list:Int,segments:Int):Void;
/**
 * Returns true if the specified name corresponds to a state object.
 *
 * @param state the object name to test
 */
	static public function glIsStateNV(state:Int):Bool;
/** Single value version of: {@link #glDeleteStatesNV DeleteStatesNV}  */
/** Alternative version of: {@link #glDeleteStatesNV DeleteStatesNV}  */
/**
 * Deletes <code>n</code> names of state objects given by <code>states</code>. Once a state object is deleted it has no contents and its name is again
 * unused. Unused names in <code>states</code> are silently ignored, as is the value zero.
 *
 * @param n      the number of state object names to delete
 * @param states the buffer from which to read the state object names to delete
 */
	static public function glDeleteStatesNV(n:Int,states:java.nio.ByteBuffer):Void;
	@:overload(function (state:Int):Void {})
	@:overload(function (states:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glDeleteCommandListsNV DeleteCommandListsNV}  */
/** JNI method for {@link #glDeleteCommandListsNV DeleteCommandListsNV}  */
	static public function nglDeleteCommandListsNV(n:Int,lists:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,lists:haxe.Int64):Void {})
/** JNI method for {@link #glCompileCommandListNV CompileCommandListNV}  */
	static public function nglCompileCommandListNV(list:Int,__functionAddress:haxe.Int64):Void;
/**
 * Returns the encoded 32bit header value for a given command; the returned value is implementation specific.
 *
 * @param tokenID the command to query. One of:<br>{@link #GL_TERMINATE_SEQUENCE_COMMAND_NV TERMINATE_SEQUENCE_COMMAND_NV}, {@link #GL_NOP_COMMAND_NV NOP_COMMAND_NV}, {@link #GL_DRAW_ELEMENTS_COMMAND_NV DRAW_ELEMENTS_COMMAND_NV}, {@link #GL_DRAW_ARRAYS_COMMAND_NV DRAW_ARRAYS_COMMAND_NV}, {@link #GL_DRAW_ELEMENTS_STRIP_COMMAND_NV DRAW_ELEMENTS_STRIP_COMMAND_NV}, {@link #GL_DRAW_ARRAYS_STRIP_COMMAND_NV DRAW_ARRAYS_STRIP_COMMAND_NV}, {@link #GL_DRAW_ELEMENTS_INSTANCED_COMMAND_NV DRAW_ELEMENTS_INSTANCED_COMMAND_NV}, {@link #GL_DRAW_ARRAYS_INSTANCED_COMMAND_NV DRAW_ARRAYS_INSTANCED_COMMAND_NV}, {@link #GL_ELEMENT_ADDRESS_COMMAND_NV ELEMENT_ADDRESS_COMMAND_NV}, {@link #GL_ATTRIBUTE_ADDRESS_COMMAND_NV ATTRIBUTE_ADDRESS_COMMAND_NV}, {@link #GL_UNIFORM_ADDRESS_COMMAND_NV UNIFORM_ADDRESS_COMMAND_NV}, {@link #GL_BLEND_COLOR_COMMAND_NV BLEND_COLOR_COMMAND_NV}, {@link #GL_STENCIL_REF_COMMAND_NV STENCIL_REF_COMMAND_NV}, {@link #GL_LINE_WIDTH_COMMAND_NV LINE_WIDTH_COMMAND_NV}, {@link #GL_POLYGON_OFFSET_COMMAND_NV POLYGON_OFFSET_COMMAND_NV}, {@link #GL_ALPHA_REF_COMMAND_NV ALPHA_REF_COMMAND_NV}, {@link #GL_VIEWPORT_COMMAND_NV VIEWPORT_COMMAND_NV}, {@link #GL_SCISSOR_COMMAND_NV SCISSOR_COMMAND_NV}, {@link #GL_FRONT_FACE_COMMAND_NV FRONT_FACE_COMMAND_NV}
 * @param size    provided as basic consistency check, since the size of each structure is fixed and no padding is allowed. The value is the sum of the header and
 *                the command specific structure.
 */
	static public function glGetCommandHeaderNV(tokenID:Int,size:Int):Int;
/** Alternative version of: {@link #glDrawCommandsAddressNV DrawCommandsAddressNV}  */
/**
 * Accepts arrays of buffer addresses as an array of GPU addresses <code>indirects</code>, an array of command lengths in <code>sizes</code>. All arrays
 * have <code>count</code> entries.
 *
 * @param primitiveMode the primitive mode
 * @param indirects     the array of GPU addreses
 * @param sizes         the array of command lengths
 * @param count         the number of commands
 */
	static public function glDrawCommandsAddressNV(primitiveMode:Int,indirects:java.nio.ByteBuffer,sizes:java.nio.ByteBuffer,count:Int):Void;
	@:overload(function (primitiveMode:Int,indirects:java.nio.LongBuffer,sizes:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glListDrawCommandsStatesClientNV ListDrawCommandsStatesClientNV}  */
/**
 * A list has multiple segments and each segment enqueues an ordered list of commands. This command enqueues the equivalent of the
 * DrawCommandsStatesClientNV commands into the list indicated by <code>list</code> on the segment indicated by <code>segment</code>.
 * 
 * <p>The pre-validated state from {@code states} is saved into the command list, rather than a reference to the state object (i.e. the state objects or fbos
 * could be deleted and the command list would be unaffected). This includes native GPU addresses for all textures indirectly referenced through the fbos
 * passed or state objects' fbos attachments, therefore a recompile of the command list is required if such referenced textures change their allocation
 * (for example due to resizing), as well as explicit management of the residency of the textures prior {@link #glCallCommandListNV CallCommandListNV}.</p>
 * 
 * <p>ListDrawCommandsStatesClientNV performs a by-value copy of the indirect data based on the provided client-side pointers. In this case the content is
 * fully immutable, while the buffer-based versions can change the content of the buffers at any later time.</p>
 *
 * @param list      the command list
 * @param segment   the segment
 * @param indirects the array of GPU addresses
 * @param sizes     the array of command lengths
 * @param states    the array of state object names
 * @param fbos      the array of framebuffer object names
 * @param count     the number of commands
 */
	static public function glListDrawCommandsStatesClientNV(list:Int,segment:Int,indirects:java.nio.ByteBuffer,sizes:java.nio.ByteBuffer,states:java.nio.ByteBuffer,fbos:java.nio.ByteBuffer,count:Int):Void;
	@:overload(function (list:Int,segment:Int,indirects:org.lwjgl.PointerBuffer,sizes:org.lwjgl.PointerBuffer,states:java.nio.IntBuffer,fbos:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glDeleteStatesNV DeleteStatesNV}  */
/** JNI method for {@link #glDeleteStatesNV DeleteStatesNV}  */
	static public function nglDeleteStatesNV(n:Int,states:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,states:haxe.Int64):Void {})
/** Alternative version of: {@link #glDrawCommandsStatesAddressNV DrawCommandsStatesAddressNV}  */
/**
 * Accepts arrays of buffer addresses as an array of GPU addresses <code>indirects</code>, an array of command lengths in <code>sizes</code>, and an array
 * of state object names in <code>states</code>, of which all names must be non-zero. Frame buffer object names are stored in <code>fbos</code> and can be
 * either zero or non-zero. All arrays have <code>count</code> entries. The residency of textures used as attachment inside the state object's captured
 * fbo or the passed fbo must managed explicitly.
 *
 * @param indirects the array of GPU addresses
 * @param sizes     the array of command lengths
 * @param states    the array of state object names
 * @param fbos      the array of framebuffer object names
 * @param count     the number of commands
 */
	static public function glDrawCommandsStatesAddressNV(indirects:java.nio.ByteBuffer,sizes:java.nio.ByteBuffer,states:java.nio.ByteBuffer,fbos:java.nio.ByteBuffer,count:Int):Void;
	@:overload(function (indirects:java.nio.LongBuffer,sizes:java.nio.IntBuffer,states:java.nio.IntBuffer,fbos:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glIsCommandListNV IsCommandListNV}  */
	static public function nglIsCommandListNV(list:Int,__functionAddress:haxe.Int64):Bool;
/** Single return value version of: {@link #glCreateCommandListsNV CreateCommandListsNV}  */
/** Alternative version of: {@link #glCreateCommandListsNV CreateCommandListsNV}  */
/**
 * Returns <code>n</code> previously unused command list names in <code>lists</code>, and creates a command list in the initial state for each name.
 *
 * @param n     the number of command list names to create
 * @param lists the buffer in which to return the created command list names
 */
	static public function glCreateCommandListsNV(n:Int,lists:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (lists:java.nio.IntBuffer):Void {})
/**
 * Returns true if the specified name corresponds to a command list.
 *
 * @param list the object name to query
 */
	static public function glIsCommandListNV(list:Int):Bool;
/** Unsafe version of {@link #glDrawCommandsStatesAddressNV DrawCommandsStatesAddressNV}  */
/** JNI method for {@link #glDrawCommandsStatesAddressNV DrawCommandsStatesAddressNV}  */
	static public function nglDrawCommandsStatesAddressNV(indirects:haxe.Int64,sizes:haxe.Int64,states:haxe.Int64,fbos:haxe.Int64,count:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (indirects:haxe.Int64,sizes:haxe.Int64,states:haxe.Int64,fbos:haxe.Int64,count:Int):Void {})
/** Unsafe version of {@link #glCreateCommandListsNV CreateCommandListsNV}  */
/** JNI method for {@link #glCreateCommandListsNV CreateCommandListsNV}  */
	static public function nglCreateCommandListsNV(n:Int,lists:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,lists:haxe.Int64):Void {})
/** Returns the {@link NVCommandList} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVCommandList;
/** Single return value version of: {@link #glCreateStatesNV CreateStatesNV}  */
/** Alternative version of: {@link #glCreateStatesNV CreateStatesNV}  */
/**
 * Returns <code>n</code> previously unused state object names in <code>states</code>, and creates a state object in the initial state for each name.
 *
 * @param n      the number of state object names to create
 * @param states the buffer in which to write the created state object names
 */
	static public function glCreateStatesNV(n:Int,states:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (states:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glDrawCommandsStatesNV DrawCommandsStatesNV}  */
/**
 * Accepts arrays of buffer addresses as an array of offsets <code>indirects</code> into a buffer named by <code>buffer</code>, an array of command
 * lengths in <code>sizes</code>, and an array of state object names in <code>states</code>, of which all names must be non-zero. Frame buffer object
 * names are stored in <code>fbos</code> and can be either zero or non-zero. All arrays have <code>count</code> entries. The residency of textures used as
 * attachment inside the state object's captured fbo or the passed fbo must managed explicitly.
 *
 * @param buffer    the buffer object name
 * @param indirects the array of offsets into the buffer
 * @param sizes     the array of command lengths
 * @param states    the array of state object names
 * @param fbos      the array of framebuffer object names
 * @param count     the number of commands
 */
	static public function glDrawCommandsStatesNV(buffer:Int,indirects:java.nio.ByteBuffer,sizes:java.nio.ByteBuffer,states:java.nio.ByteBuffer,fbos:java.nio.ByteBuffer,count:Int):Void;
	@:overload(function (buffer:Int,indirects:org.lwjgl.PointerBuffer,sizes:java.nio.IntBuffer,states:java.nio.IntBuffer,fbos:java.nio.IntBuffer):Void {})
/**
 * Captures the current state of the rendering pipeline into the object indicated by <code>state</code>.
 * 
 * <p>The captured rendering state includes:
 * <ul>
 * <li>Vertex attribute enable state, formats, types, relative offsets and strides, but not bound vertex buffers or vertex unified addresses, nor their
 * offsets, nor bound index buffers/addresses.</li>
 * <li>Primitive state such as primitive restart and patch parameters, provoking vertex.</li>
 * <li>Immediate vertex attribute values as provided by glVertexAttrib* or glVertexAttribI*</li>
 * <li>All active program binaries except compute (either from the active program pipeline or from UseProgram) with their current subroutine configuration
 * excluding all default-block uniform values.</li>
 * <li>Rasterization, multisample fragment operation, depth, stencil, and blending state.</li>
 * <li>Rasterization state such as line widths, stippling, polygon modes and offsets.</li>
 * <li>Viewport, scissor, and depth range state.</li>
 * <li>Framebuffer attachment configuration: attachment state including attachment formats, drawbuffer state, and target/layer information, but not
 * including actual attachments or sizes of attachments (these are stored separately).</li>
 * <li>Framebuffer attachment textures (but not residency state).</li>
 * </ul></p>
 *
 * @param state the state object into which to capture the current rendering state
 * @param mode  the basic Begin mode that this state object must be used with. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 */
	static public function glStateCaptureNV(state:Int,mode:Int):Void;
/** Unsafe version of {@link #glDrawCommandsStatesNV DrawCommandsStatesNV}  */
/** JNI method for {@link #glDrawCommandsStatesNV DrawCommandsStatesNV}  */
	static public function nglDrawCommandsStatesNV(buffer:Int,indirects:haxe.Int64,sizes:haxe.Int64,states:haxe.Int64,fbos:haxe.Int64,count:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,indirects:haxe.Int64,sizes:haxe.Int64,states:haxe.Int64,fbos:haxe.Int64,count:Int):Void {})

}
