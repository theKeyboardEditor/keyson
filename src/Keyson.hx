package;

/*
 * theKeyboardEditor file interfacing library
 * https://github.com/theKeyboardEditor/keyson
 */
@:structInit
typedef KeysonOptions = {
	// optional (generic?) palette name for new layout
	var paletteName:String;
}

class Keyson {
	// public static vars (once per session run)
	public static var version = "0.0.1-alpha";

	// static vars (library local)

	// public vars (the load and save content and flags)
	public var name:String;
	public var author:String;
	public var license:String;
	public var comment:String;
	public var colorTable:Palette;
	public var board:Keyboard;
	public var remapped:Keyboard;

	// vars (local to the lib and file parsing)
	var unit:Array<Unit>;
	var key:Array<Key>;

	// public functions (we call from outside)
	public function set(name:String,author:String,license:String,comment:String,colorTable:Palette,board:Keyboard) { // generic empty layout
		this.name = name;
		this.author = author;
		this.license = license;
		this.comment = comment;
		this.colorTable = colorTable;
		this.board = board;
	}

	public function new() { // initialize our object
		name = "unknown";
		author = "unknown";
		license = "CC";
		comment = "empty";
		colorTable = new Palette();
		board = new Keyboard();
	}

	public function remap(calling:Palette) {
		//TODO
		// we return our keyboard object but remapped to the supplied Palette object:
		remapped = this.board; //object to be changed
		// we iterate thru:
		for (unit in remapped.units) { // in each unit:
			for (keys in unit.keys) { // for each key:
				trace("color:",keys.keysColor);
				// is the key color entry empty?
				if (keys.keysColor != "") keys.keysColor = calling.colorMatch(keys.keysColor);
				// is the resulting color equal to the more general assigned one?
				if (keys.keysColor == this.board.keysColor) keys.keysColor = ""; // we rub it out if equal
				// the same applies for sublabels
				if (keys.sublabels.sublabelColor != "") keys.sublabels.sublabelColor = calling.colorMatch(keys.sublabels.sublabelColor);
				if (keys.sublabels.sublabelColor == this.board.keysColor) keys.sublabels.sublabelColor = "";
			}
		}
	this.board = remapped;
	return remapped;
	}

	// functions (library local functions)

	// for every call we retur the updated object:
}

class Palette {
	public var name:String;
	public var url:String;
	public var colorMatchingProfile:String;
	public var size:Int;
	public var squashes:Array<Color>;
	public var matchingIndex:Array<Int>;

	var match:String;

	public function new() {
		//TODO build in sanity checks since we might be getting human input here
		this.name = "unknown";
		this.url = "unknown";
		this.colorMatchingProfile = "none";
		this.size = 0;
		this.squashes = [new Color("",0x000000 )];
	}
	public function colorMatch(color:String) {
		// Return the closest match from self
		match = color; //forr the time we default po ping/pong
		// TODO
		// first we make an index by:
		// sum of absolute differences of the per byte values
		// we sort off that index (really just seek the smallest member)
		// section(s) of same index value are sorted by whole color integer value:
		// lighter colors first
		// we return the first member of the index list
		return match;
	}

}

class Color {
	public var color:String;
	public var value:Int;

	public function new(color:String,value:Int) {
		this.color = color;
		this.value = value;
	}
}

class Keyboard {
	public var keyStep:Array<Float>;
	public var stabilizerType:String;
	public var switchType:String;
	public var capSize:Array<Float>;
	public var unitMeasure:String;
	public var caseColor:String;
	public var keysColor:String;
	public var labelFont:String;
	public var sublabelFont:String;
	public var labelFontSize:Int;
	public var sublabelFontSize:Int;
	public var labelColor:String;
	public var labelPosition:Array<Float>;
	public var sublabelColor:String;
	public var profile:String;
	public var keySculpt:String;
	public var amountOfUnits:Int;
	public var units:Array<Unit>;

	public function new() { // empty default keyboard
		this.keyStep = [0.0,0.0];
		this.stabilizerType = "";
		this.switchType = "";
		this.capSize = [0.0,0.0];
		this.unitMeasure = "mm";
		this.caseColor = "";
		this.keysColor = "";
		this.labelFont = "unknown";
		this.sublabelFont = "unknown";
		this.labelFontSize = 0;
		this.sublabelFontSize = 0;
		this.labelColor = "";
		this.labelPosition = [0.0,0.0];
		this.sublabelColor = "";
		this.profile = "XDA";
		this.keySculpt = "R3";
		this.amountOfUnits = 1;
		this.units = [new Unit()];
	}

