package keyson;

/*
 * theKeyboardEditor file interfacing library
 * https://github.com/theKeyboardEditor/keyson
 */

@:structInit
typedef KeysonOptions = {
	// file name
	FileName:String;
	// URL (with login data)
	NetLocation
	// calling data structure/object
	Keeb
}

class Keyson {
	// WIP
	// public static vars (once per session run)

	// static vars (library local)

	// public vars (the load and save content and flags)
	public var Keyboard: // The whole object the file can hold
	public var Name:String;
	public var Author:String;
	public var License:String;
	public var Comment:String;
	public var Palette= Colors()
	public var Board= Keyboard()

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

public class Pallete() {
	Name:String;
	URL:String;
	ColorMatchingProfile:String;
	Size:Int;
}

class Colors() [ {
	var color:String;
	var value:Int;
	public inline function new (color:String, value:Int) {
		this.color = color;
		this.value = value;
	}
}
]

class Keyboard() {
	var KeyStep:<Array>Float;
	var StabilizerType:String;
	var SwitchType:String;
	var CapSize:<array>Float;
	var Units:String;
	var CaseColor:String;
	var KeysColor:String;
	var LabelFont:String;
	var SublabelFont:String;
	var LabelFontSize:Int;
	var SublabelFontSize:Int;
	var LabelColor:String;
	var LabelPosition:<array>Float;
	var SublabelColor:String;
	var Profile:String;
	var KeySculpt:String;
	var AmountOfUnits:Int;
	var Units:<Array>

}

class Unit() {
	var UnitID:Int;
	var Designator:String;
	var Size:Int;
	var Keys:<Array>
}

class Key() {
	var ID:Int;
	var Position:<Array>Int;
	var Stabilizer:String;
	var Angle:Float;
	var Shape:String;
	var LabelFont:String;
	var Relative Rotation Center:<array>Float;
	var Features:<Array>String;
	var SteppedTop:Float;
	var HomingFeature:String;
	var KeysColor:String;
	var Label = KeyLabel
	var Sublabels = Sublabel
}

class KeyLabel() {
}

class Sublabels() {
}

class LEDFeature() {
	var Diameter:Float;
}

class EncoderFeature() {
	Diameter:Float;
	Barrel Size:Float;
	Profile:String;
	Type:String;
}

class Trackpoint Feature() {
	Diameter:Int;
	Profile:String;
}

