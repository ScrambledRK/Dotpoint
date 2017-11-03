package at.dotpoint.remote.socket;

import sys.net.Socket;

//
typedef ClientBundle = {
	write:Array<Socket>,
	read:Array<Socket>,
	others:Array<Socket>
}