package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.Time")
@:final
/** Native bindings to <time.h>.  */
extern class Time 
{
/** The IDs of the various system clocks (for POSIX.1b interval timers).  */
	inline static public var CLOCK_REALTIME:Int = 0;
/** The IDs of the various system clocks (for POSIX.1b interval timers).  */
	inline static public var CLOCK_MONOTONIC:Int = 1;
/** The IDs of the various system clocks (for POSIX.1b interval timers).  */
	inline static public var CLOCK_PROCESS_CPUTIME_ID:Int = 2;
/** The IDs of the various system clocks (for POSIX.1b interval timers).  */
	inline static public var CLOCK_THREAD_CPUTIME_ID:Int = 3;
/** The IDs of the various system clocks (for POSIX.1b interval timers).  */
	inline static public var CLOCK_MONOTONIC_RAW:Int = 4;
/** The IDs of the various system clocks (for POSIX.1b interval timers).  */
	inline static public var CLOCK_REALTIME_COARSE:Int = 5;
/** The IDs of the various system clocks (for POSIX.1b interval timers).  */
	inline static public var CLOCK_MONOTONIC_COARSE:Int = 6;
/** The IDs of the various system clocks (for POSIX.1b interval timers).  */
	inline static public var CLOCK_BOOTTIME:Int = 7;
/** The IDs of the various system clocks (for POSIX.1b interval timers).  */
	inline static public var CLOCK_REALTIME_ALARM:Int = 8;
/** The IDs of the various system clocks (for POSIX.1b interval timers).  */
	inline static public var CLOCK_BOOTTIME_ALARM:Int = 9;
/** JNI method for {@link #gettimeofday}  */
	static public function ngettimeofday(tv:haxe.Int64,tz:haxe.Int64):Int;
/**
 * Returns the time and the timezone
 *
 * @param tv the time
 * @param tz the timezone
 */
	static public function gettimeofday(tv:java.nio.ByteBuffer,tz:java.nio.ByteBuffer):Int;
/**
 * Finds the resolution (precision) of the specified clock {@code clk_id}, and, if res is non-{@code NULL}, stores it in the {@link timespec} struct pointed to by
 * {@code res}. The resolution of clocks depends on the implementation and cannot be configured by a particular process.
 *
 * @param clk_id the clock
 * @param res    a pointer to a {@link timespec} structure
 */
	static public function clock_getres(clk_id:Int,res:java.nio.ByteBuffer):Int;
/** JNI method for {@link #clock_getres}  */
	static public function nclock_getres(clk_id:Int,res:haxe.Int64):Int;
/**
 * Retrieves the time of the specified clock {@code clk_id} and stores it in the {@link timespec} struct pointed to by {@code res}.
 *
 * @param clk_id the clock
 * @param tp     a pointer to a {@link timespec} structure
 */
	static public function clock_gettime(clk_id:Int,tp:java.nio.ByteBuffer):Int;
/** JNI method for {@link #clock_gettime}  */
	static public function nclock_gettime(clk_id:Int,tp:haxe.Int64):Int;

}
