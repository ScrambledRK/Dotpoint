package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLUtil")
@:final
extern class CLUtil 
{
/**
 * Returns the token name of the specified {@code errcode}.
 *
 * @param errcode the {@code errcode}
 *
 * @return the {@code errcode} token name
 */
	static public function getErrcodeName(errcode:Int):String;
/**
 * Checks the specified {@code errcode} and throws an {@link OpenCLException} if it's not equal to {@link CL10#CL_SUCCESS}.
 *
 * @param errcode the {@code errcode} to check
 *
 * @throws OpenCLException
 */
/**
 * Checks the {@code errcode} present in the current position of the specified {@code errcode_ret} buffer and throws an {@link OpenCLException} if it's not
 * equal to {@link CL10#CL_SUCCESS}.
 *
 * @param errcode_ret the {@code errcode} buffer
 *
 * @throws OpenCLException
 */
/**
 * Checks the {@code errcode} present in the current position of the specified {@code errcode_ret} buffer and throws an {@link OpenCLException} if it's not
 * equal to {@link CL10#CL_SUCCESS}.
 *
 * @param errcode_ret the {@code errcode} buffer
 *
 * @throws OpenCLException
 */
	static public function checkCLError(errcode_ret:java.nio.IntBuffer):Void;
	@:overload(function (errcode:Int):Void {})
	@:overload(function (errcode_ret:java.nio.ByteBuffer):Void {})

}
