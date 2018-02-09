package at.dotpoint.processor;

@:enum
abstract ProcessPolicy(Bool) {
	var CONTINUE = true;
	var STOP = false;
}