package at.dotpoint.utils;

import sys.io.File;
import haxe.io.Path;
import sys.FileSystem;

/**
 *
 */
enum FileRecursion
{
	DEPTH_FIRST;
	NONE;
}

/**
 *
 */
class FileOperations
{

	/**
	 * @param callback path, isDirectory; should proceed?
	 */
	public static function iterate( directory:String, callback:String->Bool->Bool, ?recursion:FileRecursion ):Void
	{
		FileOperations.assertExistence( directory, true );

		if( recursion == null )
			recursion = FileRecursion.NONE;

		//
		switch( recursion )
		{
			case FileRecursion.DEPTH_FIRST:
			{
				for( file in FileSystem.readDirectory( directory ) )
				{
					var path:String = Path.join( [directory, file] );
					var isDirectory:Bool = FileSystem.isDirectory( path );

					//
					if( !callback( path, isDirectory ) )
						return;

					if( isDirectory )
						FileOperations.iterate( path, callback, FileRecursion.DEPTH_FIRST );
				}
			}

			default:
			{
				for( file in FileSystem.readDirectory( directory ) )
				{
					var path:String = Path.join( [directory, file] );
					var isDirectory:Bool = FileSystem.isDirectory( path );

					//
					if( !callback( path, isDirectory ) )
						return;
				}
			}
		}
	}

	//
	public static function copyDirectory( source:String, target:String, ?recursion:FileRecursion ):Void
	{
		FileOperations.assertExistence( source, true );
		FileOperations.assertExistence( target, true );

		var onFile = function( file:String, isDirectory:Bool ):Bool
		{
			var s:String = file;
			var t:String = Path.join( [target, relativeTo( file, source ) ] );

			FileOperations.assertExistence( s, isDirectory );

			if( FileSystem.exists( t ) )
				throw 'file $t already exists';

			//
			if( isDirectory )
			{
				FileSystem.createDirectory( t );
			}
			else
			{
				File.copy( s, t );
			}

			return true;
		};

		FileOperations.iterate( source, onFile, recursion );
	}

	//
	public static function clearDirectory( directory:String ):Void
	{
		if( !FileSystem.exists( directory ) )
		{
			FileSystem.createDirectory( directory );
			return;
		}

		//
		var files:Array<String> = [];
		var directories:Array<String> = [];

		var onFile = function( file:String, isDirectory:Bool ):Bool
		{
			if( isDirectory ) directories.unshift( file );
			else files.push( file );

			return true;
		};

		FileOperations.iterate( directory, onFile, FileRecursion.DEPTH_FIRST );

		//
		for( file in files )
		{
			FileOperations.assertExistence( file, false );
			FileSystem.deleteFile( file );
		}

		//
		for( dir in directories )
		{
			FileOperations.assertExistence( dir, true );
			FileSystem.deleteDirectory( dir );
		}
	}

	//
	public static function relativeTo( file:String, base:String ):String
	{
		var index = file.lastIndexOf( base );

		if( index < 0 )
			throw '$file does not share $base';

		return file.substring( index + base.length, file.length );
	}

	//
	public static function assertExistence( file:String, asDirectory:Bool ):Void
	{
		if( !FileSystem.exists( file ) )
			throw 'File $file does not exist (directory: $asDirectory)';

		if( FileSystem.isDirectory( file ) != asDirectory )
		{
			var type = asDirectory ? "directory" : "file";
			throw '$file should have been a $type';
		}
	}
}