	public function set (	keyStep:Array<Float>, stabilizerType:String,
							switchType:String, capSize:Array<Float>,unitMeasure:String,
							caseColor:String, keysColor:String,
							labelFont:String, sublabelFont:String,
							labelFontSize:Int, sublabelFontSize:Int,
							labelColor:String, labelPosition:Array<Float>,
							sublabelColor:String,
							profile:String, keySculpt:String,
							amountOfUnits:Int,
							units:Array<Unit>) {
		//TODO build in sanity checks since we might be getting human input here
		this.keyStep = keyStep;
		this.stabilizerType = stabilizerType;
		this.switchType = switchType;
		this.capSize = capSize;
		this.unitMeasure = unitMeasure;
		this.caseColor = caseColor;
		this.keysColor = keysColor;
		this.labelFont = labelFont;
		this.sublabelFont = sublabelFont;
		this.labelFontSize = labelFontSize;
		this.labelColor = labelColor;
		this.labelPosition = labelPosition;
		this.sublabelColor = sublabelColor;
		this.profile = profile;
		this.keySculpt = keySculpt;
		this.amountOfUnits = amountOfUnits;
		this.units = units;
	}
}

class Unit {
	public var unitID:Int;
	public var designator:String;
	public var position = [0,0];
	public var angle:Float;
	public var size:Int;
	public var keys:Array<Key>;
	public function new() {
		this.unitID = 0; //        unique unit ID
		this.designator = "default"; // "Master", "Slave", "Numpad" ...
		this.position = [0,0]; // placement of the unit
		this.angle = 0; //     rotation around the anchor point
		this.size = 0; //          number of keys/elements
		this.keys = [new Key()];

	}
}

class Key {
	public var keyID:Int;
	public var position:Array<Int>;
	public var stabilizer:String;
	public var angle:Float;
	public var shape:String;
	public var labelFont:String;
	public var relativeRotationCenter:Array<Float>;
	public var features:Array<String>;
	public var steppedTop:Float;
	public var homingFeature:String;
	public var keysColor:String;
	public var label:KeyLabel;
	public var sublabels:Sublabel;

	public function new() {
		keyID = 0;  // unique key ID
		position = [0,0]; // place on the unit
		stabilizer = "None"; // "None","2U","2.25U","2.75U","6.25U","7.25U",(Custom Bar)"125.5"
		angle = 0.0;
		shape = "1U"; //"1U","2U","2U vertical","1.25U","1.5U","1.75U","2.25U","2.75U","ISO","BAE","6.25U","7.25U","3U","0.75U"
		labelFont = "";
		relativeRotationCenter = [0.0,0.0];
		features = [];
		steppedTop = 0.0;
		homingFeature = "";
		keysColor = "";
		label = new KeyLabel();
		sublabels = new Sublabel();

	}
}

class KeyLabel {
	// the Keyboard options or here define their own
	public var keysColor:String;
	public var labelFont:String;
	public var labelFontSize:Int;
	public var labelColor:String;
	public var labelPosition:Array<Float>;
	public var profile:String;
	public var keySculpt:String;
	public var glyph:String;

	public function new() {
		keysColor = "";
		labelFont = "";
		labelFontSize = 0;
		labelColor = "";
		labelPosition = [0.0,0.0];
		profile = "";
		keySculpt = "";
		glyph = "";
	}
}

class Sublabel {
	// the Keyboard options or here define their own
	public var sublabelFont:String;
	public var sublabelFontSize:Int;
	public var sublabelColor:String;

	public var positions:Array<String>; // the 9 positions on a key
	// TODO do we want a lumped or a fine grained acces to sublabels?

	public function new() {
		sublabelFont = "";
		sublabelFontSize = 0;
		sublabelColor = "";
		positions = ["","","","","","","","",""];
	}
}

class LEDFeature {
	public var diameter:Float; // diameter usually 3.0 or 5.0 mm
}

class EncoderFeature {
	public var diameter:Float; // in unit size
	public var barrelSize:Float; // height/length in units size
	public var profile:String; // "Round" "Curled" "Ribbed"
	public var type:String; // axis:"Upright" "Barrel X" "Barrel Y"

	public function new() {
		diameter = 0.0;
		barrelSize = 0.0;
		profile = "";
		type = "";
	}
}

class TrackpointFeature {
	public var diameter:Float;
	public var profile:String;

	public function new() {
		diameter = 0.0;
		profile = "";
	}
}
