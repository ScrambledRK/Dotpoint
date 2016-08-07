package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTDirectStateAccess")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/direct_state_access.txt">EXT_direct_state_access</a> extension.
 * 
 * <p>This extension introduces a set of new "direct state access" commands (meaning no selector is involved) to access (update and query) OpenGL state that
 * previously depended on the OpenGL state selectors for access. These new commands supplement the existing selector-based OpenGL commands to access the
 * same state.</p>
 * 
 * <p>The intent of this extension is to make it more efficient for libraries to avoid disturbing selector and latched state. The extension also allows more
 * efficient command usage by eliminating the need for selector update commands.</p>
 * 
 * <p>Two derivative advantages of this extension are 1) display lists can be executed using these commands that avoid disturbing selectors that subsequent
 * commands may depend on, and 2) drivers implemented with a dual-thread partitioning with OpenGL command buffering from an application thread and then
 * OpenGL command dispatching in a concurrent driver thread can avoid thread synchronization created by selector saving, setting, command execution, and
 * selector restoration.</p>
 * 
 * <p>This extension does not itself add any new OpenGL state.</p>
 * 
 * <p>We call a state variable in OpenGL an "OpenGL state selector" or simply a "selector" if OpenGL commands depend on the state variable to determine what
 * state to query or update. The matrix mode and active texture are both selectors. Object bindings for buffers, programs, textures, and framebuffer
 * objects are also selectors.</p>
 * 
 * <p>We call OpenGL state "latched" if the state is set by one OpenGL command but then that state is saved by a subsequent command or the state determines
 * how client memory or buffer object memory is accessed by a subsequent command. The array and element array buffer bindings are latched by vertex array
 * specification commands to determine which buffer a given vertex array uses. Vertex array state and pixel pack/unpack state decides how client memory or
 * buffer object memory is accessed by subsequent vertex pulling or image specification commands.</p>
 * 
 * <p>The existence of selectors and latched state in the OpenGL API reduces the number of parameters to various sets of OpenGL commands but complicates the
 * access to state for layered libraries which seek to access state without disturbing other state, namely the state of state selectors and latched state.
 * In many cases, selectors and latched state were introduced by extensions as OpenGL evolved to minimize the disruption to the OpenGL API when new
 * functionality, particularly the pluralization of existing functionality as when texture objects and later multiple texture units, was introduced.</p>
 * 
 * <p>The OpenGL API involves several selectors (listed in historical order of introduction):
 * <ul>
 * <li>The matrix mode.</li>
 * <li>The current bound texture for each supported texture target.</li>
 * <li>The active texture.</li>
 * <li>The active client texture.</li>
 * <li>The current bound program for each supported program target.</li>
 * <li>The current bound buffer for each supported buffer target.</li>
 * <li>The current GLSL program.</li>
 * <li>The current framebuffer object.</li>
 * </ul>  The new selector-free update commands can be compiled into display lists.</p>
 * 
 * <p>The OpenGL API has latched state for vertex array buffer objects and pixel store state. When an application issues a GL command to unpack or pack pixels
 * (for example, glTexImage2D or glReadPixels respectively), the current unpack and pack pixel store state determines how the pixels are unpacked
 * from/packed to client memory or pixel buffer objects. For example, consider:
 * <pre><code style="font-family: monospace">
 * glPixelStorei(GL_UNPACK_SWAP_BYTES, GL_TRUE);
 * glPixelStorei(GL_UNPACK_ROW_LENGTH, 640);
 * glBindBuffer(GL_PIXEL_UNPACK_BUFFER, 47);
 * glDrawPixels(100, 100, GL_RGB, GL_FLOAT, pixels);</code></pre>
 * The unpack swap bytes and row length state set by the preceding glPixelStorei commands (as well as the 6 other unpack pixel store state variables)
 * control how data is read (unpacked) from buffer of data pointed to by pixels. The glBindBuffer command also specifies an unpack buffer object (47) so
 * the pixel pointer is actually treated as a byte offset into buffer object 47.</p>
 * 
 * <p>When an application issues a command to configure a vertex array, the current array buffer state is latched as the binding for the particular vertex
 * array being specified. For example, consider:
 * <pre><code style="font-family: monospace">
 * glBindBuffer(GL_ARRAY_BUFFER, 23);
 * glVertexPointer(3, GL_FLOAT, 12, pointer);</code></pre>
 * The glBindBuffer command updates the array buffering binding (GL_ARRAY_BUFFER_BINDING) to the buffer object named 23. The subsequent glVertexPointer
 * command specifies explicit parameters for the size, type, stride, and pointer to access the position vertex array BUT ALSO latches the current array
 * buffer binding for the vertex array buffer binding (GL_VERTEX_ARRAY_BUFFER_BINDING). Effectively the current array buffer binding buffer object becomes
 * an implicit fifth parameter to glVertexPointer and this applies to all the gl*Pointer vertex array specification commands.</p>
 * 
 * <p>Selectors and latched state create problems for layered libraries using OpenGL because selectors require the selector state to be modified to update
 * some other state and latched state means implicit state can affect the operation of commands specifying, packing, or unpacking data through
 * pointers/offsets. For layered libraries, a state update performed by the library may attempt to save the selector state, set the selector, update/query
 * some state the selector controls, and then restore the selector to its saved state. Layered libraries can skip the selector save/restore but this risks
 * introducing uncertainty about the state of a selector after calling layered library routines. Such selector side-effects are difficult to document and
 * lead to compatibility issues as the layered library evolves or its usage varies. For latched state, layered libraries may find commands such as
 * glDrawPixels do not work as expected because latched pixel store state is not what the library expects. Querying or pushing the latched state, setting
 * the latched state explicitly, performing the operation involving latched state, and then restoring or popping the latched state avoids entanglements
 * with latched state but at considerable cost.</p>
 * 
 * <h3>EXAMPLE USAGE OF THIS EXTENSION'S FUNCTIONALITY</h3>
 * 
 * <p>Consider the following routine to set the modelview matrix involving the matrix mode selector:
 * <pre><code style="font-family: monospace">
 * void setModelviewMatrix(const GLfloat matrix[16])
 * {
 * 	GLenum savedMatrixMode;
 * 
 * 	glGetIntegerv(GL_MATRIX_MODE, &savedMatrixMode);
 * 	glMatrixMode(GL_MODELVIEW);
 * 	glLoadMatrixf(matrix);
 * 	glMatrixMode(savedMatrixMode);
 * }</code></pre>
 * Notice that four OpenGL commands are required to update the current modelview matrix without disturbing the matrix mode selector.</p>
 * 
 * <p>OpenGL query commands can also substantially reduce the performance of modern OpenGL implementations which may off-load OpenGL state processing to
 * another CPU core/thread or to the GPU itself.</p>
 * 
 * <p>An alternative to querying the selector is to use the glPushAttrib/glPopAttrib commands. However this approach typically involves pushing far more state
 * than simply the one or two selectors that need to be saved and restored. Because so much state is associated with a given push/pop attribute bit, the
 * glPushAttrib and glPopAttrib commands are considerably more costly than the save/restore approach. Additionally glPushAttrib risks overflowing the
 * attribute stack.</p>
 * 
 * <p>The reliability and performance of layered libraries and applications can be improved by adding to the OpenGL API a new set of commands to access
 * directly OpenGL state that otherwise involves selectors to access.</p>
 * 
 * <p>The above example can be reimplemented more efficiently and without selector side-effects:
 * <pre><code style="font-family: monospace">
 * void setModelviewMatrix(const GLfloat matrix[16])
 * {
 * 	glMatrixLoadfEXT(GL_MODELVIEW, matrix);
 * }</code></pre>
 * Consider a layered library seeking to load a texture:
 * <pre><code style="font-family: monospace">
 * void loadTexture(GLint texobj, GLint width, GLint height, void *data)
 * {
 * 	glBindTexture(GL_TEXTURE_2D, texobj);
 * 	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB8, width, height, GL_RGB, GL_FLOAT, data);
 * }</code></pre>
 * The library expects the data to be packed into the buffer pointed to by data. But what if the current pixel unpack buffer binding is not zero so the
 * current pixel unpack buffer, rather than client memory, will be read? Or what if the application has modified the GL_UNPACK_ROW_LENGTH pixel store state
 * before loadTexture is called?</p>
 * 
 * <p>We can fix the routine by calling glBindBuffer(GL_PIXEL_UNPACK_BUFFER, 0) and setting all the pixel store unpack state to the initial state the
 * loadTexture routine expects, but this is expensive. It also risks disturbing the state so when loadTexture returns to the application, the application
 * doesn't realize the current texture object (for whatever texture unit the current active texture happens to be) and pixel store state has changed.</p>
 * 
 * <p>We can more efficiently implement this routine without disturbing selector or latched state as follows:
 * <pre><code style="font-family: monospace">
 * void loadTexture(GLint texobj, GLint width, GLint height, void *data)
 * {
 * 	glPushClientAttribDefaultEXT(GL_CLIENT_PIXEL_STORE_BIT);
 * 	glTextureImage2D(texobj, GL_TEXTURE_2D, 0, GL_RGB8, width, height, GL_RGB, GL_FLOAT, data);
 * 	glPopClientAttrib();
 * }</code></pre>
 * Now loadTexture does not have to worry about inappropriately configured pixel store state or a non-zero pixel unpack buffer binding. And loadTexture has
 * no unintended side-effects for selector or latched state (assuming the client attrib state does not overflow).</p>
 */
