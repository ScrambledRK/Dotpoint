package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.LibFFI")
@:final
/**
 * Native bindings to the <a href="https://sourceware.org/libffi">libffi</a> library.
 * 
 * <p>The foreign function interface provides a mechanism by which a function can generate a call to another function at runtime without requiring knowledge
 * of the called function's interface at compile time. This enables use of native libraries that LWJGL does not provide bindings for.</p>
 * 
 * <p>libffi assumes that you have a pointer to the function you wish to call and that you know the number and types of arguments to pass it, as well as the
 * return type of the function.</p>
 * 
 * <p>The first thing you must do is create an {@link FFICIF} object that matches the signature of the function you wish to call. This is a separate step
 * because it is common to make multiple calls using a single {@link FFICIF}. The {@code cif} in {@code ffi_cif} stands for Call InterFace. To prepare a
 * call interface object, use the function {@link #ffi_prep_cif prep_cif}. To call a function using an initialized {@code ffi_cif}, use the {@link #ffi_call call} function.</p>
 * 
 * <p><strong>LWJGL note</strong>: The closure and raw APIs are not exposed.</p>
 */
extern class LibFFI 
{
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_VOID:Int16 = 0;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_INT:Int16 = 1;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_FLOAT:Int16 = 2;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_DOUBLE:Int16 = 3;
/** Types used to create custom {@link FFICIF}.  */
	static public var FFI_TYPE_LONGDOUBLE:Int16;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_UINT8:Int16 = 5;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_SINT8:Int16 = 6;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_UINT16:Int16 = 7;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_SINT16:Int16 = 8;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_UINT32:Int16 = 9;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_SINT32:Int16 = 10;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_UINT64:Int16 = 11;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_SINT64:Int16 = 12;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_STRUCT:Int16 = 13;
/** Types used to create custom {@link FFICIF}.  */
	inline static public var FFI_TYPE_POINTER:Int16 = 14;
/** ABI enumeration.  */
	inline static public var FFI_SYSV:Int = 1;
/** ABI enumeration.  */
	inline static public var FFI_STDCALL:Int = 2;
/** ABI enumeration.  */
	inline static public var FFI_THISCALL:Int = 3;
/** ABI enumeration.  */
	inline static public var FFI_FASTCALL:Int = 4;
/** ABI enumeration.  */
	inline static public var FFI_MS_CDECL:Int = 5;
/** ABI enumeration.  */
	inline static public var FFI_WIN64:Int = 1;
/** ABI enumeration.  */
	inline static public var FFI_UNIX64:Int = 2;
/** ABI enumeration.  */
	static public var FFI_DEFAULT_ABI:Int;
/** Status codes.  */
	inline static public var FFI_OK:Int = 0;
/** Status codes.  */
	inline static public var FFI_BAD_TYPEDEF:Int = 1;
/** Status codes.  */
	inline static public var FFI_BAD_ABI:Int = 2;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_void:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_uint8:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_sint8:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_uint16:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_sint16:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_uint32:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_sint32:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_uint64:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_sint64:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_uchar:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_schar:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_sshort:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_ushort:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_uint:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_sint:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_ulong:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_slong:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_float:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_double:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_longdouble:haxe.Int64;
/** Data types. These are the addresses of libffi's predefined {@link FFIType} structs.  */
	static public var ffi_type_pointer:haxe.Int64;
/** JNI method for {@link #ffi_prep_cif prep_cif}  */
	static public function nffi_prep_cif(cif:haxe.Int64,abi:Int,nargs:Int,rtype:haxe.Int64,atypes:haxe.Int64):Int;
/**
 * 
 *
 * @param closure   the address of an {@link FFIClosure} object; this is the writable address returned by {@link #ffi_closure_alloc closure_alloc}.
 * @param cif       the {@link FFICIF} describing the function parameters
 * @param fun       the function which will be called when the closure is invoked
 * @param user_data an arbitrary datum that is passed, uninterpreted, to your closure function
 * @param codeloc   the executable address returned by {@link #ffi_closure_alloc closure_alloc}.
 */
	static public function ffi_prep_closure_loc(closure:java.nio.ByteBuffer,cif:java.nio.ByteBuffer,fun:haxe.Int64,user_data:haxe.Int64,codeloc:haxe.Int64):Int;
/** Alternative version of: {@link #ffi_prep_cif prep_cif}  */
/**
 * Prepares an {@link FFICIF} structure for use with {@link #ffi_call call}.
 *
 * @param cif    the {@link FFICIF} structure to prepare
 * @param abi    the calling convention to use. One of:<br>{@link #FFI_SYSV SYSV}, {@link #FFI_STDCALL STDCALL}, {@link #FFI_THISCALL THISCALL}, {@link #FFI_FASTCALL FASTCALL}, {@link #FFI_MS_CDECL MS_CDECL}, {@link #FFI_WIN64 WIN64}, {@link #FFI_UNIX64 UNIX64}, {@link #FFI_DEFAULT_ABI DEFAULT_ABI}
 * @param nargs  the number of arguments
 * @param rtype  points to an {@link FFIType} that describes the data type, size and alignment of the return value
 * @param atypes an array of {@code nargs} pointers to {@link FFIType} structs that describe the data type, size and alignment of each argument
 *
 * @return Upon successful completion, {@code ffi_prep_cif} returns {@link #FFI_OK OK}. It will return {@link #FFI_BAD_TYPEDEF BAD_TYPEDEF} if {@code cif} is {@code NULL} or
 *         {@code atypes} or {@code rtype} is malformed. If {@code abi} does not refer to a valid ABI, {@link #FFI_BAD_ABI BAD_ABI} will be returned.
 */
	static public function ffi_prep_cif(cif:java.nio.ByteBuffer,abi:Int,nargs:Int,rtype:haxe.Int64,atypes:java.nio.ByteBuffer):Int;
	@:overload(function (cif:java.nio.ByteBuffer,abi:Int,rtype:haxe.Int64,atypes:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #ffi_prep_cif_var prep_cif_var}  */
	static public function nffi_prep_cif_var(cif:haxe.Int64,abi:Int,nfixedargs:Int,ntotalargs:Int,rtype:haxe.Int64,atypes:haxe.Int64):Int;
/** JNI method for {@link #ffi_call call}  */
	static public function nffi_call(cif:haxe.Int64,fn:haxe.Int64,rvalue:haxe.Int64,avalue:haxe.Int64):Void;
/** JNI method for {@link #ffi_closure_free closure_free}  */
	static public function nffi_closure_free(writable:haxe.Int64):Void;
/** JNI method for {@link #ffi_prep_closure_loc prep_closure_loc}  */
	static public function nffi_prep_closure_loc(closure:haxe.Int64,cif:haxe.Int64,fun:haxe.Int64,user_data:haxe.Int64,codeloc:haxe.Int64):Int;
/** Alternative version of: {@link #ffi_prep_cif_var prep_cif_var}  */
/**
 * Prepares an {@link FFICIF} structure for use with {@link #ffi_call call} for variadic functions.
 *
 * @param cif        the {@link FFICIF} structure to prepare
 * @param abi        the calling convention to use. One of:<br>{@link #FFI_SYSV SYSV}, {@link #FFI_STDCALL STDCALL}, {@link #FFI_THISCALL THISCALL}, {@link #FFI_FASTCALL FASTCALL}, {@link #FFI_MS_CDECL MS_CDECL}, {@link #FFI_WIN64 WIN64}, {@link #FFI_UNIX64 UNIX64}, {@link #FFI_DEFAULT_ABI DEFAULT_ABI}
 * @param nfixedargs the number of fixed (non-variadic) arguments
 * @param ntotalargs the total number of arguments
 * @param rtype      points to an {@link FFIType} that describes the data type, size and alignment of the return value
 * @param atypes     an array of {@code ntotalargs} pointers to {@link FFIType} structs that describe the data type, size and alignment of each argument
 *
 * @return Upon successful completion, {@code ffi_prep_cif} returns {@link #FFI_OK OK}. It will return {@link #FFI_BAD_TYPEDEF BAD_TYPEDEF} if {@code cif} is {@code NULL} or
 *         {@code atypes} or {@code rtype} is malformed. If {@code abi} does not refer to a valid ABI, {@link #FFI_BAD_ABI BAD_ABI} will be returned.
 */
	static public function ffi_prep_cif_var(cif:java.nio.ByteBuffer,abi:Int,nfixedargs:Int,ntotalargs:Int,rtype:haxe.Int64,atypes:java.nio.ByteBuffer):Int;
	@:overload(function (cif:java.nio.ByteBuffer,abi:Int,nfixedargs:Int,rtype:haxe.Int64,atypes:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #ffi_closure_alloc closure_alloc}  */
	static public function nffi_closure_alloc(size:haxe.Int64,code:haxe.Int64):haxe.Int64;
/**
 * Frees memory allocated using {@link #ffi_closure_alloc closure_alloc}.
 *
 * @param writable the address of an {@link FFIClosure} structure
 */
	static public function ffi_closure_free(writable:java.nio.ByteBuffer):Void;
/** Alternative version of: {@link #ffi_call call}  */
/**
 * Provides a simple mechanism for invoking a function without requiring knowledge of the function's interface at compile time.
 *
 * @param cif    a {@link FFICIF} structure. It must be initialized with {@link #ffi_prep_cif prep_cif} or {@link #ffi_prep_cif_var prep_cif_var} before it is used with {@code ffi_call}.
 * @param fn     the function to call
 * @param rvalue a pointer to storage in which to place the returned value. The storage must be sizeof(ffi_arg) or larger for non-floating point types. For
 *               smaller-sized return value types, the ffi_arg or ffi_sarg integral type must be used to hold the return value.
 * @param avalue an array of pointers from which the argument values are retrieved
 */
	static public function ffi_call(cif:java.nio.ByteBuffer,fn:haxe.Int64,rvalue:java.nio.ByteBuffer,avalue:java.nio.ByteBuffer):Void;
	@:overload(function (cif:java.nio.ByteBuffer,fn:haxe.Int64,rvalue:java.nio.ByteBuffer,avalue:org.lwjgl.PointerBuffer):Void {})
/**
 * Allocates an {@link FFIClosure} structure.
 *
 * @param size the number of bytes to allocate. Must be:<br>{@link FFIClosure#SIZEOF}
 * @param code a buffer in which to place the returned executable address
 *
 * @return a pointer to the writable address
 */
/** Alternative version of: {@link #ffi_closure_alloc closure_alloc}  */
	static public function ffi_closure_alloc(size:haxe.Int64,code:org.lwjgl.PointerBuffer):java.nio.ByteBuffer;
	@:overload(function (size:haxe.Int64,code:java.nio.ByteBuffer):java.nio.ByteBuffer {})

}
