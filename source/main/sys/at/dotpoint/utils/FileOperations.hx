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
		var getFileName:String->String = function( path:String ):String
		{
			var c1:Int = path.indexOf( "/" );
			var c2:Int = path.indexOf( "\\" );
			var index:Int = c2 > c1 ? c2 : c1;

			return path.substring( index + 1 );
		}

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
					if( !callback( getFileName(file), isDirectory ) )
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
					if( !callback( getFileName(file), isDirectory ) )
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
			var s:String = Path.join( [source, file] );
			var t:String = Path.join( [target, file] );

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
		var onFile = function( file:String, isDirectory:Bool ):Bool
		{
			if( isDirectory )
				return true;

			//
			var target:String = Path.join( [directory, file] );

			FileOperations.assertExistence( target, false );
			FileSystem.deleteFile( target );

			return true;
		};

		//
		var onDirectory = function( file:String, isDirectory:Bool ):Bool
		{
			var target:String = Path.join( [directory, file] );

			FileOperations.assertExistence( target, true );
			FileSystem.deleteDirectory( target );

			return true;
		};

		FileOperations.iterate( directory, onFile, FileRecursion.DEPTH_FIRST );
		FileOperations.iterate( directory, onDirectory, FileRecursion.DEPTH_FIRST );
	}

	//
	public static function assertExistence( file:String, asDirectory:Bool ):Void
	{
		if( !FileSystem.exists( file ) || FileSystem.isDirectory( file ) != asDirectory )
			throw 'File $file does not exist or should have been a directory ($asDirectory)';
	}
}

