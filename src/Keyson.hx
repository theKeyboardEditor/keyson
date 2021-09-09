package;

/*
 * theKeyboardEditor file interfacing library
 * https://github.com/theKeyboardEditor/keyson
 */
@:structInit
typedef KeysonOptions = {
	// file name
	var fileName:String;
}

class Keyson {
	// public static vars (once per session run)
	// static vars (library local)
	// public vars (the load and save content and flags)
	public var keyboard:Keyboard; // The whole object the file can hold
	public var name:String;
	public var author:String;
	public var license:String;
	public var comment:String;
	public var colorTable:Palette;
	public var board:Keyboard;

	// vars (local to the lib and file parsing)
	// public functions (we call from outside)
	public function new(opts:KeysonOptions) { // generic empty layout
	}

	public function get(opts:KeysonOptions) { // read a string in
	}

	public function cat(opts:KeysonOptions) { // cat a string out
	}

	// functions (library local functions)
}

class Palette {
	var name:String;
	var url:String;
	var colorMatchingProfile:String;
	var size:Int;
	var squashes:Array<Color>;
}

class Color {
	var color:String;
	var value:Int;

	public function new(color:String, value:Int) {
		this.color = color;
		this.value = value;
	}
}

class Keyboard {
	var keyStep:Array<Float>;
	var stabilizerType:String;
	var switchType:String;
	var capSize:Array<Float>;
	var unitAmount:String;
	var caseColor:String;
	var keysColor:String;
	var labelFont:String;
	var sublabelFont:String;
	var labelFontSize:Int;
	var sublabelFontSize:Int;
	var labelColor:String;
	var labelPosition:Array<Float>;
	var sublabelColor:String;
	var profile:String;
	var keySculpt:String;
	var amountOfUnits:Int;
	var units:Array<Unit>;
}

class Unit {
	var unitID:Int;
	var designator:String;
	var size:Int;
	var keys:Array<Key>;
}

class Key {
	var keyID:Int;
	var position:Array<Int>;
	var stabilizer:String;
	var angle:Float;
	var shape:String;
	var labelFont:String;
	var relativeRotationCenter:Array<Float>;
	var features:Array<String>;
	var steppedTop:Float;
	var homingFeature:String;
	var keysColor:String;
	var label:KeyLabel;
	var sublabels:Sublabel;
}

class KeyLabel { // the global or define their own
	var glyph:String;
}

class Sublabel { // the global or define their own
	var positions:Array<String>; // the 9 positions on a key
	// TODO do we want an lumped or fine grained acces to sublabels?
}

class LEDFeature {
	var diameter:Float; // diameter usually 3.0 or 5.0 mm
}

class EncoderFeature {
	var diameter:Float; // in unit size
	var barrelSize:Float; // height/length in units size
	var profile:String; // "Round" "Curled" "Ribbed"
	var type:String; // "Upright" "Barrel X" "Barrel Y"
}

class TrackpointFeature {
	var diameter:Int;
	var profile:String;
}
