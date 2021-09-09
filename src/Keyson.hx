package keyson;

/*
 * theKeyboardEditor file interfacing library
 * https://github.com/theKeyboardEditor/keyson
 */

@:structInit
typedef KeysonOptions = {
	// file name
	fileName:String;
	// URL (with login data)
	netLocation:String;
}

class Keyson {
	// WIP
	// public static vars (once per session run)

	// static vars (library local)

	// public vars (the load and save content and flags)
	public var keyboard:Keyboard // The whole object the file can hold
	public var name:String;
	public var author:String;
	public var license:String;
	public var comment:String;
	public var palette:Colors
	public var board:Keyboard

	// vars (local to the lib and file parsing)
	// public functions (we call from outside)
	public function new(opts: KeysonOptions) { // generic empty layout
	}

	public function load(opts: KeysonOptions) { // load a host-local file
	}

	public function save(opts: KeysonOptions) { //save a hots-local file
	}

	public function get(opts: KeysonOptions) { // load a file from an URL
	}

	public function store(opts: KeysonOptions) { //save a file from a URL
	}

	// functions (library local functions)

}

class Pallete {
	var name:String;
	var url:String;
	var colorMatchingProfile:String;
	var size:Int;
}

class Colors {
	var color:String;
	var value:Int;
	
	public function new(color:String, value:Int) {
		this.color = color;
		this.value = value;
	}
}

class Keyboard() {
	var keyStep:<Array>Float;
	var stabilizerType:String;
	var switchType:String;
	var capSize:<array>Float;
	var units:String;
	var caseColor:String;
	var keysColor:String;
	var labelFont:String;
	var sublabelFont:String;
	var labelFontSize:Int;
	var sublabelFontSize:Int;
	var labelColor:String;
	var labelPosition:<array>Float;
	var sublabelColor:String;
	var profile:String;
	var keySculpt:String;
	var amountOfUnits:Int;
	var units:<Array>
}

class Unit {
	var unitID:Int;
	var designator:String;
	var size:Int;
	var keys:<Array>
}

class Key {
	var keyID:Int;
	var position:<Array>Int;
	var stabilizer:String;
	var angle:Float;
	var shape:String;
	var labelFont:String;
	var relativeRotationCenter:<array>Float;
	var features:<Array>String;
	var steppedTop:Float;
	var homingFeature:String;
	var keysColor:String;
	var label:KeyLabel
	var sublabels:Sublabel
}

class KeyLabel {
}

class Sublabels {
}

class LEDFeature {
	var diameter:Float;
}

class EncoderFeature {
	var diameter:Float;
	var barrelSize:Float;
	var profile:String;
	var type:String;
}

class TrackpointFeature {
	var diameter:Int;
	var profile:String;
}