extern class EXTDirectStateAccess 
{
/** GetBooleani_v, GetIntegeri_v, GetFloati_vEXT, GetDoublei_vEXT.  */
	inline static public var GL_PROGRAM_MATRIX_EXT:Int = 36397;
/** GetBooleani_v, GetIntegeri_v, GetFloati_vEXT, GetDoublei_vEXT.  */
	inline static public var GL_TRANSPOSE_PROGRAM_MATRIX_EXT:Int = 36398;
/** GetBooleani_v, GetIntegeri_v, GetFloati_vEXT, GetDoublei_vEXT.  */
	inline static public var GL_PROGRAM_MATRIX_STACK_DEPTH_EXT:Int = 36399;
/** Function address.  */
	public var ClientAttribDefaultEXT:haxe.Int64;
/** Function address.  */
	public var PushClientAttribDefaultEXT:haxe.Int64;
/** Function address.  */
	public var MatrixLoadfEXT:haxe.Int64;
/** Function address.  */
	public var MatrixLoaddEXT:haxe.Int64;
/** Function address.  */
	public var MatrixMultfEXT:haxe.Int64;
/** Function address.  */
	public var MatrixMultdEXT:haxe.Int64;
/** Function address.  */
	public var MatrixLoadIdentityEXT:haxe.Int64;
/** Function address.  */
	public var MatrixRotatefEXT:haxe.Int64;
/** Function address.  */
	public var MatrixRotatedEXT:haxe.Int64;
/** Function address.  */
	public var MatrixScalefEXT:haxe.Int64;
/** Function address.  */
	public var MatrixScaledEXT:haxe.Int64;
/** Function address.  */
	public var MatrixTranslatefEXT:haxe.Int64;
/** Function address.  */
	public var MatrixTranslatedEXT:haxe.Int64;
/** Function address.  */
	public var MatrixOrthoEXT:haxe.Int64;
/** Function address.  */
	public var MatrixFrustumEXT:haxe.Int64;
/** Function address.  */
	public var MatrixPushEXT:haxe.Int64;
/** Function address.  */
	public var MatrixPopEXT:haxe.Int64;
/** Function address.  */
	public var TextureParameteriEXT:haxe.Int64;
/** Function address.  */
	public var TextureParameterivEXT:haxe.Int64;
/** Function address.  */
	public var TextureParameterfEXT:haxe.Int64;
/** Function address.  */
	public var TextureParameterfvEXT:haxe.Int64;
/** Function address.  */
	public var TextureImage1DEXT:haxe.Int64;
/** Function address.  */
	public var TextureImage2DEXT:haxe.Int64;
/** Function address.  */
	public var TextureSubImage1DEXT:haxe.Int64;
/** Function address.  */
	public var TextureSubImage2DEXT:haxe.Int64;
/** Function address.  */
	public var CopyTextureImage1DEXT:haxe.Int64;
/** Function address.  */
	public var CopyTextureImage2DEXT:haxe.Int64;
/** Function address.  */
	public var CopyTextureSubImage1DEXT:haxe.Int64;
/** Function address.  */
	public var CopyTextureSubImage2DEXT:haxe.Int64;
/** Function address.  */
	public var GetTextureImageEXT:haxe.Int64;
/** Function address.  */
	public var GetTextureParameterfvEXT:haxe.Int64;
/** Function address.  */
	public var GetTextureParameterivEXT:haxe.Int64;
/** Function address.  */
	public var GetTextureLevelParameterfvEXT:haxe.Int64;
/** Function address.  */
	public var GetTextureLevelParameterivEXT:haxe.Int64;
/** Function address.  */
	public var TextureImage3DEXT:haxe.Int64;
/** Function address.  */
	public var TextureSubImage3DEXT:haxe.Int64;
/** Function address.  */
	public var CopyTextureSubImage3DEXT:haxe.Int64;
/** Function address.  */
	public var BindMultiTextureEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordPointerEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexEnvfEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexEnvfvEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexEnviEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexEnvivEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexGendEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexGendvEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexGenfEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexGenfvEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexGeniEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexGenivEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexEnvfvEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexEnvivEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexGendvEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexGenfvEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexGenivEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexParameteriEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexParameterivEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexParameterfEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexParameterfvEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexImage1DEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexImage2DEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexSubImage1DEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexSubImage2DEXT:haxe.Int64;
/** Function address.  */
	public var CopyMultiTexImage1DEXT:haxe.Int64;
/** Function address.  */
	public var CopyMultiTexImage2DEXT:haxe.Int64;
/** Function address.  */
	public var CopyMultiTexSubImage1DEXT:haxe.Int64;
/** Function address.  */
	public var CopyMultiTexSubImage2DEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexImageEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexParameterfvEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexParameterivEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexLevelParameterfvEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexLevelParameterivEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexImage3DEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexSubImage3DEXT:haxe.Int64;
/** Function address.  */
	public var CopyMultiTexSubImage3DEXT:haxe.Int64;
/** Function address.  */
	public var EnableClientStateIndexedEXT:haxe.Int64;
/** Function address.  */
	public var DisableClientStateIndexedEXT:haxe.Int64;
/** Function address.  */
	public var EnableClientStateiEXT:haxe.Int64;
/** Function address.  */
	public var DisableClientStateiEXT:haxe.Int64;
/** Function address.  */
	public var GetFloatIndexedvEXT:haxe.Int64;
/** Function address.  */
	public var GetDoubleIndexedvEXT:haxe.Int64;
/** Function address.  */
	public var GetPointerIndexedvEXT:haxe.Int64;
/** Function address.  */
	public var GetFloati_vEXT:haxe.Int64;
/** Function address.  */
	public var GetDoublei_vEXT:haxe.Int64;
/** Function address.  */
	public var GetPointeri_vEXT:haxe.Int64;
/** Function address.  */
	public var EnableIndexedEXT:haxe.Int64;
/** Function address.  */
	public var DisableIndexedEXT:haxe.Int64;
/** Function address.  */
	public var IsEnabledIndexedEXT:haxe.Int64;
/** Function address.  */
	public var GetIntegerIndexedvEXT:haxe.Int64;
/** Function address.  */
	public var GetBooleanIndexedvEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramStringEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParameter4dEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParameter4dvEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParameter4fEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParameter4fvEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedProgramLocalParameterdvEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedProgramLocalParameterfvEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedProgramivEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedProgramStringEXT:haxe.Int64;
/** Function address.  */
	public var CompressedTextureImage3DEXT:haxe.Int64;
/** Function address.  */
	public var CompressedTextureImage2DEXT:haxe.Int64;
/** Function address.  */
	public var CompressedTextureImage1DEXT:haxe.Int64;
/** Function address.  */
	public var CompressedTextureSubImage3DEXT:haxe.Int64;
/** Function address.  */
	public var CompressedTextureSubImage2DEXT:haxe.Int64;
/** Function address.  */
	public var CompressedTextureSubImage1DEXT:haxe.Int64;
/** Function address.  */
	public var GetCompressedTextureImageEXT:haxe.Int64;
/** Function address.  */
	public var CompressedMultiTexImage3DEXT:haxe.Int64;
/** Function address.  */
	public var CompressedMultiTexImage2DEXT:haxe.Int64;
/** Function address.  */
	public var CompressedMultiTexImage1DEXT:haxe.Int64;
/** Function address.  */
	public var CompressedMultiTexSubImage3DEXT:haxe.Int64;
/** Function address.  */
	public var CompressedMultiTexSubImage2DEXT:haxe.Int64;
/** Function address.  */
	public var CompressedMultiTexSubImage1DEXT:haxe.Int64;
/** Function address.  */
	public var GetCompressedMultiTexImageEXT:haxe.Int64;
/** Function address.  */
	public var MatrixLoadTransposefEXT:haxe.Int64;
/** Function address.  */
	public var MatrixLoadTransposedEXT:haxe.Int64;
/** Function address.  */
	public var MatrixMultTransposefEXT:haxe.Int64;
/** Function address.  */
	public var MatrixMultTransposedEXT:haxe.Int64;
/** Function address.  */
	public var NamedBufferDataEXT:haxe.Int64;
/** Function address.  */
	public var NamedBufferSubDataEXT:haxe.Int64;
/** Function address.  */
	public var MapNamedBufferEXT:haxe.Int64;
/** Function address.  */
	public var UnmapNamedBufferEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedBufferParameterivEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedBufferSubDataEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1fEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2fEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3fEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4fEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1iEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2iEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3iEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4iEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1ivEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2ivEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3ivEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4ivEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x3fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x2fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x4fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x2fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x4fvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x3fvEXT:haxe.Int64;
/** Function address.  */
	public var TextureBufferEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexBufferEXT:haxe.Int64;
/** Function address.  */
	public var TextureParameterIivEXT:haxe.Int64;
/** Function address.  */
	public var TextureParameterIuivEXT:haxe.Int64;
/** Function address.  */
	public var GetTextureParameterIivEXT:haxe.Int64;
/** Function address.  */
	public var GetTextureParameterIuivEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexParameterIivEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexParameterIuivEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexParameterIivEXT:haxe.Int64;
/** Function address.  */
	public var GetMultiTexParameterIuivEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1uiEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2uiEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3uiEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4uiEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1uivEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2uivEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3uivEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4uivEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParameters4fvEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParameterI4iEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParameterI4ivEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParametersI4ivEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParameterI4uiEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParameterI4uivEXT:haxe.Int64;
/** Function address.  */
	public var NamedProgramLocalParametersI4uivEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedProgramLocalParameterIivEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedProgramLocalParameterIuivEXT:haxe.Int64;
/** Function address.  */
	public var NamedRenderbufferStorageEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedRenderbufferParameterivEXT:haxe.Int64;
/** Function address.  */
	public var NamedRenderbufferStorageMultisampleEXT:haxe.Int64;
/** Function address.  */
	public var NamedRenderbufferStorageMultisampleCoverageEXT:haxe.Int64;
/** Function address.  */
	public var CheckNamedFramebufferStatusEXT:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferTexture1DEXT:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferTexture2DEXT:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferTexture3DEXT:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferRenderbufferEXT:haxe.Int64;
/** Function address.  */
	public var GetNamedFramebufferAttachmentParameterivEXT:haxe.Int64;
/** Function address.  */
	public var GenerateTextureMipmapEXT:haxe.Int64;
/** Function address.  */
	public var GenerateMultiTexMipmapEXT:haxe.Int64;
/** Function address.  */
	public var FramebufferDrawBufferEXT:haxe.Int64;
/** Function address.  */
	public var FramebufferDrawBuffersEXT:haxe.Int64;
/** Function address.  */
	public var FramebufferReadBufferEXT:haxe.Int64;
/** Function address.  */
	public var GetFramebufferParameterivEXT:haxe.Int64;
/** Function address.  */
	public var NamedCopyBufferSubDataEXT:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferTextureEXT:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferTextureLayerEXT:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferTextureFaceEXT:haxe.Int64;
/** Function address.  */
	public var TextureRenderbufferEXT:haxe.Int64;
/** Function address.  */
	public var MultiTexRenderbufferEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexOffsetEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayColorOffsetEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayEdgeFlagOffsetEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayIndexOffsetEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayNormalOffsetEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayTexCoordOffsetEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayMultiTexCoordOffsetEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayFogCoordOffsetEXT:haxe.Int64;
/** Function address.  */
	public var VertexArraySecondaryColorOffsetEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexAttribOffsetEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexAttribIOffsetEXT:haxe.Int64;
/** Function address.  */
	public var EnableVertexArrayEXT:haxe.Int64;
/** Function address.  */
	public var DisableVertexArrayEXT:haxe.Int64;
/** Function address.  */
	public var EnableVertexArrayAttribEXT:haxe.Int64;
/** Function address.  */
	public var DisableVertexArrayAttribEXT:haxe.Int64;
/** Function address.  */
	public var GetVertexArrayIntegervEXT:haxe.Int64;
/** Function address.  */
	public var GetVertexArrayPointervEXT:haxe.Int64;
/** Function address.  */
	public var GetVertexArrayIntegeri_vEXT:haxe.Int64;
/** Function address.  */
	public var GetVertexArrayPointeri_vEXT:haxe.Int64;
/** Function address.  */
	public var MapNamedBufferRangeEXT:haxe.Int64;
/** Function address.  */
	public var FlushMappedNamedBufferRangeEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Buffer object offset version of: {@link #glMultiTexImage3DEXT MultiTexImage3DEXT}  */
/**
 * 
 *
 * @param texunit        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param height         
 * @param depth          
 * @param border         
 * @param format         
 * @param type           
 * @param pixels         
 */
/** DoubleBuffer version of: {@link #glMultiTexImage3DEXT MultiTexImage3DEXT}  */
/** FloatBuffer version of: {@link #glMultiTexImage3DEXT MultiTexImage3DEXT}  */
/** IntBuffer version of: {@link #glMultiTexImage3DEXT MultiTexImage3DEXT}  */
/** ShortBuffer version of: {@link #glMultiTexImage3DEXT MultiTexImage3DEXT}  */
	static public function glMultiTexImage3DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glTextureParameteriEXT TextureParameteriEXT}  */
	static public function nglTextureParameteriEXT(texture:Int,target:Int,pname:Int,param:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param target 
 * @param index  
 * @param params 
 */
/** Alternative version of: {@link #glGetPointerIndexedvEXT GetPointerIndexedvEXT}  */
	static public function glGetPointerIndexedvEXT(target:Int,index:Int,params:org.lwjgl.PointerBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param x       
 * @param y       
 * @param z       
 * @param w       
 */
	static public function glNamedProgramLocalParameter4dEXT(program:Int,target:Int,index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/** Unsafe version of {@link #glGetMultiTexImageEXT GetMultiTexImageEXT}  */
/** JNI method for {@link #glGetMultiTexImageEXT GetMultiTexImageEXT}  */
	static public function nglGetMultiTexImageEXT(texunit:Int,target:Int,level:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexParameterfvEXT GetMultiTexParameterfvEXT}  */
	static public function glGetMultiTexParameterfvEXT(texunit:Int,target:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix2x4fvEXT ProgramUniformMatrix2x4fvEXT}  */
/**
 * 
 *
 * @param program   
 * @param location  
 * @param count     
 * @param transpose 
 * @param value     
 */
	static public function glProgramUniformMatrix2x4fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Single return value version of: {@link #glGetVertexArrayPointeri_vEXT GetVertexArrayPointeri_vEXT}  */
	static public function glGetVertexArrayPointeriEXT(vaobj:Int,index:Int,pname:Int):haxe.Int64;
/** Unsafe version of {@link #glProgramUniformMatrix2x4fvEXT ProgramUniformMatrix2x4fvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix2x4fvEXT ProgramUniformMatrix2x4fvEXT}  */
	static public function nglProgramUniformMatrix2x4fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedMultiTexImage3DEXT CompressedMultiTexImage3DEXT}  */
/** Buffer object offset version of: {@link #glCompressedMultiTexImage3DEXT CompressedMultiTexImage3DEXT}  */
/**
 * 
 *
 * @param texunit        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param height         
 * @param depth          
 * @param border         
 * @param imageSize      
 * @param data           
 */
	static public function glCompressedMultiTexImage3DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/**
 * 
 *
 * @param framebuffer 
 * @param pname       
 * @param param       
 */
/** Alternative version of: {@link #glGetFramebufferParameterivEXT GetFramebufferParameterivEXT}  */
	static public function glGetFramebufferParameterivEXT(framebuffer:Int,pname:Int,param:java.nio.IntBuffer):Void;
	@:overload(function (framebuffer:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/** ByteBuffer version of: {@link #glNamedBufferSubDataEXT NamedBufferSubDataEXT}  */
/** DoubleBuffer version of: {@link #glNamedBufferSubDataEXT NamedBufferSubDataEXT}  */
/** FloatBuffer version of: {@link #glNamedBufferSubDataEXT NamedBufferSubDataEXT}  */
/** IntBuffer version of: {@link #glNamedBufferSubDataEXT NamedBufferSubDataEXT}  */
/** ShortBuffer version of: {@link #glNamedBufferSubDataEXT NamedBufferSubDataEXT}  */
/**
 * 
 *
 * @param buffer 
 * @param offset 
 * @param size   
 * @param data   
 */
	static public function glNamedBufferSubDataEXT(buffer:Int,offset:haxe.Int64,size:haxe.Int64,data:java.nio.ByteBuffer):Void;
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.ByteBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.DoubleBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.FloatBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.IntBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.ShortBuffer):Void {})
/**
 * 
 *
 * @param matrixMode 
 * @param m          
 */
/** Alternative version of: {@link #glMatrixLoaddEXT MatrixLoaddEXT}  */
	static public function glMatrixLoaddEXT(matrixMode:Int,m:java.nio.DoubleBuffer):Void;
	@:overload(function (matrixMode:Int,m:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glCompressedMultiTexImage3DEXT CompressedMultiTexImage3DEXT}  */
/** JNI method for {@link #glCompressedMultiTexImage3DEXT CompressedMultiTexImage3DEXT}  */
	static public function nglCompressedMultiTexImage3DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/**
 * 
 *
 * @param vaobj  
 * @param buffer 
 * @param type   
 * @param stride 
 * @param offset 
 */
	static public function glVertexArrayNormalOffsetEXT(vaobj:Int,buffer:Int,type:Int,stride:Int,offset:haxe.Int64):Void;
/**
 * 
 *
 * @param framebuffer 
 * @param mode        
 */
	static public function glFramebufferDrawBufferEXT(framebuffer:Int,mode:Int):Void;
/** Unsafe version of {@link #glGetMultiTexLevelParameterivEXT GetMultiTexLevelParameterivEXT}  */
/** JNI method for {@link #glGetMultiTexLevelParameterivEXT GetMultiTexLevelParameterivEXT}  */
	static public function nglGetMultiTexLevelParameterivEXT(texunit:Int,target:Int,level:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param pname   
 * @param param   
 */
/** Alternative version of: {@link #glTextureParameterivEXT TextureParameterivEXT}  */
	static public function glTextureParameterivEXT(texture:Int,target:Int,pname:Int,param:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glCopyTextureImage1DEXT CopyTextureImage1DEXT}  */
	static public function nglCopyTextureImage1DEXT(texture:Int,target:Int,level:Int,internalformat:Int,x:Int,y:Int,width:Int,border:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform1fvEXT ProgramUniform1fvEXT}  */
/** JNI method for {@link #glProgramUniform1fvEXT ProgramUniform1fvEXT}  */
	static public function nglProgramUniform1fvEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glEnableVertexArrayAttribEXT EnableVertexArrayAttribEXT}  */
	static public function nglEnableVertexArrayAttribEXT(vaobj:Int,index:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3fvEXT ProgramUniformMatrix3fvEXT}  */
/**
 * 
 *
 * @param program   
 * @param location  
 * @param count     
 * @param transpose 
 * @param value     
 */
	static public function glProgramUniformMatrix3fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix4x2fvEXT ProgramUniformMatrix4x2fvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix4x2fvEXT ProgramUniformMatrix4x2fvEXT}  */
	static public function nglProgramUniformMatrix4x2fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glMapNamedBufferRangeEXT MapNamedBufferRangeEXT}  */
/** JNI method for {@link #glMapNamedBufferRangeEXT MapNamedBufferRangeEXT}  */
	static public function nglMapNamedBufferRangeEXT(buffer:Int,offset:haxe.Int64,length:haxe.Int64,access:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (buffer:Int,offset:haxe.Int64,length:haxe.Int64,access:Int):haxe.Int64 {})
/** Single return value version of: {@link #glGetVertexArrayPointervEXT GetVertexArrayPointervEXT}  */
	static public function glGetVertexArrayPointerEXT(vaobj:Int,pname:Int):haxe.Int64;
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param level   
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetTextureLevelParameterivEXT GetTextureLevelParameterivEXT}  */
	static public function glGetTextureLevelParameterivEXT(texture:Int,target:Int,level:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glNamedBufferDataEXT NamedBufferDataEXT}  */
/** ByteBuffer version of: {@link #glNamedBufferDataEXT NamedBufferDataEXT}  */
/** DoubleBuffer version of: {@link #glNamedBufferDataEXT NamedBufferDataEXT}  */
/** FloatBuffer version of: {@link #glNamedBufferDataEXT NamedBufferDataEXT}  */
/** IntBuffer version of: {@link #glNamedBufferDataEXT NamedBufferDataEXT}  */
/** ShortBuffer version of: {@link #glNamedBufferDataEXT NamedBufferDataEXT}  */
/**
 * 
 *
 * @param buffer 
 * @param size   
 * @param data   
 * @param usage  
 */
	static public function glNamedBufferDataEXT(buffer:Int,size:haxe.Int64,data:java.nio.ByteBuffer,usage:Int):Void;
	@:overload(function (buffer:Int,size:haxe.Int64,usage:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.ByteBuffer,usage:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.DoubleBuffer,usage:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.FloatBuffer,usage:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.IntBuffer,usage:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.ShortBuffer,usage:Int):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2fvEXT ProgramUniformMatrix2fvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix2fvEXT ProgramUniformMatrix2fvEXT}  */
	static public function nglProgramUniformMatrix2fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4x2fvEXT ProgramUniformMatrix4x2fvEXT}  */
/**
 * 
 *
 * @param program   
 * @param location  
 * @param count     
 * @param transpose 
 * @param value     
 */
	static public function glProgramUniformMatrix4x2fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glGetMultiTexGenfvEXT GetMultiTexGenfvEXT}  */
/** JNI method for {@link #glGetMultiTexGenfvEXT GetMultiTexGenfvEXT}  */
	static public function nglGetMultiTexGenfvEXT(texunit:Int,coord:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glMultiTexSubImage2DEXT MultiTexSubImage2DEXT}  */
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param yoffset 
 * @param width   
 * @param height  
 * @param format  
 * @param type    
 * @param pixels  
 */
/** DoubleBuffer version of: {@link #glMultiTexSubImage2DEXT MultiTexSubImage2DEXT}  */
/** FloatBuffer version of: {@link #glMultiTexSubImage2DEXT MultiTexSubImage2DEXT}  */
/** IntBuffer version of: {@link #glMultiTexSubImage2DEXT MultiTexSubImage2DEXT}  */
/** ShortBuffer version of: {@link #glMultiTexSubImage2DEXT MultiTexSubImage2DEXT}  */
	static public function glMultiTexSubImage2DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 */
	static public function glProgramUniform1fEXT(program:Int,location:Int,v0:Float):Void;
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 * @param v1       
 * @param v2       
 */
	static public function glProgramUniform3iEXT(program:Int,location:Int,v0:Int,v1:Int,v2:Int):Void;
/** Unsafe version of {@link #glMultiTexImage2DEXT MultiTexImage2DEXT}  */
/** JNI method for {@link #glMultiTexImage2DEXT MultiTexImage2DEXT}  */
	static public function nglMultiTexImage2DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTextureImage3DEXT CompressedTextureImage3DEXT}  */
/** JNI method for {@link #glCompressedTextureImage3DEXT CompressedTextureImage3DEXT}  */
	static public function nglCompressedTextureImage3DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTextureSubImage3DEXT CompressedTextureSubImage3DEXT}  */
/** JNI method for {@link #glCompressedTextureSubImage3DEXT CompressedTextureSubImage3DEXT}  */
	static public function nglCompressedTextureSubImage3DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexSubImage1DEXT MultiTexSubImage1DEXT}  */
