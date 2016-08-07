package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBMultiBind")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/multi_bind.txt">ARB_multi_bind</a> extension.
 * 
 * <p>This extension provides a new set of commands allowing applications to bind or unbind a set of objects in a single call, instead of requiring a separate
 * call for each bind or unbind operation.  Using a single command allows OpenGL implementations to amortize function call, name space lookup, and
 * potential locking overhead over multiple bind or unbind operations. The rendering loops of graphics applications frequently switch between different
 * states, binding different sets of resources, including texture objects, sampler objects, textures for image loads and stores, uniform buffers, and
 * vertex buffers; this extension provides "multi-bind" entry points for all of these object types.</p>
 * 
 * <p>Each command in this extension includes a &lt;first&gt; and &lt;count&gt; parameter, specifying a continguous range of binding points to update, as well
 * as an array of &lt;count&gt; object names specifying the objects to bind. Unlike single bind commands, multi-bind commands can be used only to bind or
 * unbind existing objects. Passing a previously unused object name (generated or not) results in an error and does not create a new object. For binding
 * points with associated data (e.g., ranges of a buffer), separate arrays are used to pass the associated data for each binding point. Passing zero values
 * in the array of object names removes the object bound to the current bounding point. Additionally, if {@code NULL} is passed as the array of objects, objects
 * bound to the entire range of binding points are unbound, as though the caller passed an array of zeroes.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0}. Promoted to core in {@link GL44 OpenGL 4.4}.</p>
 */
