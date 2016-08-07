package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.APPLEBiasedFixedPointImageFormats")
@:final
/**
 * Native bindings to the <strong>APPLE_biased_fixed_point_image_formats</strong> extension.
 * 
 * <p>This selector may be passed to {@link CL10#clCreateImage2D CreateImage2D} in the cl_image_format.image_channel_data_type field. It defines a biased signed 1.14 fixed point
 * storage format, with range [-1, 3). The conversion from float to this fixed point format is defined as follows:
 * <pre><code style="font-family: monospace">
 * ushort float_to_sfixed14( float x ){
 * 	int i = convert_int_sat_rte( x * 0x1.0p14f );         // scale [-1, 3.0) to [-16384, 3*16384), round to nearest integer
 * 	i = add_sat( i, 0x4000 );                             // apply bias, to convert to [0, 65535) range
 * 	return convert_ushort_sat(i);                         // clamp to destination size
 * }</code></pre>
 * The inverse conversion is the reverse process. The formats are currently only available on the CPU with the {@link CL10#CL_RGBA RGBA} channel layout.</p>
 */
extern class APPLEBiasedFixedPointImageFormats 
{
	inline static public var CL_SFIXED14_APPLE:Int = 268435464;
	inline static public var CL_BIASED_HALF_APPLE:Int = 268435465;

}