/** JNI method for {@link #glMultiTexSubImage1DEXT MultiTexSubImage1DEXT}  */
	static public function nglMultiTexSubImage1DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform4uiEXT ProgramUniform4uiEXT}  */
	static public function nglProgramUniform4uiEXT(program:Int,location:Int,v0:Int,v1:Int,v2:Int,v3:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glNamedFramebufferTextureLayerEXT NamedFramebufferTextureLayerEXT}  */
	static public function nglNamedFramebufferTextureLayerEXT(framebuffer:Int,attachment:Int,texture:Int,level:Int,layer:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glProgramUniform1iEXT ProgramUniform1iEXT}  */
	static public function nglProgramUniform1iEXT(program:Int,location:Int,v0:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param framebuffer 
 * @param attachment  
 * @param texture     
 * @param level       
 */
	static public function glNamedFramebufferTextureEXT(framebuffer:Int,attachment:Int,texture:Int,level:Int):Void;
/** JNI method for {@link #glNamedFramebufferRenderbufferEXT NamedFramebufferRenderbufferEXT}  */
	static public function nglNamedFramebufferRenderbufferEXT(framebuffer:Int,attachment:Int,renderbuffertarget:Int,renderbuffer:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glDisableClientStateiEXT DisableClientStateiEXT}  */
	static public function nglDisableClientStateiEXT(array:Int,index:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glFramebufferDrawBuffersEXT FramebufferDrawBuffersEXT}  */
/** JNI method for {@link #glFramebufferDrawBuffersEXT FramebufferDrawBuffersEXT}  */
	static public function nglFramebufferDrawBuffersEXT(framebuffer:Int,n:Int,bufs:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (framebuffer:Int,n:Int,bufs:haxe.Int64):Void {})
/** Unsafe version of {@link #glMatrixLoadfEXT MatrixLoadfEXT}  */
/** JNI method for {@link #glMatrixLoadfEXT MatrixLoadfEXT}  */
	static public function nglMatrixLoadfEXT(matrixMode:Int,m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (matrixMode:Int,m:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexGenfvEXT MultiTexGenfvEXT}  */
/** JNI method for {@link #glMultiTexGenfvEXT MultiTexGenfvEXT}  */
	static public function nglMultiTexGenfvEXT(texunit:Int,coord:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedTextureImage2DEXT CompressedTextureImage2DEXT}  */
/** Buffer object offset version of: {@link #glCompressedTextureImage2DEXT CompressedTextureImage2DEXT}  */
/**
 * 
 *
 * @param texture        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param height         
 * @param border         
 * @param imageSize      
 * @param data           
 */
	static public function glCompressedTextureImage2DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetNamedProgramLocalParameterdvEXT GetNamedProgramLocalParameterdvEXT}  */
/** JNI method for {@link #glGetNamedProgramLocalParameterdvEXT GetNamedProgramLocalParameterdvEXT}  */
	static public function nglGetNamedProgramLocalParameterdvEXT(program:Int,target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetFramebufferParameterivEXT GetFramebufferParameterivEXT}  */
/** JNI method for {@link #glGetFramebufferParameterivEXT GetFramebufferParameterivEXT}  */
	static public function nglGetFramebufferParameterivEXT(framebuffer:Int,pname:Int,param:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (framebuffer:Int,pname:Int,param:haxe.Int64):Void {})
/**
 * 
 *
 * @param matrixMode 
 */
	static public function glMatrixPushEXT(matrixMode:Int):Void;
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param param   
 */
/** Alternative version of: {@link #glMultiTexParameterfvEXT MultiTexParameterfvEXT}  */
	static public function glMultiTexParameterfvEXT(texunit:Int,target:Int,pname:Int,param:java.nio.FloatBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param texture 
 * @param target  
 */
	static public function glGenerateTextureMipmapEXT(texture:Int,target:Int):Void;
/** JNI method for {@link #glVertexArrayIndexOffsetEXT VertexArrayIndexOffsetEXT}  */
	static public function nglVertexArrayIndexOffsetEXT(vaobj:Int,buffer:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glCopyTextureSubImage2DEXT CopyTextureSubImage2DEXT}  */
	static public function nglCopyTextureSubImage2DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,x:Int,y:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glMultiTexParameterivEXT MultiTexParameterivEXT}  */
/** JNI method for {@link #glMultiTexParameterivEXT MultiTexParameterivEXT}  */
	static public function nglMultiTexParameterivEXT(texunit:Int,target:Int,pname:Int,param:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,param:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetDoubleIndexedvEXT GetDoubleIndexedvEXT}  */
/** JNI method for {@link #glGetDoubleIndexedvEXT GetDoubleIndexedvEXT}  */
	static public function nglGetDoubleIndexedvEXT(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexEnvfvEXT GetMultiTexEnvfvEXT}  */
	static public function glGetMultiTexEnvfvEXT(texunit:Int,target:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param level   
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexLevelParameterfvEXT GetMultiTexLevelParameterfvEXT}  */
	static public function glGetMultiTexLevelParameterfvEXT(texunit:Int,target:Int,level:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetMultiTexGendvEXT GetMultiTexGendvEXT}  */
	static public function glGetMultiTexGendEXT(texunit:Int,coord:Int,pname:Int):Float;
/**
 * 
 *
 * @param texunit        
 * @param target         
 * @param internalformat 
 * @param buffer         
 */
	static public function glMultiTexBufferEXT(texunit:Int,target:Int,internalformat:Int,buffer:Int):Void;
/** Unsafe version of {@link #glNamedProgramLocalParameterI4ivEXT NamedProgramLocalParameterI4ivEXT}  */
/** JNI method for {@link #glNamedProgramLocalParameterI4ivEXT NamedProgramLocalParameterI4ivEXT}  */
	static public function nglNamedProgramLocalParameterI4ivEXT(program:Int,target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform3ivEXT ProgramUniform3ivEXT}  */
/** JNI method for {@link #glProgramUniform3ivEXT ProgramUniform3ivEXT}  */
	static public function nglProgramUniform3ivEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedMultiTexSubImage1DEXT CompressedMultiTexSubImage1DEXT}  */
/** JNI method for {@link #glCompressedMultiTexSubImage1DEXT CompressedMultiTexSubImage1DEXT}  */
	static public function nglCompressedMultiTexSubImage1DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param yoffset 
 * @param zoffset 
 * @param x       
 * @param y       
 * @param width   
 * @param height  
 */
	static public function glCopyMultiTexSubImage3DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,x:Int,y:Int,width:Int,height:Int):Void;
/**
 * 
 *
 * @param renderbuffer    
 * @param coverageSamples 
 * @param colorSamples    
 * @param internalformat  
 * @param width           
 * @param height          
 */
	static public function glNamedRenderbufferStorageMultisampleCoverageEXT(renderbuffer:Int,coverageSamples:Int,colorSamples:Int,internalformat:Int,width:Int,height:Int):Void;
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glMultiTexEnvfvEXT MultiTexEnvfvEXT}  */
	static public function glMultiTexEnvfvEXT(texunit:Int,target:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glNamedBufferDataEXT NamedBufferDataEXT}  */
/** JNI method for {@link #glNamedBufferDataEXT NamedBufferDataEXT}  */
	static public function nglNamedBufferDataEXT(buffer:Int,size:haxe.Int64,data:haxe.Int64,usage:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,size:haxe.Int64,data:haxe.Int64,usage:Int):Void {})
/** JNI method for {@link #glFramebufferReadBufferEXT FramebufferReadBufferEXT}  */
	static public function nglFramebufferReadBufferEXT(framebuffer:Int,mode:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glCompressedMultiTexImage2DEXT CompressedMultiTexImage2DEXT}  */
/** Buffer object offset version of: {@link #glCompressedMultiTexImage2DEXT CompressedMultiTexImage2DEXT}  */
/**
 * 
 *
 * @param texunit        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param height         
 * @param border         
 * @param imageSize      
 * @param data           
 */
	static public function glCompressedMultiTexImage2DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glMultiTexSubImage3DEXT MultiTexSubImage3DEXT}  */
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param yoffset 
 * @param zoffset 
 * @param width   
 * @param height  
 * @param depth   
 * @param format  
 * @param type    
 * @param pixels  
 */
/** DoubleBuffer version of: {@link #glMultiTexSubImage3DEXT MultiTexSubImage3DEXT}  */
/** FloatBuffer version of: {@link #glMultiTexSubImage3DEXT MultiTexSubImage3DEXT}  */
/** IntBuffer version of: {@link #glMultiTexSubImage3DEXT MultiTexSubImage3DEXT}  */
/** ShortBuffer version of: {@link #glMultiTexSubImage3DEXT MultiTexSubImage3DEXT}  */
	static public function glMultiTexSubImage3DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param texunit 
 * @param coord   
 * @param pname   
 * @param param   
 */
	static public function glMultiTexGenfEXT(texunit:Int,coord:Int,pname:Int,param:Float):Void;