extern class ARBMultiBind 
{
/** Function address.  */
	public var BindBuffersBase:haxe.Int64;
/** Function address.  */
	public var BindBuffersRange:haxe.Int64;
/** Function address.  */
	public var BindTextures:haxe.Int64;
/** Function address.  */
	public var BindSamplers:haxe.Int64;
/** Function address.  */
	public var BindImageTextures:haxe.Int64;
/** Function address.  */
	public var BindVertexBuffers:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Alternative version of: {@link #glBindTextures BindTextures}  */
/**
 * Binds {@code count} existing texture objects to texture image units numbered {@code first} through {@code first+count-1}. If {@code textures} is not
 * {@code NULL}, it specifies an array of {@code count} values, each of which must be zero or the name of an existing texture object. When an entry in
 * {@code textures} is the name of an existing texture object, that object is bound to corresponding texture unit for the target specified when the texture
 * object was created. When an entry in {@code textures} is zero, each of the targets enumerated at the beginning of this section is reset to its default
 * texture for the corresponding texture image unit. If {@code textures} is {@code NULL}, each target of each affected texture image unit from {@code first}
 * through {@code first+count-1} is reset to its default texture.
 * 
 * <p>{@code BindTextures} is equivalent to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	uint texture;
 * 	if ( textures == NULL ) {
 * 		texture = 0;
 * 	} else {
 * 		texture = textures[i];
 * 	}
 * 	ActiveTexture(TEXTURE0 + first + i);
 * 	if ( texture != 0 ) {
 * 		enum target; // target of texture object textures[i]
 * 		BindTexture(target, textures[i]);
 * 	} else {
 * 		for ( target in all supported targets ) {
 * 			BindTexture(target, 0);
 * 		}
 * 	}
 * }</code></pre>
 * except that the active texture selector retains its original value upon completion of the command, and that textures will not be created if they do not
 * exist.</p>
 * 
 * <p>The values specified in {@code textures} will be checked separately for each texture image unit. When a value for a specific texture image unit is
 * invalid, the state for that texture image unit will be unchanged and an error will be generated. However, state for other texture image units will still
 * be changed if their corresponding values are valid.</p>
 *
 * @param first    the first texture objects
 * @param count    the number of texture objects
 * @param textures an array of zeros or names of existing texture objects
 */
	static public function glBindTextures(first:Int,count:Int,textures:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,textures:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glBindSamplers BindSamplers}  */
/**
 * Binds {@code count} existing sampler objects to texture image units numbered {@code first} through {@code first+count-1}. If {@code samplers} is not
 * {@code NULL}, it specifies an array of {@code count} values, each of which must be zero or the name of an existing sampler object. If {@code samplers} is {@code NULL},
 * each affected texture image unit from {@code first} through {@code first+count-1} will be reset to have no bound sampler object.
 * 
 * <p>{@code BindSamplers} is equivalent to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	if ( samplers == NULL ) {
 * 		glBindSampler(first + i, 0);
 * 	} else {
 * 		glBindSampler(first + i, samplers[i]);
 * 	}
 * }</code></pre>
 * The values specified in {@code samplers} will be checked separately for each texture image unit. When a value for a specific texture image unit is
 * invalid, the state for that texture image unit will be unchanged and an error will be generated. However, state for other texture image units will still
 * be changed if their corresponding values are valid.</p>
 *
 * @param first    the first sampler object
 * @param count    the number of sampler objects
 * @param samplers an array of zeros or names of existing sampler objects
 */
	static public function glBindSamplers(first:Int,count:Int,samplers:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,samplers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glBindTextures BindTextures}  */
	static public function nglBindTextures(first:Int,count:Int,textures:haxe.Int64):Void;
/** Unsafe version of {@link #glBindBuffersRange BindBuffersRange}  */
	static public function nglBindBuffersRange(target:Int,first:Int,count:Int,buffers:haxe.Int64,offsets:haxe.Int64,sizes:haxe.Int64):Void;
/** Unsafe version of {@link #glBindSamplers BindSamplers}  */
	static public function nglBindSamplers(first:Int,count:Int,samplers:haxe.Int64):Void;
/** Alternative version of: {@link #glBindBuffersBase BindBuffersBase}  */
/**
 * Binds {@code count} existing buffer objects to bindings numbered {@code first} through {@code first+count-1} in the array of buffer binding points
 * corresponding to {@code target}. If {@code buffers} is not {@code NULL}, it specifies an array of {@code count} values, each of which must be zero or the name
 * of an existing buffer object. It is equivalent to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	if ( buffers == NULL ) {
 * 		glBindBufferBase(target, first + i, 0);
 * 	} else {
 * 		glBindBufferBase(target, first + i, buffers[i]);
 * 	}
 * }</code></pre>
 * except that the single general buffer binding corresponding to {@code target} is unmodified, and that buffers will not be created if they do not exist.
 *
 * @param target  the buffer object target. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param first   the first binding
 * @param count   the number of bindings
 * @param buffers an array of zeros or names of existing buffers objects
 */
	static public function glBindBuffersBase(target:Int,first:Int,count:Int,buffers:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,first:Int,buffers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glBindBuffersBase BindBuffersBase}  */
	static public function nglBindBuffersBase(target:Int,first:Int,count:Int,buffers:haxe.Int64):Void;
/** Unsafe version of {@link #glBindImageTextures BindImageTextures}  */
	static public function nglBindImageTextures(first:Int,count:Int,textures:haxe.Int64):Void;
/** Alternative version of: {@link #glBindVertexBuffers BindVertexBuffers}  */
/**
 * Binds {@code count} existing buffer objects to vertex buffer binding points numbered {@code first} through {@code first+count-1}. If {@code buffers} is
 * not {@code NULL}, it specifies an array of {@code count} values, each of which must be zero or the name of an existing buffer object. {@code offsets} and
 * {@code strides} specify arrays of {@code count} values indicating the offset of the first element and stride between elements in each buffer,
 * respectively. If {@code buffers} is {@code NULL}, each affected vertex buffer binding point from {@code first} through {@code first+count-1} will be reset to
 * have no bound buffer object. In this case, the offsets and strides associated with the binding points are set to default values, ignoring
 * {@code offsets} and {@code strides}.
 * 
 * <p>{@code BindVertexBuffers} is equivalent to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	if ( buffers == NULL ) {
 * 		glBindVertexBuffer(first + i, 0, 0, 16);
 * 	} else {
 * 		glBindVertexBuffer(first + i, buffers[i], offsets[i], strides[i]);
 * 	}
 * }</code></pre>
 * except that buffers will not be created if they do not exist.</p>
 * 
 * <p>The values specified in {@code buffers}, {@code offsets}, and {@code strides} will be checked separately for each vertex buffer binding point. When a
 * value for a specific binding point is invalid, the state for that binding point will be unchanged and an error will be generated. However, state for
 * other binding points will still be changed if their corresponding values are valid.</p>
 *
 * @param first   the first vertex buffer binding point
 * @param count   the number of vertex buffer binding points
 * @param buffers an array of zeros or names of existing buffers objects
 * @param offsets an array of offses
 * @param strides an array of stride values
 */
	static public function glBindVertexBuffers(first:Int,count:Int,buffers:java.nio.ByteBuffer,offsets:java.nio.ByteBuffer,strides:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,buffers:java.nio.IntBuffer,offsets:org.lwjgl.PointerBuffer,strides:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glBindBuffersRange BindBuffersRange}  */
/**
 * Binds {@code count} existing buffer objects to bindings numbered {@code first} through {@code first+count-1} in the array of buffer binding points
 * corresponding to {@code target}. {@code offsets} and {@code sizes} specify arrays of {@code count} values indicating the range of each buffer to bind.
 * If {@code buffers} is {@code NULL}, all bindings from {@code first} through {@code first+count-1} are reset to their unbound (zero) state. In this
 * case, the offsets and sizes associated with the binding points are set to default values, ignoring {@code offsets} and {@code sizes}. It is equivalent
 * to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	if ( buffers == NULL ) {
 * 		glBindBufferRange(target, first + i, 0, 0, 0);
 * 	} else {
 * 		glBindBufferRange(target, first + i, buffers[i], offsets[i], sizes[i]);
 * 	}
 * }</code></pre>
 * except that the single general buffer binding corresponding to {@code target} is unmodified, and that buffers will not be created if they do not exist.
 * 
 * <p>The values specified in {@code buffers}, {@code offsets}, and {@code sizes} will be checked separately for each binding point. When values for a
 * specific binding point are invalid, the state for that binding point will be unchanged and an error will be generated. However, state for other binding
 * points will still be changed if their corresponding values are valid.</p>
 *
 * @param target  the buffer object target. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param first   the first binding
 * @param count   the number of bindings
 * @param buffers an array of names of existing buffers objects
 * @param offsets an array of offsets
 * @param sizes   an array of sizes
 */
	static public function glBindBuffersRange(target:Int,first:Int,count:Int,buffers:java.nio.ByteBuffer,offsets:java.nio.ByteBuffer,sizes:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,first:Int,buffers:java.nio.IntBuffer,offsets:org.lwjgl.PointerBuffer,sizes:org.lwjgl.PointerBuffer):Void {})
/** Returns the {@link ARBMultiBind} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBMultiBind;
/** Alternative version of: {@link #glBindImageTextures BindImageTextures}  */
/**
 * Binds {@code count} existing texture objects to image units numbered {@code first} through {@code first+count-1}. If {@code textures} is not {@code NULL}, it
 * specifies an array of {@code count} values, each of which must be zero or the name of an existing texture object. If {@code textures} is {@code NULL}, each
 * affected image unit from {@code first} through {@code first+count-1} will be reset to have no bound texture object.
 * 
 * <p>When binding a non-zero texture object to an image unit, the image unit {@code level}, {@code layered}, {@code layer}, and {@code access} parameters are
 * set to zero, {@link GL11#GL_TRUE TRUE}, zero, and {@link GL15#GL_READ_WRITE READ_WRITE}, respectively. The image unit {@code format} parameter is taken from the internal
 * format of the texture image at level zero of the texture object identified by {@code textures}. For cube map textures, the internal format of the
 * {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_X TEXTURE_CUBE_MAP_POSITIVE_X} image of level zero is used. For multisample, multisample array, buffer, and rectangle textures, the internal
 * format of the single texture level is used.</p>
 * 
 * <p>When unbinding a texture object from an image unit, the image unit parameters {@code level}, {@code layered}, {@code layer}, and {@code format} will be
 * reset to their default values of zero, {@link GL11#GL_FALSE FALSE}, 0, and {@link GL30#GL_R8 R8}, respectively.</p>
 * 
 * <p>{@code BindImageTextures} is equivalent to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	if ( textures == NULL || textures[i] = 0 ) {
 * 		glBindImageTexture(first + i, 0, 0, FALSE, 0, READ_ONLY, R8);
 * 	} else {
 * 		glBindImageTexture(first + i, textures[i], 0, TRUE, 0, READ_WRITE, lookupInternalFormat(textures[i]));
 * 	}
 * }</code></pre>
 * where {@code lookupInternalFormat} returns the internal format of the specified texture object.</p>
 * 
 * <p>The values specified in {@code textures} will be checked separately for each image unit. When a value for a specific image unit is invalid, the state
 * for that image unit will be unchanged and an error will be generated. However, state for other image units will still be changed if their corresponding
 * values are valid.</p>
 *
 * @param first    the first image unit
 * @param count    the number of image units
 * @param textures an array of zeros or names of existing texture objects
 */
	static public function glBindImageTextures(first:Int,count:Int,textures:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,textures:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glBindVertexBuffers BindVertexBuffers}  */
	static public function nglBindVertexBuffers(first:Int,count:Int,buffers:haxe.Int64,offsets:haxe.Int64,strides:haxe.Int64):Void;

}