/** Unsafe version of {@link #glMapNamedBufferEXT MapNamedBufferEXT}  */
/** JNI method for {@link #glMapNamedBufferEXT MapNamedBufferEXT}  */
	static public function nglMapNamedBufferEXT(buffer:Int,access:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (buffer:Int,access:Int):haxe.Int64 {})
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetTextureParameterIivEXT GetTextureParameterIivEXT}  */
	static public function glGetTextureParameterIivEXT(texture:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexParameteriEXT MultiTexParameteriEXT}  */
	static public function nglMultiTexParameteriEXT(texunit:Int,target:Int,pname:Int,param:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texunit 
 * @param coord   
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexGenivEXT GetMultiTexGenivEXT}  */
	static public function glGetMultiTexGenivEXT(texunit:Int,coord:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param pname   
 * @param param   
 */
	static public function glTextureParameteriEXT(texture:Int,target:Int,pname:Int,param:Int):Void;
/** Single return value version of: {@link #glGetDoubleIndexedvEXT GetDoubleIndexedvEXT}  */
	static public function glGetDoubleIndexedEXT(target:Int,index:Int):Float;
/** Unsafe version of {@link #glProgramUniform4uivEXT ProgramUniform4uivEXT}  */
/** JNI method for {@link #glProgramUniform4uivEXT ProgramUniform4uivEXT}  */
	static public function nglProgramUniform4uivEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glNamedFramebufferTextureEXT NamedFramebufferTextureEXT}  */
	static public function nglNamedFramebufferTextureEXT(framebuffer:Int,attachment:Int,texture:Int,level:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glTextureBufferEXT TextureBufferEXT}  */
	static public function nglTextureBufferEXT(texture:Int,target:Int,internalformat:Int,buffer:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param target 
 * @param index  
 * @param params 
 */
/** Alternative version of: {@link #glGetDoubleIndexedvEXT GetDoubleIndexedvEXT}  */
	static public function glGetDoubleIndexedvEXT(target:Int,index:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexParameterIuivEXT MultiTexParameterIuivEXT}  */
/** JNI method for {@link #glMultiTexParameterIuivEXT MultiTexParameterIuivEXT}  */
	static public function nglMultiTexParameterIuivEXT(texunit:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 * @param v1       
 * @param v2       
 * @param v3       
 */
	static public function glProgramUniform4iEXT(program:Int,location:Int,v0:Int,v1:Int,v2:Int,v3:Int):Void;
/** Unsafe version of {@link #glMultiTexImage3DEXT MultiTexImage3DEXT}  */
/** JNI method for {@link #glMultiTexImage3DEXT MultiTexImage3DEXT}  */
	static public function nglMultiTexImage3DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** JNI method for {@link #glNamedFramebufferTexture3DEXT NamedFramebufferTexture3DEXT}  */
	static public function nglNamedFramebufferTexture3DEXT(framebuffer:Int,attachment:Int,textarget:Int,texture:Int,level:Int,zoffset:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexArrayVertexAttribIOffsetEXT VertexArrayVertexAttribIOffsetEXT}  */
	static public function nglVertexArrayVertexAttribIOffsetEXT(vaobj:Int,buffer:Int,index:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param x              
 * @param y              
 * @param width          
 * @param height         
 * @param border         
 */
	static public function glCopyTextureImage2DEXT(texture:Int,target:Int,level:Int,internalformat:Int,x:Int,y:Int,width:Int,height:Int,border:Int):Void;
/** Unsafe version of {@link #glNamedProgramLocalParameterI4uivEXT NamedProgramLocalParameterI4uivEXT}  */
/** JNI method for {@link #glNamedProgramLocalParameterI4uivEXT NamedProgramLocalParameterI4uivEXT}  */
	static public function nglNamedProgramLocalParameterI4uivEXT(program:Int,target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param framebuffer 
 * @param attachment  
 * @param textarget   
 * @param texture     
 * @param level       
 */
	static public function glNamedFramebufferTexture2DEXT(framebuffer:Int,attachment:Int,textarget:Int,texture:Int,level:Int):Void;
/** Alternative version of: {@link #glProgramUniform3ivEXT ProgramUniform3ivEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform3ivEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetVertexArrayIntegervEXT GetVertexArrayIntegervEXT}  */
	static public function glGetVertexArrayIntegerEXT(vaobj:Int,pname:Int):Int;
/** JNI method for {@link #glCopyTextureImage2DEXT CopyTextureImage2DEXT}  */
	static public function nglCopyTextureImage2DEXT(texture:Int,target:Int,level:Int,internalformat:Int,x:Int,y:Int,width:Int,height:Int,border:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glCompressedMultiTexImage2DEXT CompressedMultiTexImage2DEXT}  */
/** JNI method for {@link #glCompressedMultiTexImage2DEXT CompressedMultiTexImage2DEXT}  */
	static public function nglCompressedMultiTexImage2DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/**
 * 
 *
 * @param matrixMode 
 * @param m          
 */
/** Alternative version of: {@link #glMatrixMultfEXT MatrixMultfEXT}  */
	static public function glMatrixMultfEXT(matrixMode:Int,m:java.nio.FloatBuffer):Void;
	@:overload(function (matrixMode:Int,m:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glNamedFramebufferTexture2DEXT NamedFramebufferTexture2DEXT}  */
	static public function nglNamedFramebufferTexture2DEXT(framebuffer:Int,attachment:Int,textarget:Int,texture:Int,level:Int,__functionAddress:haxe.Int64):Void;
/** Buffer object offset version of: {@link #glTextureImage3DEXT TextureImage3DEXT}  */
/**
 * 
 *
 * @param texture        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param height         
 * @param depth          
 * @param border         
 * @param format         
 * @param type           
 * @param pixels         
 */
/** DoubleBuffer version of: {@link #glTextureImage3DEXT TextureImage3DEXT}  */
/** FloatBuffer version of: {@link #glTextureImage3DEXT TextureImage3DEXT}  */
/** IntBuffer version of: {@link #glTextureImage3DEXT TextureImage3DEXT}  */
/** ShortBuffer version of: {@link #glTextureImage3DEXT TextureImage3DEXT}  */
	static public function glTextureImage3DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform4fvEXT ProgramUniform4fvEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform4fvEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/**
 * 
 *
 * @param framebuffer 
 * @param attachment  
 * @param textarget   
 * @param texture     
 * @param level       
 * @param zoffset     
 */
	static public function glNamedFramebufferTexture3DEXT(framebuffer:Int,attachment:Int,textarget:Int,texture:Int,level:Int,zoffset:Int):Void;
/** Unsafe version of {@link #glGetMultiTexEnvivEXT GetMultiTexEnvivEXT}  */
/** JNI method for {@link #glGetMultiTexEnvivEXT GetMultiTexEnvivEXT}  */
	static public function nglGetMultiTexEnvivEXT(texunit:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniform2ivEXT ProgramUniform2ivEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform2ivEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform4ivEXT ProgramUniform4ivEXT}  */
/** JNI method for {@link #glProgramUniform4ivEXT ProgramUniform4ivEXT}  */
	static public function nglProgramUniform4ivEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param coord   
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glMultiTexGenivEXT MultiTexGenivEXT}  */
	static public function glMultiTexGenivEXT(texunit:Int,coord:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glCopyTextureSubImage1DEXT CopyTextureSubImage1DEXT}  */
	static public function nglCopyTextureSubImage1DEXT(texture:Int,target:Int,level:Int,xoffset:Int,x:Int,y:Int,width:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexArrayFogCoordOffsetEXT VertexArrayFogCoordOffsetEXT}  */
	static public function nglVertexArrayFogCoordOffsetEXT(vaobj:Int,buffer:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texunit 
 * @param target  
 */
	static public function glGenerateMultiTexMipmapEXT(texunit:Int,target:Int):Void;
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glTextureParameterIivEXT TextureParameterIivEXT}  */
	static public function glTextureParameterIivEXT(texture:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 * @param v1       
 * @param v2       
 */
	static public function glProgramUniform3uiEXT(program:Int,location:Int,v0:Int,v1:Int,v2:Int):Void;
/** Single return value version of: {@link #glGetMultiTexParameterIivEXT GetMultiTexParameterIivEXT}  */
	static public function glGetMultiTexParameterIiEXT(texunit:Int,target:Int,pname:Int):Int;
/**
 * 
 *
 * @param vaobj  
 * @param buffer 
 * @param type   
 * @param stride 
 * @param offset 
 */
	static public function glVertexArrayFogCoordOffsetEXT(vaobj:Int,buffer:Int,type:Int,stride:Int,offset:haxe.Int64):Void;
/** Alternative version of: {@link #glCompressedTextureImage3DEXT CompressedTextureImage3DEXT}  */
/** Buffer object offset version of: {@link #glCompressedTextureImage3DEXT CompressedTextureImage3DEXT}  */
/**
 * 
 *
 * @param texture        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param height         
 * @param depth          
 * @param border         
 * @param imageSize      
 * @param data           
 */
	static public function glCompressedTextureImage3DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform2uivEXT ProgramUniform2uivEXT}  */
/** JNI method for {@link #glProgramUniform2uivEXT ProgramUniform2uivEXT}  */
	static public function nglProgramUniform2uivEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoordPointerEXT MultiTexCoordPointerEXT}  */
/** JNI method for {@link #glMultiTexCoordPointerEXT MultiTexCoordPointerEXT}  */
	static public function nglMultiTexCoordPointerEXT(texunit:Int,size:Int,type:Int,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,size:Int,type:Int,stride:Int,pointer:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedMultiTexSubImage2DEXT CompressedMultiTexSubImage2DEXT}  */
/** JNI method for {@link #glCompressedMultiTexSubImage2DEXT CompressedMultiTexSubImage2DEXT}  */
	static public function nglCompressedMultiTexSubImage2DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param yoffset 
 * @param x       
 * @param y       
 * @param width   
 * @param height  
 */
	static public function glCopyMultiTexSubImage2DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,x:Int,y:Int,width:Int,height:Int):Void;
/**
 * 
 *
 * @param mask 
 */
	static public function glClientAttribDefaultEXT(mask:Int):Void;
/**
 * 
 *
 * @param buffer 
 */
	static public function glUnmapNamedBufferEXT(buffer:Int):Bool;
/** JNI method for {@link #glNamedRenderbufferStorageMultisampleCoverageEXT NamedRenderbufferStorageMultisampleCoverageEXT}  */
	static public function nglNamedRenderbufferStorageMultisampleCoverageEXT(renderbuffer:Int,coverageSamples:Int,colorSamples:Int,internalformat:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param matrixMode 
 * @param m          
 */
/** Alternative version of: {@link #glMatrixLoadfEXT MatrixLoadfEXT}  */
	static public function glMatrixLoadfEXT(matrixMode:Int,m:java.nio.FloatBuffer):Void;
	@:overload(function (matrixMode:Int,m:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMatrixRotatefEXT MatrixRotatefEXT}  */
	static public function nglMatrixRotatefEXT(matrixMode:Int,angle:Float,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param params  
 */
/** Alternative version of: {@link #glGetNamedProgramLocalParameterdvEXT GetNamedProgramLocalParameterdvEXT}  */
	static public function glGetNamedProgramLocalParameterdvEXT(program:Int,target:Int,index:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix3x2fvEXT ProgramUniformMatrix3x2fvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix3x2fvEXT ProgramUniformMatrix3x2fvEXT}  */
	static public function nglProgramUniformMatrix3x2fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetTextureParameterfvEXT GetTextureParameterfvEXT}  */
	static public function glGetTextureParameterfEXT(texture:Int,target:Int,pname:Int):Float;
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 * @param v1       
 */
	static public function glProgramUniform2fEXT(program:Int,location:Int,v0:Float,v1:Float):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3x2fvEXT ProgramUniformMatrix3x2fvEXT}  */
/**
 * 
 *
 * @param program   
 * @param location  
 * @param count     
 * @param transpose 
 * @param value     
 */
	static public function glProgramUniformMatrix3x2fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param param   
 */
	static public function glMultiTexParameterfEXT(texunit:Int,target:Int,pname:Int,param:Float):Void;
/** JNI method for {@link #glNamedFramebufferTextureFaceEXT NamedFramebufferTextureFaceEXT}  */
	static public function nglNamedFramebufferTextureFaceEXT(framebuffer:Int,attachment:Int,texture:Int,level:Int,face:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetTextureParameterivEXT GetTextureParameterivEXT}  */
	static public function glGetTextureParameterivEXT(texture:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetMultiTexGendvEXT GetMultiTexGendvEXT}  */
/** JNI method for {@link #glGetMultiTexGendvEXT GetMultiTexGendvEXT}  */
	static public function nglGetMultiTexGendvEXT(texunit:Int,coord:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glGetCompressedMultiTexImageEXT GetCompressedMultiTexImageEXT}  */
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param level   
 * @param img     
 */
	static public function glGetCompressedMultiTexImageEXT(texunit:Int,target:Int,level:Int,img:java.nio.ByteBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,imgOffset:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform1uiEXT ProgramUniform1uiEXT}  */
	static public function nglProgramUniform1uiEXT(program:Int,location:Int,v0:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param yoffset 
 * @param zoffset 
 * @param x       
 * @param y       
 * @param width   
 * @param height  
 */
	static public function glCopyTextureSubImage3DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,x:Int,y:Int,width:Int,height:Int):Void;
/** ByteBuffer version of: {@link #glGetNamedBufferSubDataEXT GetNamedBufferSubDataEXT}  */
/** DoubleBuffer version of: {@link #glGetNamedBufferSubDataEXT GetNamedBufferSubDataEXT}  */
/** FloatBuffer version of: {@link #glGetNamedBufferSubDataEXT GetNamedBufferSubDataEXT}  */
/** IntBuffer version of: {@link #glGetNamedBufferSubDataEXT GetNamedBufferSubDataEXT}  */
/** ShortBuffer version of: {@link #glGetNamedBufferSubDataEXT GetNamedBufferSubDataEXT}  */
/**
 * 
 *
 * @param buffer 
 * @param offset 
 * @param size   
 * @param data   
 */
	static public function glGetNamedBufferSubDataEXT(buffer:Int,offset:haxe.Int64,size:haxe.Int64,data:java.nio.ByteBuffer):Void;
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.ByteBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.DoubleBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.FloatBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.IntBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.ShortBuffer):Void {})
/**
 * 
 *
 * @param array 
 * @param index 
 */
	static public function glEnableClientStateIndexedEXT(array:Int,index:Int):Void;
/** Unsafe version of {@link #glProgramUniformMatrix3fvEXT ProgramUniformMatrix3fvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix3fvEXT ProgramUniformMatrix3fvEXT}  */
	static public function nglProgramUniformMatrix3fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit      
 * @param target       
 * @param renderbuffer 
 */
	static public function glMultiTexRenderbufferEXT(texunit:Int,target:Int,renderbuffer:Int):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3x4fvEXT ProgramUniformMatrix3x4fvEXT}  */
/**
 * 
 *
 * @param program   
 * @param location  
 * @param count     
 * @param transpose 
 * @param value     
 */
	static public function glProgramUniformMatrix3x4fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** JNI method for {@link #glDisableVertexArrayAttribEXT DisableVertexArrayAttribEXT}  */
	static public function nglDisableVertexArrayAttribEXT(vaobj:Int,index:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param vaobj 
 * @param index 
 */
	static public function glDisableVertexArrayAttribEXT(vaobj:Int,index:Int):Void;
/** Unsafe version of {@link #glProgramUniformMatrix3x4fvEXT ProgramUniformMatrix3x4fvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix3x4fvEXT ProgramUniformMatrix3x4fvEXT}  */
	static public function nglProgramUniformMatrix3x4fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glMatrixLoadIdentityEXT MatrixLoadIdentityEXT}  */
	static public function nglMatrixLoadIdentityEXT(matrixMode:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glCompressedTextureSubImage2DEXT CompressedTextureSubImage2DEXT}  */
/** Buffer object offset version of: {@link #glCompressedTextureSubImage2DEXT CompressedTextureSubImage2DEXT}  */
/**
 * 
 *
 * @param texture   
 * @param target    
 * @param level     
 * @param xoffset   
 * @param yoffset   
 * @param width     
 * @param height    
 * @param format    
 * @param imageSize 
 * @param data      
 */
	static public function glCompressedTextureSubImage2DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** JNI method for {@link #glTextureParameterfEXT TextureParameterfEXT}  */
	static public function nglTextureParameterfEXT(texture:Int,target:Int,pname:Int,param:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param target 
 * @param index  
 * @param params 
 */
/** Alternative version of: {@link #glGetFloatIndexedvEXT GetFloatIndexedvEXT}  */
	static public function glGetFloatIndexedvEXT(target:Int,index:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetCompressedTextureImageEXT GetCompressedTextureImageEXT}  */
/** JNI method for {@link #glGetCompressedTextureImageEXT GetCompressedTextureImageEXT}  */
	static public function nglGetCompressedTextureImageEXT(texture:Int,target:Int,level:Int,img:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,img:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform1fEXT ProgramUniform1fEXT}  */
	static public function nglProgramUniform1fEXT(program:Int,location:Int,v0:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param pname  
 * @param index  
 * @param params 
 */
/** Alternative version of: {@link #glGetFloati_vEXT GetFloati_vEXT}  */
	static public function glGetFloati_vEXT(pname:Int,index:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (pname:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glNamedProgramLocalParameters4fvEXT NamedProgramLocalParameters4fvEXT}  */
/** JNI method for {@link #glNamedProgramLocalParameters4fvEXT NamedProgramLocalParameters4fvEXT}  */
	static public function nglNamedProgramLocalParameters4fvEXT(program:Int,target:Int,index:Int,count:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,count:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param framebuffer 
 * @param attachment  
 * @param textarget   
 * @param texture     
 * @param level       
 */
	static public function glNamedFramebufferTexture1DEXT(framebuffer:Int,attachment:Int,textarget:Int,texture:Int,level:Int):Void;
/** Buffer object offset version of: {@link #glGetMultiTexImageEXT GetMultiTexImageEXT}  */
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param level   
 * @param format  
 * @param type    
 * @param pixels  
 */
/** DoubleBuffer version of: {@link #glGetMultiTexImageEXT GetMultiTexImageEXT}  */
/** FloatBuffer version of: {@link #glGetMultiTexImageEXT GetMultiTexImageEXT}  */
/** IntBuffer version of: {@link #glGetMultiTexImageEXT GetMultiTexImageEXT}  */
/** ShortBuffer version of: {@link #glGetMultiTexImageEXT GetMultiTexImageEXT}  */
	static public function glGetMultiTexImageEXT(texunit:Int,target:Int,level:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetNamedBufferSubDataEXT GetNamedBufferSubDataEXT}  */
/** JNI method for {@link #glGetNamedBufferSubDataEXT GetNamedBufferSubDataEXT}  */
	static public function nglGetNamedBufferSubDataEXT(buffer:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64):Void {})
/**
 * 
 *
 * @param buffer 
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glGetNamedBufferParameterivEXT GetNamedBufferParameterivEXT}  */
	static public function glGetNamedBufferParameterivEXT(buffer:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (buffer:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetTextureParameterivEXT GetTextureParameterivEXT}  */
/** JNI method for {@link #glGetTextureParameterivEXT GetTextureParameterivEXT}  */
	static public function nglGetTextureParameterivEXT(texture:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetFramebufferParameterivEXT GetFramebufferParameterivEXT}  */
	static public function glGetFramebufferParameteriEXT(framebuffer:Int,pname:Int):Int;
/**
 * 
 *
 * @param texunit 
 * @param coord   
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glMultiTexGendvEXT MultiTexGendvEXT}  */
	static public function glMultiTexGendvEXT(texunit:Int,coord:Int,pname:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param renderbuffer   
 * @param samples        
 * @param internalformat 
 * @param width          
 * @param height         
 */
	static public function glNamedRenderbufferStorageMultisampleEXT(renderbuffer:Int,samples:Int,internalformat:Int,width:Int,height:Int):Void;
/** Single return value version of: {@link #glGetMultiTexLevelParameterivEXT GetMultiTexLevelParameterivEXT}  */
	static public function glGetMultiTexLevelParameteriEXT(texunit:Int,target:Int,level:Int,pname:Int):Int;
/**
 * 
 *
 * @param texture        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param x              
 * @param y              
 * @param width          
 * @param border         
 */
	static public function glCopyTextureImage1DEXT(texture:Int,target:Int,level:Int,internalformat:Int,x:Int,y:Int,width:Int,border:Int):Void;
/**
 * 
 *
 * @param matrixMode 
 * @param x          
 * @param y          
 * @param z          
 */
	static public function glMatrixTranslatedEXT(matrixMode:Int,x:Float,y:Float,z:Float):Void;
/** Unsafe version of {@link #glMultiTexSubImage2DEXT MultiTexSubImage2DEXT}  */
/** JNI method for {@link #glMultiTexSubImage2DEXT MultiTexSubImage2DEXT}  */
	static public function nglMultiTexSubImage2DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetNamedBufferParameterivEXT GetNamedBufferParameterivEXT}  */
/** JNI method for {@link #glGetNamedBufferParameterivEXT GetNamedBufferParameterivEXT}  */
	static public function nglGetNamedBufferParameterivEXT(buffer:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetMultiTexParameterIuivEXT GetMultiTexParameterIuivEXT}  */
	static public function glGetMultiTexParameterIuiEXT(texunit:Int,target:Int,pname:Int):Int;
/** Buffer object offset version of: {@link #glTextureImage2DEXT TextureImage2DEXT}  */
/**
 * 
 *
 * @param texture        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param height         
 * @param border         
 * @param format         
 * @param type           
 * @param pixels         
 */
/** DoubleBuffer version of: {@link #glTextureImage2DEXT TextureImage2DEXT}  */
/** FloatBuffer version of: {@link #glTextureImage2DEXT TextureImage2DEXT}  */
/** IntBuffer version of: {@link #glTextureImage2DEXT TextureImage2DEXT}  */
/** ShortBuffer version of: {@link #glTextureImage2DEXT TextureImage2DEXT}  */
	static public function glTextureImage2DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetMultiTexParameterfvEXT GetMultiTexParameterfvEXT}  */
/** JNI method for {@link #glGetMultiTexParameterfvEXT GetMultiTexParameterfvEXT}  */
	static public function nglGetMultiTexParameterfvEXT(texunit:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** Alternative version of: {@link #glNamedProgramLocalParameters4fvEXT NamedProgramLocalParameters4fvEXT}  */
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param count   
 * @param params  
 */
	static public function glNamedProgramLocalParameters4fvEXT(program:Int,target:Int,index:Int,count:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.FloatBuffer):Void {})
/**
 * 
 *
 * @param renderbuffer 
 * @param pname        
 * @param params       
 */
/** Alternative version of: {@link #glGetNamedRenderbufferParameterivEXT GetNamedRenderbufferParameterivEXT}  */
	static public function glGetNamedRenderbufferParameterivEXT(renderbuffer:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (renderbuffer:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param x       
 * @param y       
 * @param z       
 * @param w       
 */
	static public function glNamedProgramLocalParameter4fEXT(program:Int,target:Int,index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/** Alternative version of: {@link #glProgramUniform3fvEXT ProgramUniform3fvEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform3fvEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** JNI method for {@link #glNamedFramebufferTexture1DEXT NamedFramebufferTexture1DEXT}  */
	static public function nglNamedFramebufferTexture1DEXT(framebuffer:Int,attachment:Int,textarget:Int,texture:Int,level:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param target 
 * @param index  
 * @param params 
 */
/** Alternative version of: {@link #glGetIntegerIndexedvEXT GetIntegerIndexedvEXT}  */
	static public function glGetIntegerIndexedvEXT(target:Int,index:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glMultiTexEnvivEXT MultiTexEnvivEXT}  */
	static public function glMultiTexEnvivEXT(texunit:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glCompressedMultiTexSubImage3DEXT CompressedMultiTexSubImage3DEXT}  */
/** JNI method for {@link #glCompressedMultiTexSubImage3DEXT CompressedMultiTexSubImage3DEXT}  */
	static public function nglCompressedMultiTexSubImage3DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param coord   
 * @param pname   
 * @param param   
 */
	static public function glMultiTexGendEXT(texunit:Int,coord:Int,pname:Int,param:Float):Void;
/** JNI method for {@link #glProgramUniform3uiEXT ProgramUniform3uiEXT}  */
	static public function nglProgramUniform3uiEXT(program:Int,location:Int,v0:Int,v1:Int,v2:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetNamedProgramLocalParameterIivEXT GetNamedProgramLocalParameterIivEXT}  */
/** JNI method for {@link #glGetNamedProgramLocalParameterIivEXT GetNamedProgramLocalParameterIivEXT}  */
	static public function nglGetNamedProgramLocalParameterIivEXT(program:Int,target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param texture      
 * @param target       
 * @param renderbuffer 
 */
	static public function glTextureRenderbufferEXT(texture:Int,target:Int,renderbuffer:Int):Void;
/** GL_FLOAT version of: {@link #glMultiTexCoordPointerEXT MultiTexCoordPointerEXT}  */
/** GL_HALF_FLOAT version of: {@link #glMultiTexCoordPointerEXT MultiTexCoordPointerEXT}  */
/** Buffer object offset version of: {@link #glMultiTexCoordPointerEXT MultiTexCoordPointerEXT}  */
/**
 * 
 *
 * @param texunit 
 * @param size    
 * @param type    
 * @param stride  
 * @param pointer 
 */
	static public function glMultiTexCoordPointerEXT(texunit:Int,size:Int,type:Int,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (texunit:Int,size:Int,stride:Int,pointer:java.nio.FloatBuffer):Void {})
	@:overload(function (texunit:Int,size:Int,stride:Int,pointer:java.nio.ShortBuffer):Void {})
	@:overload(function (texunit:Int,size:Int,type:Int,stride:Int,pointerOffset:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform3iEXT ProgramUniform3iEXT}  */
	static public function nglProgramUniform3iEXT(program:Int,location:Int,v0:Int,v1:Int,v2:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param matrixMode 
 * @param l          
 * @param r          
 * @param b          
 * @param t          
 * @param n          
 * @param f          
 */
	static public function glMatrixOrthoEXT(matrixMode:Int,l:Float,r:Float,b:Float,t:Float,n:Float,f:Float):Void;
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 * @param v1       
 * @param v2       
 */
	static public function glProgramUniform3fEXT(program:Int,location:Int,v0:Float,v1:Float,v2:Float):Void;
/** Unsafe version of {@link #glMatrixMultfEXT MatrixMultfEXT}  */
/** JNI method for {@link #glMatrixMultfEXT MatrixMultfEXT}  */
	static public function nglMatrixMultfEXT(matrixMode:Int,m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (matrixMode:Int,m:haxe.Int64):Void {})
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 * @param v1       
 * @param v2       
 * @param v3       
 */
	static public function glProgramUniform4uiEXT(program:Int,location:Int,v0:Int,v1:Int,v2:Int,v3:Int):Void;
/**
 * 
 *
 * @param texunit        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param x              
 * @param y              
 * @param width          
 * @param height         
 * @param border         
 */
	static public function glCopyMultiTexImage2DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,x:Int,y:Int,width:Int,height:Int,border:Int):Void;
/** JNI method for {@link #glNamedRenderbufferStorageMultisampleEXT NamedRenderbufferStorageMultisampleEXT}  */
	static public function nglNamedRenderbufferStorageMultisampleEXT(renderbuffer:Int,samples:Int,internalformat:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2x3fvEXT ProgramUniformMatrix2x3fvEXT}  */
/**
 * 
 *
 * @param program   
 * @param location  
 * @param count     
 * @param transpose 
 * @param value     
 */
	static public function glProgramUniformMatrix2x3fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param params  
 */
/** Alternative version of: {@link #glNamedProgramLocalParameterI4ivEXT NamedProgramLocalParameterI4ivEXT}  */
	static public function glNamedProgramLocalParameterI4ivEXT(program:Int,target:Int,index:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexGendvEXT MultiTexGendvEXT}  */
/** JNI method for {@link #glMultiTexGendvEXT MultiTexGendvEXT}  */
	static public function nglMultiTexGendvEXT(texunit:Int,coord:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2x3fvEXT ProgramUniformMatrix2x3fvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix2x3fvEXT ProgramUniformMatrix2x3fvEXT}  */
	static public function nglProgramUniformMatrix2x3fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetTextureImageEXT GetTextureImageEXT}  */
/** JNI method for {@link #glGetTextureImageEXT GetTextureImageEXT}  */
	static public function nglGetTextureImageEXT(texture:Int,target:Int,level:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedMultiTexSubImage1DEXT CompressedMultiTexSubImage1DEXT}  */
/** Buffer object offset version of: {@link #glCompressedMultiTexSubImage1DEXT CompressedMultiTexSubImage1DEXT}  */
/**
 * 
 *
 * @param texunit   
 * @param target    
 * @param level     
 * @param xoffset   
 * @param width     
 * @param format    
 * @param imageSize 
 * @param data      
 */
	static public function glCompressedMultiTexSubImage1DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glTextureParameterfvEXT TextureParameterfvEXT}  */
/** JNI method for {@link #glTextureParameterfvEXT TextureParameterfvEXT}  */
	static public function nglTextureParameterfvEXT(texture:Int,target:Int,pname:Int,param:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,param:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetMultiTexEnvivEXT GetMultiTexEnvivEXT}  */
	static public function glGetMultiTexEnviEXT(texunit:Int,target:Int,pname:Int):Int;
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param level   
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetTextureLevelParameterfvEXT GetTextureLevelParameterfvEXT}  */
	static public function glGetTextureLevelParameterfvEXT(texture:Int,target:Int,level:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glTextureRenderbufferEXT TextureRenderbufferEXT}  */
	static public function nglTextureRenderbufferEXT(texture:Int,target:Int,renderbuffer:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniform1fvEXT ProgramUniform1fvEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform1fvEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glMatrixLoaddEXT MatrixLoaddEXT}  */
/** JNI method for {@link #glMatrixLoaddEXT MatrixLoaddEXT}  */
	static public function nglMatrixLoaddEXT(matrixMode:Int,m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (matrixMode:Int,m:haxe.Int64):Void {})
/** Unsafe version of {@link #glMatrixMultTransposedEXT MatrixMultTransposedEXT}  */
/** JNI method for {@link #glMatrixMultTransposedEXT MatrixMultTransposedEXT}  */
	static public function nglMatrixMultTransposedEXT(matrixMode:Int,m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (matrixMode:Int,m:haxe.Int64):Void {})
/** JNI method for {@link #glEnableClientStateiEXT EnableClientStateiEXT}  */
	static public function nglEnableClientStateiEXT(array:Int,index:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 * @param v1       
 * @param v2       
 * @param v3       
 */
	static public function glProgramUniform4fEXT(program:Int,location:Int,v0:Float,v1:Float,v2:Float,v3:Float):Void;
/**
 * 
 *
 * @param framebuffer 
 * @param attachment  
 * @param texture     
 * @param level       
 * @param layer       
 */
	static public function glNamedFramebufferTextureLayerEXT(framebuffer:Int,attachment:Int,texture:Int,level:Int,layer:Int):Void;
/** JNI method for {@link #glMultiTexEnviEXT MultiTexEnviEXT}  */
	static public function nglMultiTexEnviEXT(texunit:Int,target:Int,pname:Int,param:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetVertexArrayIntegervEXT GetVertexArrayIntegervEXT}  */
/** JNI method for {@link #glGetVertexArrayIntegervEXT GetVertexArrayIntegervEXT}  */
	static public function nglGetVertexArrayIntegervEXT(vaobj:Int,pname:Int,param:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (vaobj:Int,pname:Int,param:haxe.Int64):Void {})
/**
 * 
 *
 * @param vaobj  
 * @param buffer 
 * @param size   
 * @param type   
 * @param stride 
 * @param offset 
 */
	static public function glVertexArrayTexCoordOffsetEXT(vaobj:Int,buffer:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64):Void;
/** Alternative version of: {@link #glCompressedMultiTexSubImage3DEXT CompressedMultiTexSubImage3DEXT}  */
/** Buffer object offset version of: {@link #glCompressedMultiTexSubImage3DEXT CompressedMultiTexSubImage3DEXT}  */
/**
 * 
 *
 * @param texunit   
 * @param target    
 * @param level     
 * @param xoffset   
 * @param yoffset   
 * @param zoffset   
 * @param width     
 * @param height    
 * @param depth     
 * @param format    
 * @param imageSize 
 * @param data      
 */
	static public function glCompressedMultiTexSubImage3DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glNamedProgramLocalParametersI4uivEXT NamedProgramLocalParametersI4uivEXT}  */
/** JNI method for {@link #glNamedProgramLocalParametersI4uivEXT NamedProgramLocalParametersI4uivEXT}  */
	static public function nglNamedProgramLocalParametersI4uivEXT(program:Int,target:Int,index:Int,count:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,count:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexSubImage3DEXT MultiTexSubImage3DEXT}  */
/** JNI method for {@link #glMultiTexSubImage3DEXT MultiTexSubImage3DEXT}  */
	static public function nglMultiTexSubImage3DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** JNI method for {@link #glDisableClientStateIndexedEXT DisableClientStateIndexedEXT}  */
	static public function nglDisableClientStateIndexedEXT(array:Int,index:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform2ivEXT ProgramUniform2ivEXT}  */
/** JNI method for {@link #glProgramUniform2ivEXT ProgramUniform2ivEXT}  */
	static public function nglProgramUniform2ivEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glTextureImage1DEXT TextureImage1DEXT}  */
/**
 * 
 *
 * @param texture        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param border         
 * @param format         
 * @param type           
 * @param pixels         
 */
/** DoubleBuffer version of: {@link #glTextureImage1DEXT TextureImage1DEXT}  */
/** FloatBuffer version of: {@link #glTextureImage1DEXT TextureImage1DEXT}  */
/** IntBuffer version of: {@link #glTextureImage1DEXT TextureImage1DEXT}  */
/** ShortBuffer version of: {@link #glTextureImage1DEXT TextureImage1DEXT}  */
	static public function glTextureImage1DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** Buffer object offset version of: {@link #glMultiTexSubImage1DEXT MultiTexSubImage1DEXT}  */
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param width   
 * @param format  
 * @param type    
 * @param pixels  
 */
/** DoubleBuffer version of: {@link #glMultiTexSubImage1DEXT MultiTexSubImage1DEXT}  */
/** FloatBuffer version of: {@link #glMultiTexSubImage1DEXT MultiTexSubImage1DEXT}  */
/** IntBuffer version of: {@link #glMultiTexSubImage1DEXT MultiTexSubImage1DEXT}  */
/** ShortBuffer version of: {@link #glMultiTexSubImage1DEXT MultiTexSubImage1DEXT}  */
	static public function glMultiTexSubImage1DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetBooleanIndexedvEXT GetBooleanIndexedvEXT}  */
	static public function glGetBooleanIndexedEXT(target:Int,index:Int):Bool;
/** Single return value version of: {@link #glGetMultiTexParameterfvEXT GetMultiTexParameterfvEXT}  */
	static public function glGetMultiTexParameterfEXT(texunit:Int,target:Int,pname:Int):Float;
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param level   
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexLevelParameterivEXT GetMultiTexLevelParameterivEXT}  */
	static public function glGetMultiTexLevelParameterivEXT(texunit:Int,target:Int,level:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param array 
 * @param index 
 */
	static public function glDisableClientStateIndexedEXT(array:Int,index:Int):Void;
/** Single return value version of: {@link #glGetNamedProgramivEXT GetNamedProgramivEXT}  */
	static public function glGetNamedProgramiEXT(program:Int,target:Int,pname:Int):Int;
/**
 * 
 *
 * @param target 
 * @param index  
 * @param params 
 */
	static public function glGetBooleanIndexedvEXT(target:Int,index:Int,params:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glMultiTexEnvivEXT MultiTexEnvivEXT}  */
/** JNI method for {@link #glMultiTexEnvivEXT MultiTexEnvivEXT}  */
	static public function nglMultiTexEnvivEXT(texunit:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param vaobj  
 * @param buffer 
 * @param size   
 * @param type   
 * @param stride 
 * @param offset 
 */
	static public function glVertexArrayVertexOffsetEXT(vaobj:Int,buffer:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64):Void;
/** Unsafe version of {@link #glGetBooleanIndexedvEXT GetBooleanIndexedvEXT}  */
/** JNI method for {@link #glGetBooleanIndexedvEXT GetBooleanIndexedvEXT}  */
	static public function nglGetBooleanIndexedvEXT(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param pname   
 * @param param   
 */
	static public function glTextureParameterfEXT(texture:Int,target:Int,pname:Int,param:Float):Void;
/** JNI method for {@link #glVertexArrayVertexAttribOffsetEXT VertexArrayVertexAttribOffsetEXT}  */
	static public function nglVertexArrayVertexAttribOffsetEXT(vaobj:Int,buffer:Int,index:Int,size:Int,type:Int,normalized:Bool,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param array 
 * @param index 
 */
	static public function glEnableClientStateiEXT(array:Int,index:Int):Void;
/**
 * 
 *
 * @param matrixMode 
 */
	static public function glMatrixLoadIdentityEXT(matrixMode:Int):Void;
/** Unsafe version of {@link #glNamedProgramLocalParameter4dvEXT NamedProgramLocalParameter4dvEXT}  */
/** JNI method for {@link #glNamedProgramLocalParameter4dvEXT NamedProgramLocalParameter4dvEXT}  */
	static public function nglNamedProgramLocalParameter4dvEXT(program:Int,target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedMultiTexSubImage2DEXT CompressedMultiTexSubImage2DEXT}  */
/** Buffer object offset version of: {@link #glCompressedMultiTexSubImage2DEXT CompressedMultiTexSubImage2DEXT}  */
/**
 * 
 *
 * @param texunit   
 * @param target    
 * @param level     
 * @param xoffset   
 * @param yoffset   
 * @param width     
 * @param height    
 * @param format    
 * @param imageSize 
 * @param data      
 */
	static public function glCompressedMultiTexSubImage2DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform2iEXT ProgramUniform2iEXT}  */
	static public function nglProgramUniform2iEXT(program:Int,location:Int,v0:Int,v1:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetMultiTexParameterIuivEXT GetMultiTexParameterIuivEXT}  */
/** JNI method for {@link #glGetMultiTexParameterIuivEXT GetMultiTexParameterIuivEXT}  */
	static public function nglGetMultiTexParameterIuivEXT(texunit:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexBufferEXT MultiTexBufferEXT}  */
	static public function nglMultiTexBufferEXT(texunit:Int,target:Int,internalformat:Int,buffer:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glCompressedTextureSubImage1DEXT CompressedTextureSubImage1DEXT}  */
/** Buffer object offset version of: {@link #glCompressedTextureSubImage1DEXT CompressedTextureSubImage1DEXT}  */
/**
 * 
 *
 * @param texture   
 * @param target    
 * @param level     
 * @param xoffset   
 * @param width     
 * @param format    
 * @param imageSize 
 * @param data      
 */
	static public function glCompressedTextureSubImage1DEXT(texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glTextureImage1DEXT TextureImage1DEXT}  */
/** JNI method for {@link #glTextureImage1DEXT TextureImage1DEXT}  */
	static public function nglTextureImage1DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/**
 * 
 *
 * @param vaobj 
 * @param array 
 */
	static public function glEnableVertexArrayEXT(vaobj:Int,array:Int):Void;
/**
 * 
 *
 * @param matrixMode 
 * @param x          
 * @param y          
 * @param z          
 */
	static public function glMatrixTranslatefEXT(matrixMode:Int,x:Float,y:Float,z:Float):Void;
/** Single return value version of: {@link #glGetTextureLevelParameterfvEXT GetTextureLevelParameterfvEXT}  */
	static public function glGetTextureLevelParameterfEXT(texture:Int,target:Int,level:Int,pname:Int):Float;
/** Single return value version of: {@link #glGetFloatIndexedvEXT GetFloatIndexedvEXT}  */
	static public function glGetFloatIndexedEXT(target:Int,index:Int):Float;
/** Unsafe version of {@link #glGetTextureParameterIivEXT GetTextureParameterIivEXT}  */
/** JNI method for {@link #glGetTextureParameterIivEXT GetTextureParameterIivEXT}  */
	static public function nglGetTextureParameterIivEXT(texture:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glIsEnabledIndexedEXT IsEnabledIndexedEXT}  */
	static public function nglIsEnabledIndexedEXT(target:Int,index:Int,__functionAddress:haxe.Int64):Bool;
/** Unsafe version of {@link #glMatrixLoadTransposedEXT MatrixLoadTransposedEXT}  */
/** JNI method for {@link #glMatrixLoadTransposedEXT MatrixLoadTransposedEXT}  */
	static public function nglMatrixLoadTransposedEXT(matrixMode:Int,m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (matrixMode:Int,m:haxe.Int64):Void {})
/** JNI method for {@link #glCopyMultiTexSubImage1DEXT CopyMultiTexSubImage1DEXT}  */
	static public function nglCopyMultiTexSubImage1DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,x:Int,y:Int,width:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glCopyTextureSubImage3DEXT CopyTextureSubImage3DEXT}  */
	static public function nglCopyTextureSubImage3DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,x:Int,y:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texunit        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param x              
 * @param y              
 * @param width          
 * @param border         
 */
	static public function glCopyMultiTexImage1DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,x:Int,y:Int,width:Int,border:Int):Void;
/** Single return value version of: {@link #glGetPointeri_vEXT GetPointeri_vEXT}  */
	static public function glGetPointeriEXT(pname:Int,index:Int):haxe.Int64;
/** Single return value version of: {@link #glGetIntegerIndexedvEXT GetIntegerIndexedvEXT}  */
	static public function glGetIntegerIndexedEXT(target:Int,index:Int):Int;
/** JNI method for {@link #glFlushMappedNamedBufferRangeEXT FlushMappedNamedBufferRangeEXT}  */
	static public function nglFlushMappedNamedBufferRangeEXT(buffer:Int,offset:haxe.Int64,length:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param vaobj  
 * @param buffer 
 * @param index  
 * @param size   
 * @param type   
 * @param stride 
 * @param offset 
 */
	static public function glVertexArrayVertexAttribIOffsetEXT(vaobj:Int,buffer:Int,index:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64):Void;
/** JNI method for {@link #glProgramUniform3fEXT ProgramUniform3fEXT}  */
	static public function nglProgramUniform3fEXT(program:Int,location:Int,v0:Float,v1:Float,v2:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glEnableVertexArrayEXT EnableVertexArrayEXT}  */
	static public function nglEnableVertexArrayEXT(vaobj:Int,array:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glGenerateTextureMipmapEXT GenerateTextureMipmapEXT}  */
	static public function nglGenerateTextureMipmapEXT(texture:Int,target:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texunit 
 * @param coord   
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glMultiTexGenfvEXT MultiTexGenfvEXT}  */
	static public function glMultiTexGenfvEXT(texunit:Int,coord:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glTextureParameterIivEXT TextureParameterIivEXT}  */
/** JNI method for {@link #glTextureParameterIivEXT TextureParameterIivEXT}  */
	static public function nglTextureParameterIivEXT(texture:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param x       
 * @param y       
 * @param width   
 */
	static public function glCopyTextureSubImage1DEXT(texture:Int,target:Int,level:Int,xoffset:Int,x:Int,y:Int,width:Int):Void;
/**
 * 
 *
 * @param framebuffer        
 * @param attachment         
 * @param renderbuffertarget 
 * @param renderbuffer       
 */
	static public function glNamedFramebufferRenderbufferEXT(framebuffer:Int,attachment:Int,renderbuffertarget:Int,renderbuffer:Int):Void;
/** Unsafe version of {@link #glMatrixMultdEXT MatrixMultdEXT}  */
/** JNI method for {@link #glMatrixMultdEXT MatrixMultdEXT}  */
	static public function nglMatrixMultdEXT(matrixMode:Int,m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (matrixMode:Int,m:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform3fvEXT ProgramUniform3fvEXT}  */
/** JNI method for {@link #glProgramUniform3fvEXT ProgramUniform3fvEXT}  */
	static public function nglProgramUniform3fvEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetNamedRenderbufferParameterivEXT GetNamedRenderbufferParameterivEXT}  */
	static public function glGetNamedRenderbufferParameteriEXT(renderbuffer:Int,pname:Int):Int;
/** JNI method for {@link #glMatrixPopEXT MatrixPopEXT}  */
	static public function nglMatrixPopEXT(matrixMode:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexEnvivEXT GetMultiTexEnvivEXT}  */
	static public function glGetMultiTexEnvivEXT(texunit:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param mask 
 */
	static public function glPushClientAttribDefaultEXT(mask:Int):Void;
/**
 * 
 *
 * @param array 
 * @param index 
 */
	static public function glDisableClientStateiEXT(array:Int,index:Int):Void;
/** Unsafe version of {@link #glGetIntegerIndexedvEXT GetIntegerIndexedvEXT}  */
/** JNI method for {@link #glGetIntegerIndexedvEXT GetIntegerIndexedvEXT}  */
	static public function nglGetIntegerIndexedvEXT(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glTextureSubImage2DEXT TextureSubImage2DEXT}  */
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param yoffset 
 * @param width   
 * @param height  
 * @param format  
 * @param type    
 * @param pixels  
 */
/** DoubleBuffer version of: {@link #glTextureSubImage2DEXT TextureSubImage2DEXT}  */
/** FloatBuffer version of: {@link #glTextureSubImage2DEXT TextureSubImage2DEXT}  */
/** IntBuffer version of: {@link #glTextureSubImage2DEXT TextureSubImage2DEXT}  */
/** ShortBuffer version of: {@link #glTextureSubImage2DEXT TextureSubImage2DEXT}  */
	static public function glTextureSubImage2DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexParameterIuivEXT GetMultiTexParameterIuivEXT}  */
	static public function glGetMultiTexParameterIuivEXT(texunit:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param texunit 
 * @param coord   
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexGendvEXT GetMultiTexGendvEXT}  */
	static public function glGetMultiTexGendvEXT(texunit:Int,coord:Int,pname:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetVertexArrayPointervEXT GetVertexArrayPointervEXT}  */
/** JNI method for {@link #glGetVertexArrayPointervEXT GetVertexArrayPointervEXT}  */
	static public function nglGetVertexArrayPointervEXT(vaobj:Int,pname:Int,param:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (vaobj:Int,pname:Int,param:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetTextureParameterIivEXT GetTextureParameterIivEXT}  */
	static public function glGetTextureParameterIiEXT(texture:Int,target:Int,pname:Int):Int;
/**
 * 
 *
 * @param matrixMode 
 * @param angle      
 * @param x          
 * @param y          
 * @param z          
 */
	static public function glMatrixRotatefEXT(matrixMode:Int,angle:Float,x:Float,y:Float,z:Float):Void;
/** Unsafe version of {@link #glNamedProgramLocalParametersI4ivEXT NamedProgramLocalParametersI4ivEXT}  */
/** JNI method for {@link #glNamedProgramLocalParametersI4ivEXT NamedProgramLocalParametersI4ivEXT}  */
	static public function nglNamedProgramLocalParametersI4ivEXT(program:Int,target:Int,index:Int,count:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,count:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetTextureParameterIuivEXT GetTextureParameterIuivEXT}  */
/** JNI method for {@link #glGetTextureParameterIuivEXT GetTextureParameterIuivEXT}  */
	static public function nglGetTextureParameterIuivEXT(texture:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glClientAttribDefaultEXT ClientAttribDefaultEXT}  */
	static public function nglClientAttribDefaultEXT(mask:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetNamedProgramLocalParameterIuivEXT GetNamedProgramLocalParameterIuivEXT}  */
/** JNI method for {@link #glGetNamedProgramLocalParameterIuivEXT GetNamedProgramLocalParameterIuivEXT}  */
	static public function nglGetNamedProgramLocalParameterIuivEXT(program:Int,target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param vaobj  
 * @param buffer 
 * @param size   
 * @param type   
 * @param stride 
 * @param offset 
 */
	static public function glVertexArraySecondaryColorOffsetEXT(vaobj:Int,buffer:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64):Void;
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param param   
 */
/** Alternative version of: {@link #glMultiTexParameterivEXT MultiTexParameterivEXT}  */
	static public function glMultiTexParameterivEXT(texunit:Int,target:Int,pname:Int,param:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetNamedProgramStringEXT GetNamedProgramStringEXT}  */
/** JNI method for {@link #glGetNamedProgramStringEXT GetNamedProgramStringEXT}  */
	static public function nglGetNamedProgramStringEXT(program:Int,target:Int,pname:Int,string:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,pname:Int,string:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexGenivEXT MultiTexGenivEXT}  */
/** JNI method for {@link #glMultiTexGenivEXT MultiTexGenivEXT}  */
	static public function nglMultiTexGenivEXT(texunit:Int,coord:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glGetTextureImageEXT GetTextureImageEXT}  */
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param level   
 * @param format  
 * @param type    
 * @param pixels  
 */
/** DoubleBuffer version of: {@link #glGetTextureImageEXT GetTextureImageEXT}  */
/** FloatBuffer version of: {@link #glGetTextureImageEXT GetTextureImageEXT}  */
/** IntBuffer version of: {@link #glGetTextureImageEXT GetTextureImageEXT}  */
/** ShortBuffer version of: {@link #glGetTextureImageEXT GetTextureImageEXT}  */
	static public function glGetTextureImageEXT(texture:Int,target:Int,level:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param buffer 
 * @param offset 
 * @param length 
 * @param access 
 */
/** Alternative version of: {@link #glMapNamedBufferRangeEXT MapNamedBufferRangeEXT}  */
	static public function glMapNamedBufferRangeEXT(buffer:Int,offset:haxe.Int64,length:haxe.Int64,access:Int,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (buffer:Int,offset:haxe.Int64,length:haxe.Int64,access:Int):java.nio.ByteBuffer {})
/** JNI method for {@link #glFramebufferDrawBufferEXT FramebufferDrawBufferEXT}  */
	static public function nglFramebufferDrawBufferEXT(framebuffer:Int,mode:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexArrayTexCoordOffsetEXT VertexArrayTexCoordOffsetEXT}  */
	static public function nglVertexArrayTexCoordOffsetEXT(vaobj:Int,buffer:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetMultiTexGenivEXT GetMultiTexGenivEXT}  */
/** JNI method for {@link #glGetMultiTexGenivEXT GetMultiTexGenivEXT}  */
	static public function nglGetMultiTexGenivEXT(texunit:Int,coord:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetMultiTexGenivEXT GetMultiTexGenivEXT}  */
	static public function glGetMultiTexGeniEXT(texunit:Int,coord:Int,pname:Int):Int;
/** Single return value version of: {@link #glGetMultiTexLevelParameterfvEXT GetMultiTexLevelParameterfvEXT}  */
	static public function glGetMultiTexLevelParameterfEXT(texunit:Int,target:Int,level:Int,pname:Int):Float;
/** Unsafe version of {@link #glTextureSubImage3DEXT TextureSubImage3DEXT}  */
/** JNI method for {@link #glTextureSubImage3DEXT TextureSubImage3DEXT}  */
	static public function nglTextureSubImage3DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetMultiTexLevelParameterfvEXT GetMultiTexLevelParameterfvEXT}  */
/** JNI method for {@link #glGetMultiTexLevelParameterfvEXT GetMultiTexLevelParameterfvEXT}  */
	static public function nglGetMultiTexLevelParameterfvEXT(texunit:Int,target:Int,level:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param param   
 */
	static public function glMultiTexEnviEXT(texunit:Int,target:Int,pname:Int,param:Int):Void;
/** Alternative version of: {@link #glProgramUniform1ivEXT ProgramUniform1ivEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform1ivEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glMultiTexGenfEXT MultiTexGenfEXT}  */
	static public function nglMultiTexGenfEXT(texunit:Int,coord:Int,pname:Int,param:Float,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetMultiTexEnvfvEXT GetMultiTexEnvfvEXT}  */
	static public function glGetMultiTexEnvfEXT(texunit:Int,target:Int,pname:Int):Float;
/**
 * 
 *
 * @param readBuffer  
 * @param writeBuffer 
 * @param readOffset  
 * @param writeOffset 
 * @param size        
 */
	static public function glNamedCopyBufferSubDataEXT(readBuffer:Int,writeBuffer:Int,readOffset:haxe.Int64,writeOffset:haxe.Int64,size:haxe.Int64):Void;
/**
 * 
 *
 * @param framebuffer 
 * @param mode        
 */
	static public function glFramebufferReadBufferEXT(framebuffer:Int,mode:Int):Void;
/** JNI method for {@link #glNamedProgramLocalParameter4fEXT NamedProgramLocalParameter4fEXT}  */
	static public function nglNamedProgramLocalParameter4fEXT(program:Int,target:Int,index:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glTextureImage2DEXT TextureImage2DEXT}  */
/** JNI method for {@link #glTextureImage2DEXT TextureImage2DEXT}  */
	static public function nglTextureImage2DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** JNI method for {@link #glCopyMultiTexSubImage2DEXT CopyMultiTexSubImage2DEXT}  */
	static public function nglCopyMultiTexSubImage2DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,x:Int,y:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param texture 
 */
	static public function glBindMultiTextureEXT(texunit:Int,target:Int,texture:Int):Void;
/** JNI method for {@link #glVertexArrayVertexOffsetEXT VertexArrayVertexOffsetEXT}  */
	static public function nglVertexArrayVertexOffsetEXT(vaobj:Int,buffer:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param renderbuffer   
 * @param internalformat 
 * @param width          
 * @param height         
 */
	static public function glNamedRenderbufferStorageEXT(renderbuffer:Int,internalformat:Int,width:Int,height:Int):Void;
/** Single return value version of: {@link #glGetDoublei_vEXT GetDoublei_vEXT}  */
	static public function glGetDoubleiEXT(pname:Int,index:Int):Float;
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 */
	static public function glProgramUniform1uiEXT(program:Int,location:Int,v0:Int):Void;
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param yoffset 
 * @param x       
 * @param y       
 * @param width   
 * @param height  
 */
	static public function glCopyTextureSubImage2DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,x:Int,y:Int,width:Int,height:Int):Void;
/** Unsafe version of {@link #glMultiTexParameterIivEXT MultiTexParameterIivEXT}  */
/** JNI method for {@link #glMultiTexParameterIivEXT MultiTexParameterIivEXT}  */
	static public function nglMultiTexParameterIivEXT(texunit:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glMatrixScaledEXT MatrixScaledEXT}  */
	static public function nglMatrixScaledEXT(matrixMode:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform1uivEXT ProgramUniform1uivEXT}  */
/** JNI method for {@link #glProgramUniform1uivEXT ProgramUniform1uivEXT}  */
	static public function nglProgramUniform1uivEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glMultiTexParameterIuivEXT MultiTexParameterIuivEXT}  */
	static public function glMultiTexParameterIuivEXT(texunit:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glTextureImage3DEXT TextureImage3DEXT}  */
/** JNI method for {@link #glTextureImage3DEXT TextureImage3DEXT}  */
	static public function nglTextureImage3DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetVertexArrayIntegeri_vEXT GetVertexArrayIntegeri_vEXT}  */
/** JNI method for {@link #glGetVertexArrayIntegeri_vEXT GetVertexArrayIntegeri_vEXT}  */
	static public function nglGetVertexArrayIntegeri_vEXT(vaobj:Int,index:Int,pname:Int,param:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (vaobj:Int,index:Int,pname:Int,param:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetNamedRenderbufferParameterivEXT GetNamedRenderbufferParameterivEXT}  */
/** JNI method for {@link #glGetNamedRenderbufferParameterivEXT GetNamedRenderbufferParameterivEXT}  */
	static public function nglGetNamedRenderbufferParameterivEXT(renderbuffer:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (renderbuffer:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param params  
 */
/** Alternative version of: {@link #glNamedProgramLocalParameter4fvEXT NamedProgramLocalParameter4fvEXT}  */
	static public function glNamedProgramLocalParameter4fvEXT(program:Int,target:Int,index:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetTextureLevelParameterfvEXT GetTextureLevelParameterfvEXT}  */
/** JNI method for {@link #glGetTextureLevelParameterfvEXT GetTextureLevelParameterfvEXT}  */
	static public function nglGetTextureLevelParameterfvEXT(texture:Int,target:Int,level:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexGendEXT MultiTexGendEXT}  */
	static public function nglMultiTexGendEXT(texunit:Int,coord:Int,pname:Int,param:Float,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetMultiTexParameterivEXT GetMultiTexParameterivEXT}  */
	static public function glGetMultiTexParameteriEXT(texunit:Int,target:Int,pname:Int):Int;
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param x       
 * @param y       
 * @param width   
 */
	static public function glCopyMultiTexSubImage1DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,x:Int,y:Int,width:Int):Void;
/** Single return value version of: {@link #glGetTextureLevelParameterivEXT GetTextureLevelParameterivEXT}  */
	static public function glGetTextureLevelParameteriEXT(texture:Int,target:Int,level:Int,pname:Int):Int;
/**
 * 
 *
 * @param cap   
 * @param index 
 */
	static public function glEnableIndexedEXT(cap:Int,index:Int):Void;
/** JNI method for {@link #glNamedCopyBufferSubDataEXT NamedCopyBufferSubDataEXT}  */
	static public function nglNamedCopyBufferSubDataEXT(readBuffer:Int,writeBuffer:Int,readOffset:haxe.Int64,writeOffset:haxe.Int64,size:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glCompressedTextureSubImage1DEXT CompressedTextureSubImage1DEXT}  */
/** JNI method for {@link #glCompressedTextureSubImage1DEXT CompressedTextureSubImage1DEXT}  */
	static public function nglCompressedTextureSubImage1DEXT(texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/** JNI method for {@link #glNamedProgramLocalParameter4dEXT NamedProgramLocalParameter4dEXT}  */
	static public function nglNamedProgramLocalParameter4dEXT(program:Int,target:Int,index:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glCopyMultiTexImage1DEXT CopyMultiTexImage1DEXT}  */
	static public function nglCopyMultiTexImage1DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,x:Int,y:Int,width:Int,border:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 * @param v1       
 */
	static public function glProgramUniform2uiEXT(program:Int,location:Int,v0:Int,v1:Int):Void;
/** Alternative version of: {@link #glNamedProgramLocalParametersI4ivEXT NamedProgramLocalParametersI4ivEXT}  */
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param count   
 * @param params  
 */
	static public function glNamedProgramLocalParametersI4ivEXT(program:Int,target:Int,index:Int,count:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glVertexArraySecondaryColorOffsetEXT VertexArraySecondaryColorOffsetEXT}  */
	static public function nglVertexArraySecondaryColorOffsetEXT(vaobj:Int,buffer:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glProgramUniform2fEXT ProgramUniform2fEXT}  */
	static public function nglProgramUniform2fEXT(program:Int,location:Int,v0:Float,v1:Float,__functionAddress:haxe.Int64):Void;
/** Buffer object offset version of: {@link #glTextureSubImage1DEXT TextureSubImage1DEXT}  */
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param width   
 * @param format  
 * @param type    
 * @param pixels  
 */
/** DoubleBuffer version of: {@link #glTextureSubImage1DEXT TextureSubImage1DEXT}  */
/** FloatBuffer version of: {@link #glTextureSubImage1DEXT TextureSubImage1DEXT}  */
/** IntBuffer version of: {@link #glTextureSubImage1DEXT TextureSubImage1DEXT}  */
/** ShortBuffer version of: {@link #glTextureSubImage1DEXT TextureSubImage1DEXT}  */
	static public function glTextureSubImage1DEXT(texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param cap   
 * @param index 
 */
	static public function glDisableIndexedEXT(cap:Int,index:Int):Void;
/** Alternative version of: {@link #glCompressedTextureSubImage3DEXT CompressedTextureSubImage3DEXT}  */
/** Buffer object offset version of: {@link #glCompressedTextureSubImage3DEXT CompressedTextureSubImage3DEXT}  */
/**
 * 
 *
 * @param texture   
 * @param target    
 * @param level     
 * @param xoffset   
 * @param yoffset   
 * @param zoffset   
 * @param width     
 * @param height    
 * @param depth     
 * @param format    
 * @param imageSize 
 * @param data      
 */
	static public function glCompressedTextureSubImage3DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glMatrixLoadTransposefEXT MatrixLoadTransposefEXT}  */
/** JNI method for {@link #glMatrixLoadTransposefEXT MatrixLoadTransposefEXT}  */
	static public function nglMatrixLoadTransposefEXT(matrixMode:Int,m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (matrixMode:Int,m:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniform4uivEXT ProgramUniform4uivEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform4uivEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetNamedFramebufferAttachmentParameterivEXT GetNamedFramebufferAttachmentParameterivEXT}  */
/** JNI method for {@link #glGetNamedFramebufferAttachmentParameterivEXT GetNamedFramebufferAttachmentParameterivEXT}  */
	static public function nglGetNamedFramebufferAttachmentParameterivEXT(framebuffer:Int,attachment:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (framebuffer:Int,attachment:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glNamedProgramStringEXT NamedProgramStringEXT}  */
/** JNI method for {@link #glNamedProgramStringEXT NamedProgramStringEXT}  */
	static public function nglNamedProgramStringEXT(program:Int,target:Int,format:Int,len:Int,string:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,format:Int,len:Int,string:haxe.Int64):Void {})
/** JNI method for {@link #glUnmapNamedBufferEXT UnmapNamedBufferEXT}  */
	static public function nglUnmapNamedBufferEXT(buffer:Int,__functionAddress:haxe.Int64):Bool;
/** Alternative version of: {@link #glNamedProgramStringEXT NamedProgramStringEXT}  */
/**
 * 
 *
 * @param program 
 * @param target  
 * @param format  
 * @param len     
 * @param string  
 */
	static public function glNamedProgramStringEXT(program:Int,target:Int,format:Int,len:Int,string:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,target:Int,format:Int,string:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param matrixMode 
 */
	static public function glMatrixPopEXT(matrixMode:Int):Void;
/** Alternative version of: {@link #glProgramUniformMatrix4fvEXT ProgramUniformMatrix4fvEXT}  */
/**
 * 
 *
 * @param program   
 * @param location  
 * @param count     
 * @param transpose 
 * @param value     
 */
	static public function glProgramUniformMatrix4fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * 
 *
 * @param matrixMode 
 * @param l          
 * @param r          
 * @param b          
 * @param t          
 * @param n          
 * @param f          
 */
	static public function glMatrixFrustumEXT(matrixMode:Int,l:Float,r:Float,b:Float,t:Float,n:Float,f:Float):Void;
/**
 * 
 *
 * @param buffer 
 * @param access 
 */
/** Alternative version of: {@link #glMapNamedBufferEXT MapNamedBufferEXT}  */
/** Explicit size alternative version of: {@link #glMapNamedBufferEXT MapNamedBufferEXT}  */
	static public function glMapNamedBufferEXT(buffer:Int,access:Int,length:haxe.Int64,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (buffer:Int,access:Int):java.nio.ByteBuffer {})
	@:overload(function (buffer:Int,access:Int,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/** Unsafe version of {@link #glMultiTexEnvfvEXT MultiTexEnvfvEXT}  */
/** JNI method for {@link #glMultiTexEnvfvEXT MultiTexEnvfvEXT}  */
	static public function nglMultiTexEnvfvEXT(texunit:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glDisableIndexedEXT DisableIndexedEXT}  */
	static public function nglDisableIndexedEXT(cap:Int,index:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetFloati_vEXT GetFloati_vEXT}  */
	static public function glGetFloatiEXT(pname:Int,index:Int):Float;
/** JNI method for {@link #glEnableClientStateIndexedEXT EnableClientStateIndexedEXT}  */
	static public function nglEnableClientStateIndexedEXT(array:Int,index:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture        
 * @param target         
 * @param internalformat 
 * @param buffer         
 */
	static public function glTextureBufferEXT(texture:Int,target:Int,internalformat:Int,buffer:Int):Void;
/** Unsafe version of {@link #glMatrixMultTransposefEXT MatrixMultTransposefEXT}  */
/** JNI method for {@link #glMatrixMultTransposefEXT MatrixMultTransposefEXT}  */
	static public function nglMatrixMultTransposefEXT(matrixMode:Int,m:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (matrixMode:Int,m:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glGetCompressedTextureImageEXT GetCompressedTextureImageEXT}  */
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param level   
 * @param img     
 */
	static public function glGetCompressedTextureImageEXT(texture:Int,target:Int,level:Int,img:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,imgOffset:haxe.Int64):Void {})
/** JNI method for {@link #glMatrixOrthoEXT MatrixOrthoEXT}  */
	static public function nglMatrixOrthoEXT(matrixMode:Int,l:Float,r:Float,b:Float,t:Float,n:Float,f:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glCopyMultiTexSubImage3DEXT CopyMultiTexSubImage3DEXT}  */
	static public function nglCopyMultiTexSubImage3DEXT(texunit:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,x:Int,y:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform3uivEXT ProgramUniform3uivEXT}  */
/** JNI method for {@link #glProgramUniform3uivEXT ProgramUniform3uivEXT}  */
	static public function nglProgramUniform3uivEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetFloati_vEXT GetFloati_vEXT}  */
/** JNI method for {@link #glGetFloati_vEXT GetFloati_vEXT}  */
	static public function nglGetFloati_vEXT(pname:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,index:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param vaobj  
 * @param buffer 
 * @param type   
 * @param stride 
 * @param offset 
 */
	static public function glVertexArrayIndexOffsetEXT(vaobj:Int,buffer:Int,type:Int,stride:Int,offset:haxe.Int64):Void;
/** Unsafe version of {@link #glGetCompressedMultiTexImageEXT GetCompressedMultiTexImageEXT}  */
/** JNI method for {@link #glGetCompressedMultiTexImageEXT GetCompressedMultiTexImageEXT}  */
	static public function nglGetCompressedMultiTexImageEXT(texunit:Int,target:Int,level:Int,img:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,img:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix4fvEXT ProgramUniformMatrix4fvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix4fvEXT ProgramUniformMatrix4fvEXT}  */
	static public function nglProgramUniformMatrix4fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glMultiTexImage1DEXT MultiTexImage1DEXT}  */
/**
 * 
 *
 * @param texunit        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param border         
 * @param format         
 * @param type           
 * @param pixels         
 */
/** DoubleBuffer version of: {@link #glMultiTexImage1DEXT MultiTexImage1DEXT}  */
/** FloatBuffer version of: {@link #glMultiTexImage1DEXT MultiTexImage1DEXT}  */
/** IntBuffer version of: {@link #glMultiTexImage1DEXT MultiTexImage1DEXT}  */
/** ShortBuffer version of: {@link #glMultiTexImage1DEXT MultiTexImage1DEXT}  */
	static public function glMultiTexImage1DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glCheckNamedFramebufferStatusEXT CheckNamedFramebufferStatusEXT}  */
	static public function nglCheckNamedFramebufferStatusEXT(framebuffer:Int,target:Int,__functionAddress:haxe.Int64):Int;
/** JNI method for {@link #glNamedProgramLocalParameterI4iEXT NamedProgramLocalParameterI4iEXT}  */
	static public function nglNamedProgramLocalParameterI4iEXT(program:Int,target:Int,index:Int,x:Int,y:Int,z:Int,w:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetTextureParameterIuivEXT GetTextureParameterIuivEXT}  */
	static public function glGetTextureParameterIuivEXT(texture:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glNamedRenderbufferStorageEXT NamedRenderbufferStorageEXT}  */
	static public function nglNamedRenderbufferStorageEXT(renderbuffer:Int,internalformat:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glNamedProgramLocalParameter4fvEXT NamedProgramLocalParameter4fvEXT}  */
/** JNI method for {@link #glNamedProgramLocalParameter4fvEXT NamedProgramLocalParameter4fvEXT}  */
	static public function nglNamedProgramLocalParameter4fvEXT(program:Int,target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:haxe.Int64):Void {})
/** Returns the {@link EXTDirectStateAccess} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTDirectStateAccess;
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param x       
 * @param y       
 * @param z       
 * @param w       
 */
	static public function glNamedProgramLocalParameterI4iEXT(program:Int,target:Int,index:Int,x:Int,y:Int,z:Int,w:Int):Void;
/**
 * 
 *
 * @param vaobj 
 * @param pname 
 * @param param 
 */
/** Alternative version of: {@link #glGetVertexArrayIntegervEXT GetVertexArrayIntegervEXT}  */
	static public function glGetVertexArrayIntegervEXT(vaobj:Int,pname:Int,param:java.nio.IntBuffer):Void;
	@:overload(function (vaobj:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMatrixTranslatedEXT MatrixTranslatedEXT}  */
	static public function nglMatrixTranslatedEXT(matrixMode:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glProgramUniform4iEXT ProgramUniform4iEXT}  */
	static public function nglProgramUniform4iEXT(program:Int,location:Int,v0:Int,v1:Int,v2:Int,v3:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param pname   
 * @param param   
 */
/** Alternative version of: {@link #glTextureParameterfvEXT TextureParameterfvEXT}  */
	static public function glTextureParameterfvEXT(texture:Int,target:Int,pname:Int,param:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetTextureParameterIuivEXT GetTextureParameterIuivEXT}  */
	static public function glGetTextureParameterIuiEXT(texture:Int,target:Int,pname:Int):Int;
/** JNI method for {@link #glVertexArrayNormalOffsetEXT VertexArrayNormalOffsetEXT}  */
	static public function nglVertexArrayNormalOffsetEXT(vaobj:Int,buffer:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param vaobj      
 * @param buffer     
 * @param index      
 * @param size       
 * @param type       
 * @param normalized 
 * @param stride     
 * @param offset     
 */
	static public function glVertexArrayVertexAttribOffsetEXT(vaobj:Int,buffer:Int,index:Int,size:Int,type:Int,normalized:Bool,stride:Int,offset:haxe.Int64):Void;
/** JNI method for {@link #glMatrixFrustumEXT MatrixFrustumEXT}  */
	static public function nglMatrixFrustumEXT(matrixMode:Int,l:Float,r:Float,b:Float,t:Float,n:Float,f:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glTextureParameterivEXT TextureParameterivEXT}  */
/** JNI method for {@link #glTextureParameterivEXT TextureParameterivEXT}  */
	static public function nglTextureParameterivEXT(texture:Int,target:Int,pname:Int,param:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,param:haxe.Int64):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param params  
 */
/** Alternative version of: {@link #glNamedProgramLocalParameterI4uivEXT NamedProgramLocalParameterI4uivEXT}  */
	static public function glNamedProgramLocalParameterI4uivEXT(program:Int,target:Int,index:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glDisableVertexArrayEXT DisableVertexArrayEXT}  */
	static public function nglDisableVertexArrayEXT(vaobj:Int,array:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glNamedBufferSubDataEXT NamedBufferSubDataEXT}  */
/** JNI method for {@link #glNamedBufferSubDataEXT NamedBufferSubDataEXT}  */
	static public function nglNamedBufferSubDataEXT(buffer:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64):Void {})
/**
 * 
 *
 * @param vaobj 
 * @param index 
 */
	static public function glEnableVertexArrayAttribEXT(vaobj:Int,index:Int):Void;
/**
 * 
 *
 * @param matrixMode 
 * @param m          
 */
/** Alternative version of: {@link #glMatrixLoadTransposedEXT MatrixLoadTransposedEXT}  */
	static public function glMatrixLoadTransposedEXT(matrixMode:Int,m:java.nio.DoubleBuffer):Void;
	@:overload(function (matrixMode:Int,m:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexArrayEdgeFlagOffsetEXT VertexArrayEdgeFlagOffsetEXT}  */
	static public function nglVertexArrayEdgeFlagOffsetEXT(vaobj:Int,buffer:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glCompressedMultiTexImage1DEXT CompressedMultiTexImage1DEXT}  */
/** JNI method for {@link #glCompressedMultiTexImage1DEXT CompressedMultiTexImage1DEXT}  */
	static public function nglCompressedMultiTexImage1DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetTextureParameterivEXT GetTextureParameterivEXT}  */
	static public function glGetTextureParameteriEXT(texture:Int,target:Int,pname:Int):Int;
/** Alternative version of: {@link #glProgramUniform3uivEXT ProgramUniform3uivEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform3uivEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glMultiTexRenderbufferEXT MultiTexRenderbufferEXT}  */
	static public function nglMultiTexRenderbufferEXT(texunit:Int,target:Int,renderbuffer:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param vaobj  
 * @param buffer 
 * @param stride 
 * @param offset 
 */
	static public function glVertexArrayEdgeFlagOffsetEXT(vaobj:Int,buffer:Int,stride:Int,offset:haxe.Int64):Void;
/** JNI method for {@link #glNamedProgramLocalParameterI4uiEXT NamedProgramLocalParameterI4uiEXT}  */
	static public function nglNamedProgramLocalParameterI4uiEXT(program:Int,target:Int,index:Int,x:Int,y:Int,z:Int,w:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glCompressedTextureImage1DEXT CompressedTextureImage1DEXT}  */
/** JNI method for {@link #glCompressedTextureImage1DEXT CompressedTextureImage1DEXT}  */
	static public function nglCompressedTextureImage1DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/** JNI method for {@link #glMatrixRotatedEXT MatrixRotatedEXT}  */
	static public function nglMatrixRotatedEXT(matrixMode:Int,angle:Float,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param matrixMode 
 * @param x          
 * @param y          
 * @param z          
 */
	static public function glMatrixScaledEXT(matrixMode:Int,x:Float,y:Float,z:Float):Void;
/** Unsafe version of {@link #glProgramUniform4fvEXT ProgramUniform4fvEXT}  */
/** JNI method for {@link #glProgramUniform4fvEXT ProgramUniform4fvEXT}  */
	static public function nglProgramUniform4fvEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * 
 *
 * @param vaobj 
 * @param pname 
 * @param param 
 */
/** Alternative version of: {@link #glGetVertexArrayPointervEXT GetVertexArrayPointervEXT}  */
	static public function glGetVertexArrayPointervEXT(vaobj:Int,pname:Int,param:org.lwjgl.PointerBuffer):Void;
	@:overload(function (vaobj:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param framebuffer 
 * @param target      
 */
	static public function glCheckNamedFramebufferStatusEXT(framebuffer:Int,target:Int):Int;
/** Alternative version of: {@link #glCompressedMultiTexImage1DEXT CompressedMultiTexImage1DEXT}  */
/** Buffer object offset version of: {@link #glCompressedMultiTexImage1DEXT CompressedMultiTexImage1DEXT}  */
/**
 * 
 *
 * @param texunit        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param border         
 * @param imageSize      
 * @param data           
 */
	static public function glCompressedMultiTexImage1DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTextureSubImage2DEXT CompressedTextureSubImage2DEXT}  */
/** JNI method for {@link #glCompressedTextureSubImage2DEXT CompressedTextureSubImage2DEXT}  */
	static public function nglCompressedTextureSubImage2DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetNamedProgramLocalParameterfvEXT GetNamedProgramLocalParameterfvEXT}  */
/** JNI method for {@link #glGetNamedProgramLocalParameterfvEXT GetNamedProgramLocalParameterfvEXT}  */
	static public function nglGetNamedProgramLocalParameterfvEXT(program:Int,target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetTextureLevelParameterivEXT GetTextureLevelParameterivEXT}  */
/** JNI method for {@link #glGetTextureLevelParameterivEXT GetTextureLevelParameterivEXT}  */
	static public function nglGetTextureLevelParameterivEXT(texture:Int,target:Int,level:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glTextureParameterIuivEXT TextureParameterIuivEXT}  */
/** JNI method for {@link #glTextureParameterIuivEXT TextureParameterIuivEXT}  */
	static public function nglTextureParameterIuivEXT(texture:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetMultiTexGenfvEXT GetMultiTexGenfvEXT}  */
	static public function glGetMultiTexGenfEXT(texunit:Int,coord:Int,pname:Int):Float;
/** JNI method for {@link #glCopyMultiTexImage2DEXT CopyMultiTexImage2DEXT}  */
	static public function nglCopyMultiTexImage2DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,x:Int,y:Int,width:Int,height:Int,border:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetPointerIndexedvEXT GetPointerIndexedvEXT}  */
	static public function glGetPointerIndexedEXT(target:Int,index:Int):haxe.Int64;
/** JNI method for {@link #glBindMultiTextureEXT BindMultiTextureEXT}  */
	static public function nglBindMultiTextureEXT(texunit:Int,target:Int,texture:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetMultiTexParameterivEXT GetMultiTexParameterivEXT}  */
/** JNI method for {@link #glGetMultiTexParameterivEXT GetMultiTexParameterivEXT}  */
	static public function nglGetMultiTexParameterivEXT(texunit:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetNamedFramebufferAttachmentParameterivEXT GetNamedFramebufferAttachmentParameterivEXT}  */
	static public function glGetNamedFramebufferAttachmentParameteriEXT(framebuffer:Int,attachment:Int,pname:Int):Int;
/**
 * 
 *
 * @param matrixMode 
 * @param m          
 */
/** Alternative version of: {@link #glMatrixMultTransposefEXT MatrixMultTransposefEXT}  */
	static public function glMatrixMultTransposefEXT(matrixMode:Int,m:java.nio.FloatBuffer):Void;
	@:overload(function (matrixMode:Int,m:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param x       
 * @param y       
 * @param z       
 * @param w       
 */
	static public function glNamedProgramLocalParameterI4uiEXT(program:Int,target:Int,index:Int,x:Int,y:Int,z:Int,w:Int):Void;
/**
 * 
 *
 * @param vaobj  
 * @param buffer 
 * @param size   
 * @param type   
 * @param stride 
 * @param offset 
 */
	static public function glVertexArrayColorOffsetEXT(vaobj:Int,buffer:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64):Void;
/**
 * 
 *
 * @param vaobj 
 * @param index 
 * @param pname 
 * @param param 
 */
/** Alternative version of: {@link #glGetVertexArrayIntegeri_vEXT GetVertexArrayIntegeri_vEXT}  */
	static public function glGetVertexArrayIntegeri_vEXT(vaobj:Int,index:Int,pname:Int,param:java.nio.IntBuffer):Void;
	@:overload(function (vaobj:Int,index:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glPushClientAttribDefaultEXT PushClientAttribDefaultEXT}  */
	static public function nglPushClientAttribDefaultEXT(mask:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 */
	static public function glProgramUniform1iEXT(program:Int,location:Int,v0:Int):Void;
/**
 * 
 *
 * @param framebuffer 
 * @param attachment  
 * @param pname       
 * @param params      
 */
/** Alternative version of: {@link #glGetNamedFramebufferAttachmentParameterivEXT GetNamedFramebufferAttachmentParameterivEXT}  */
	static public function glGetNamedFramebufferAttachmentParameterivEXT(framebuffer:Int,attachment:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (framebuffer:Int,attachment:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glEnableIndexedEXT EnableIndexedEXT}  */
	static public function nglEnableIndexedEXT(cap:Int,index:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glTextureParameterIuivEXT TextureParameterIuivEXT}  */
	static public function glTextureParameterIuivEXT(texture:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexEnvfEXT MultiTexEnvfEXT}  */
	static public function nglMultiTexEnvfEXT(texunit:Int,target:Int,pname:Int,param:Float,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2fvEXT ProgramUniformMatrix2fvEXT}  */
/**
 * 
 *
 * @param program   
 * @param location  
 * @param count     
 * @param transpose 
 * @param value     
 */
	static public function glProgramUniformMatrix2fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glTextureSubImage1DEXT TextureSubImage1DEXT}  */
/** JNI method for {@link #glTextureSubImage1DEXT TextureSubImage1DEXT}  */
	static public function nglTextureSubImage1DEXT(texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexParameterfEXT MultiTexParameterfEXT}  */
	static public function nglMultiTexParameterfEXT(texunit:Int,target:Int,pname:Int,param:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param texunit 
 * @param coord   
 * @param pname   
 * @param param   
 */
	static public function glMultiTexGeniEXT(texunit:Int,coord:Int,pname:Int,param:Int):Void;
/** Unsafe version of {@link #glGetNamedProgramivEXT GetNamedProgramivEXT}  */
/** JNI method for {@link #glGetNamedProgramivEXT GetNamedProgramivEXT}  */
	static public function nglGetNamedProgramivEXT(program:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform2fvEXT ProgramUniform2fvEXT}  */
/** JNI method for {@link #glProgramUniform2fvEXT ProgramUniform2fvEXT}  */
	static public function nglProgramUniform2fvEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param param   
 */
	static public function glMultiTexEnvfEXT(texunit:Int,target:Int,pname:Int,param:Float):Void;
/** Alternative version of: {@link #glProgramUniform2uivEXT ProgramUniform2uivEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform2uivEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Buffer object offset version of: {@link #glMultiTexImage2DEXT MultiTexImage2DEXT}  */
/**
 * 
 *
 * @param texunit        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param height         
 * @param border         
 * @param format         
 * @param type           
 * @param pixels         
 */
/** DoubleBuffer version of: {@link #glMultiTexImage2DEXT MultiTexImage2DEXT}  */
/** FloatBuffer version of: {@link #glMultiTexImage2DEXT MultiTexImage2DEXT}  */
/** IntBuffer version of: {@link #glMultiTexImage2DEXT MultiTexImage2DEXT}  */
/** ShortBuffer version of: {@link #glMultiTexImage2DEXT MultiTexImage2DEXT}  */
	static public function glMultiTexImage2DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glMultiTexGeniEXT MultiTexGeniEXT}  */
	static public function nglMultiTexGeniEXT(texunit:Int,coord:Int,pname:Int,param:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glGenerateMultiTexMipmapEXT GenerateMultiTexMipmapEXT}  */
	static public function nglGenerateMultiTexMipmapEXT(texunit:Int,target:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param matrixMode 
 * @param m          
 */
/** Alternative version of: {@link #glMatrixMultdEXT MatrixMultdEXT}  */
	static public function glMatrixMultdEXT(matrixMode:Int,m:java.nio.DoubleBuffer):Void;
	@:overload(function (matrixMode:Int,m:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param params  
 */
/** Alternative version of: {@link #glNamedProgramLocalParameter4dvEXT NamedProgramLocalParameter4dvEXT}  */
	static public function glNamedProgramLocalParameter4dvEXT(program:Int,target:Int,index:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glNamedProgramLocalParametersI4uivEXT NamedProgramLocalParametersI4uivEXT}  */
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param count   
 * @param params  
 */
	static public function glNamedProgramLocalParametersI4uivEXT(program:Int,target:Int,index:Int,count:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param params  
 */
/** Alternative version of: {@link #glGetNamedProgramLocalParameterIivEXT GetNamedProgramLocalParameterIivEXT}  */
	static public function glGetNamedProgramLocalParameterIivEXT(program:Int,target:Int,index:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform1ivEXT ProgramUniform1ivEXT}  */
/** JNI method for {@link #glProgramUniform1ivEXT ProgramUniform1ivEXT}  */
	static public function nglProgramUniform1ivEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glTextureSubImage3DEXT TextureSubImage3DEXT}  */
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param level   
 * @param xoffset 
 * @param yoffset 
 * @param zoffset 
 * @param width   
 * @param height  
 * @param depth   
 * @param format  
 * @param type    
 * @param pixels  
 */
/** DoubleBuffer version of: {@link #glTextureSubImage3DEXT TextureSubImage3DEXT}  */
/** FloatBuffer version of: {@link #glTextureSubImage3DEXT TextureSubImage3DEXT}  */
/** IntBuffer version of: {@link #glTextureSubImage3DEXT TextureSubImage3DEXT}  */
/** ShortBuffer version of: {@link #glTextureSubImage3DEXT TextureSubImage3DEXT}  */
	static public function glTextureSubImage3DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param vaobj 
 * @param index 
 * @param pname 
 * @param param 
 */
/** Alternative version of: {@link #glGetVertexArrayPointeri_vEXT GetVertexArrayPointeri_vEXT}  */
	static public function glGetVertexArrayPointeri_vEXT(vaobj:Int,index:Int,pname:Int,param:org.lwjgl.PointerBuffer):Void;
	@:overload(function (vaobj:Int,index:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param matrixMode 
 * @param x          
 * @param y          
 * @param z          
 */
	static public function glMatrixScalefEXT(matrixMode:Int,x:Float,y:Float,z:Float):Void;
/** Alternative version of: {@link #glProgramUniform4ivEXT ProgramUniform4ivEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform4ivEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexParameterIivEXT GetMultiTexParameterIivEXT}  */
	static public function glGetMultiTexParameterIivEXT(texunit:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param params  
 */
/** Alternative version of: {@link #glGetNamedProgramLocalParameterIuivEXT GetNamedProgramLocalParameterIuivEXT}  */
	static public function glGetNamedProgramLocalParameterIuivEXT(program:Int,target:Int,index:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glProgramUniform4fEXT ProgramUniform4fEXT}  */
	static public function nglProgramUniform4fEXT(program:Int,location:Int,v0:Float,v1:Float,v2:Float,v3:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param pname  
 * @param index  
 * @param params 
 */
/** Alternative version of: {@link #glGetPointeri_vEXT GetPointeri_vEXT}  */
	static public function glGetPointeri_vEXT(pname:Int,index:Int,params:org.lwjgl.PointerBuffer):Void;
	@:overload(function (pname:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform1uivEXT ProgramUniform1uivEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform1uivEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetMultiTexParameterIivEXT GetMultiTexParameterIivEXT}  */
/** JNI method for {@link #glGetMultiTexParameterIivEXT GetMultiTexParameterIivEXT}  */
	static public function nglGetMultiTexParameterIivEXT(texunit:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param matrixMode 
 * @param m          
 */
/** Alternative version of: {@link #glMatrixMultTransposedEXT MatrixMultTransposedEXT}  */
	static public function glMatrixMultTransposedEXT(matrixMode:Int,m:java.nio.DoubleBuffer):Void;
	@:overload(function (matrixMode:Int,m:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param target 
 * @param index  
 */
	static public function glIsEnabledIndexedEXT(target:Int,index:Int):Bool;
/** Alternative version of: {@link #glFramebufferDrawBuffersEXT FramebufferDrawBuffersEXT}  */
/**
 * 
 *
 * @param framebuffer 
 * @param n           
 * @param bufs        
 */
	static public function glFramebufferDrawBuffersEXT(framebuffer:Int,n:Int,bufs:java.nio.ByteBuffer):Void;
	@:overload(function (framebuffer:Int,bufs:java.nio.IntBuffer):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetNamedProgramivEXT GetNamedProgramivEXT}  */
	static public function glGetNamedProgramivEXT(program:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glMultiTexParameterfvEXT MultiTexParameterfvEXT}  */
/** JNI method for {@link #glMultiTexParameterfvEXT MultiTexParameterfvEXT}  */
	static public function nglMultiTexParameterfvEXT(texunit:Int,target:Int,pname:Int,param:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,param:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexParameterivEXT GetMultiTexParameterivEXT}  */
	static public function glGetMultiTexParameterivEXT(texunit:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param texture 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetTextureParameterfvEXT GetTextureParameterfvEXT}  */
	static public function glGetTextureParameterfvEXT(texture:Int,target:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform2fvEXT ProgramUniform2fvEXT}  */
/**
 * 
 *
 * @param program  
 * @param location 
 * @param count    
 * @param value    
 */
	static public function glProgramUniform2fvEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** JNI method for {@link #glVertexArrayColorOffsetEXT VertexArrayColorOffsetEXT}  */
	static public function nglVertexArrayColorOffsetEXT(vaobj:Int,buffer:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMatrixTranslatefEXT MatrixTranslatefEXT}  */
	static public function nglMatrixTranslatefEXT(matrixMode:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetMultiTexEnvfvEXT GetMultiTexEnvfvEXT}  */
/** JNI method for {@link #glGetMultiTexEnvfvEXT GetMultiTexEnvfvEXT}  */
	static public function nglGetMultiTexEnvfvEXT(texunit:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetTextureParameterfvEXT GetTextureParameterfvEXT}  */
/** JNI method for {@link #glGetTextureParameterfvEXT GetTextureParameterfvEXT}  */
	static public function nglGetTextureParameterfvEXT(texture:Int,target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param param   
 */
	static public function glMultiTexParameteriEXT(texunit:Int,target:Int,pname:Int,param:Int):Void;
/** Single return value version of: {@link #glGetVertexArrayIntegeri_vEXT GetVertexArrayIntegeri_vEXT}  */
	static public function glGetVertexArrayIntegeriEXT(vaobj:Int,index:Int,pname:Int):Int;
/** Unsafe version of {@link #glTextureSubImage2DEXT TextureSubImage2DEXT}  */
/** JNI method for {@link #glTextureSubImage2DEXT TextureSubImage2DEXT}  */
	static public function nglTextureSubImage2DEXT(texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param index   
 * @param params  
 */
/** Alternative version of: {@link #glGetNamedProgramLocalParameterfvEXT GetNamedProgramLocalParameterfvEXT}  */
	static public function glGetNamedProgramLocalParameterfvEXT(program:Int,target:Int,index:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (program:Int,target:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMatrixPushEXT MatrixPushEXT}  */
	static public function nglMatrixPushEXT(matrixMode:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glCompressedTextureImage1DEXT CompressedTextureImage1DEXT}  */
/** Buffer object offset version of: {@link #glCompressedTextureImage1DEXT CompressedTextureImage1DEXT}  */
/**
 * 
 *
 * @param texture        
 * @param target         
 * @param level          
 * @param internalformat 
 * @param width          
 * @param border         
 * @param imageSize      
 * @param data           
 */
	static public function glCompressedTextureImage1DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetFloatIndexedvEXT GetFloatIndexedvEXT}  */
/** JNI method for {@link #glGetFloatIndexedvEXT GetFloatIndexedvEXT}  */
	static public function nglGetFloatIndexedvEXT(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glMatrixScalefEXT MatrixScalefEXT}  */
	static public function nglMatrixScalefEXT(matrixMode:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param buffer 
 * @param offset 
 * @param length 
 */
	static public function glFlushMappedNamedBufferRangeEXT(buffer:Int,offset:haxe.Int64,length:haxe.Int64):Void;
/** Unsafe version of {@link #glGetDoublei_vEXT GetDoublei_vEXT}  */
/** JNI method for {@link #glGetDoublei_vEXT GetDoublei_vEXT}  */
	static public function nglGetDoublei_vEXT(pname:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,index:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param matrixMode 
 * @param m          
 */
/** Alternative version of: {@link #glMatrixLoadTransposefEXT MatrixLoadTransposefEXT}  */
	static public function glMatrixLoadTransposefEXT(matrixMode:Int,m:java.nio.FloatBuffer):Void;
	@:overload(function (matrixMode:Int,m:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glCompressedTextureImage2DEXT CompressedTextureImage2DEXT}  */
/** JNI method for {@link #glCompressedTextureImage2DEXT CompressedTextureImage2DEXT}  */
	static public function nglCompressedTextureImage2DEXT(texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/**
 * 
 *
 * @param program  
 * @param location 
 * @param v0       
 * @param v1       
 */
	static public function glProgramUniform2iEXT(program:Int,location:Int,v0:Int,v1:Int):Void;
/** Unsafe version of {@link #glMultiTexImage1DEXT MultiTexImage1DEXT}  */
/** JNI method for {@link #glMultiTexImage1DEXT MultiTexImage1DEXT}  */
	static public function nglMultiTexImage1DEXT(texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texunit:Int,target:Int,level:Int,internalformat:Int,width:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetVertexArrayPointeri_vEXT GetVertexArrayPointeri_vEXT}  */
/** JNI method for {@link #glGetVertexArrayPointeri_vEXT GetVertexArrayPointeri_vEXT}  */
	static public function nglGetVertexArrayPointeri_vEXT(vaobj:Int,index:Int,pname:Int,param:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (vaobj:Int,index:Int,pname:Int,param:haxe.Int64):Void {})
/**
 * 
 *
 * @param framebuffer 
 * @param attachment  
 * @param texture     
 * @param level       
 * @param face        
 */
	static public function glNamedFramebufferTextureFaceEXT(framebuffer:Int,attachment:Int,texture:Int,level:Int,face:Int):Void;
/** Unsafe version of {@link #glGetPointerIndexedvEXT GetPointerIndexedvEXT}  */
/** JNI method for {@link #glGetPointerIndexedvEXT GetPointerIndexedvEXT}  */
	static public function nglGetPointerIndexedvEXT(target:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetNamedBufferParameterivEXT GetNamedBufferParameterivEXT}  */
	static public function glGetNamedBufferParameteriEXT(buffer:Int,pname:Int):Int;
/** JNI method for {@link #glVertexArrayMultiTexCoordOffsetEXT VertexArrayMultiTexCoordOffsetEXT}  */
	static public function nglVertexArrayMultiTexCoordOffsetEXT(vaobj:Int,buffer:Int,texunit:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param pname  
 * @param index  
 * @param params 
 */
/** Alternative version of: {@link #glGetDoublei_vEXT GetDoublei_vEXT}  */
	static public function glGetDoublei_vEXT(pname:Int,index:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (pname:Int,index:Int,params:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4x3fvEXT ProgramUniformMatrix4x3fvEXT}  */
/**
 * 
 *
 * @param program   
 * @param location  
 * @param count     
 * @param transpose 
 * @param value     
 */
	static public function glProgramUniformMatrix4x3fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * 
 *
 * @param texunit 
 * @param target  
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glMultiTexParameterIivEXT MultiTexParameterIivEXT}  */
	static public function glMultiTexParameterIivEXT(texunit:Int,target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texunit:Int,target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param matrixMode 
 * @param angle      
 * @param x          
 * @param y          
 * @param z          
 */
	static public function glMatrixRotatedEXT(matrixMode:Int,angle:Float,x:Float,y:Float,z:Float):Void;
/** JNI method for {@link #glProgramUniform2uiEXT ProgramUniform2uiEXT}  */
	static public function nglProgramUniform2uiEXT(program:Int,location:Int,v0:Int,v1:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetPointeri_vEXT GetPointeri_vEXT}  */
/** JNI method for {@link #glGetPointeri_vEXT GetPointeri_vEXT}  */
	static public function nglGetPointeri_vEXT(pname:Int,index:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,index:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param vaobj 
 * @param array 
 */
	static public function glDisableVertexArrayEXT(vaobj:Int,array:Int):Void;
/**
 * 
 *
 * @param texunit 
 * @param coord   
 * @param pname   
 * @param params  
 */
/** Alternative version of: {@link #glGetMultiTexGenfvEXT GetMultiTexGenfvEXT}  */
	static public function glGetMultiTexGenfvEXT(texunit:Int,coord:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texunit:Int,coord:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param vaobj   
 * @param buffer  
 * @param texunit 
 * @param size    
 * @param type    
 * @param stride  
 * @param offset  
 */
	static public function glVertexArrayMultiTexCoordOffsetEXT(vaobj:Int,buffer:Int,texunit:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix4x3fvEXT ProgramUniformMatrix4x3fvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix4x3fvEXT ProgramUniformMatrix4x3fvEXT}  */
	static public function nglProgramUniformMatrix4x3fvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/**
 * 
 *
 * @param program 
 * @param target  
 * @param pname   
 * @param string  
 */
	static public function glGetNamedProgramStringEXT(program:Int,target:Int,pname:Int,string:java.nio.ByteBuffer):Void;

}
