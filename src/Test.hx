package;

typedef ColorData = {
	var color:String;
	var value:Int;
}
typedef PaletteData = {
	var name:String;
	var url:String;
	var colorMatchingProfile:String;
	var size:Int;
	var squashes:Array<ColorData>;
}
typedef KeyLabelData = {
	var keysColor:String;
	var labelFont:String;
	var labelFontSize:Int;
	var labelColor:String;
	var labelPosition:Array<Float>;
	var profile:String;
	var keySculpt:String;
	var glyph:String;
}
typedef SublabelData = {
	var sublabelFont:String;
	var sublabelFontSize:Int;
	var sublabelColor:String;
	var positions:Array<String>;
}
typedef KeyData = {
	var id:String;
	var position:Array<Float>;
	var stabilizer:String;
	var angle:Float;
	var shape:String;
	var labelFont:String;
	var relativeRotationCenter:Array<Float>;
	var features:Array<String>;
	var steppedTop:Float;
	var homingFeature:String;
	var keysColor:String;
	var label:KeyLabelData;
	var sublabel:SublabelData;
}
typedef UnitData = {
	var unitID:String;
	var designator:String;
	var size:Int;
	var keys:Array<KeyData>;
}
typedef KeyboardData = {
	var keyStep:Array<Float>;
	var switchType:String;
	var stabilizerType:String;
	var capSize:Array<Float>;
	var units:String;
	var caseColor:String;
	var keysColor:String;
	var labelFont:String;
	var sublabelFont:String;
	var labelSizeUnits:String;
	var labelSize:Float;
	var sublabelSize:Float;
	var labelColor:String;
	var labelPosition:Array<Float>;
	var sublabelColor:String;
	var profile:String;
	var keySculpt:String;
	var amountOfUnits:Int;
	var unit:Array<UnitData>;
}
typedef KeysonData = {
	var name:String;
	var author:String;
	var license:String;
	var Comment:String;
	var colorTable:PaletteData;
	var board:KeyboardData;
}

class Test {
	public static function main() {
		trace (">>>We Are Testing...");
		//TODO add tyedef:

		//The keyboard variable object to be:
		var k1 = '{
			"name": "Numpad",
			"author": "cest73",
			"license": "CC",
			"comment": "A common numpad block layout",
			"colorTable": {
				"name": "Kids Crayons 16",
				"url": "https://some.site.org",
				"colorMatchingProfile": "generic",
				"size": 16,
				"squashes": [
					{"black"  : "0xFF000000"},
					{"white"  : "0xFFffffff"},
					{"red"    : "0xFFff0000"},
					{"lime"   : "0xFF00ff00"},
					{"blue"   : "0xFF0000ff"},
					{"yellow" : "0xFFffff00"},
					{"cyan"   : "0xFF00ffff"},
					{"magenta": "0xFFff00ff"},
					{"silver" : "0xFF808080"},
					{"gray"   : "0xFF404040"},
					{"maroon" : "0xFF800000"},
					{"olive"  : "0xFF808000"},
					{"green"  : "0xFF008000"},
					{"purple" : "0xFF800080"},
					{"teal"   : "0xFF008080"},
					{"navy"   : "0xFF000080"}
				]
			},
			"board": {
				"keyStep": [19.05, 19.05],
				"stabilizerType": "Cherry",
				"switchType": "Cherry MX/Gateron/Kailh",
				"capSize": [18.5, 18.5],
				"units": "mm",
				"caseColor": "white",
				"keysColor": "white",
				"font":"sans",
				"labelSizeUnits":"px",
				"labelSize": 9,
				"sublabelSize": 7,
				"labelColor": "black",
				"labelPosition": [1.27, 1.27],
				"sublabelColor": "black",
				"profile": "XDA",
				"keySculpt": "R3",
				"amountOfUnits": 1,
				 "unit": [ {
					"unitID": 1,
					"designator": "Numpad",
					"size": 17,
					"keys": [
						{
							"id": 0,
							"position": [0,0],
							"shape": "1U",
							"label": {
								"glyph": "Num Lock"
							}
						},
						{
							"id": 1,
							"position": [1,0],
							"shape": "1U",
							"label": {
								"glyph": "/"
							}
						},
						{
							"id": 2,
							"position": [2,0],
							"shape": "1U",
							"label": {
								"glyph": "*"
							}
						},
						{
							"id": 3,
							"position": [3,0],
							"shape": "1U",
							"label": {
								"glyph": "-"
							}
						},
						{
							"id": 4,
							"position": [0,1],
							"shape": "1U",
							"label": {
								"glyph": "7"
							},
							"sublabels": [
								"", "", "",
								"", "", "",
								"Home", "", ""
							]
						},
						{
							"id": 5,
							"position": [1,1],
							"shape": "1U",
							"label": {
								"glyph": "8"
							},
							"sublabels": [
								"", "", "",
								"", "", "",
								"&uarr;", "", ""
							]
						},
						{
							"id": 6,
							"position": [2,1],
							"shape": "1U",
							"label": {
								"glyph": "9",
								"Size": "9px",
								"Color": "black"
							},
							"sublabels": [
								"", "", "",
								"", "", "",
								"PgUp", "", ""
							]
						},
						{
							"id": 7,
							"position": [3,1],
							"Stabilizer": "2U",
							"shape": "2U vertical",
							"label": {
								"glyph": "+",
								"position": [1.27,17.78]
							}
						},
						{
							"id": 8,
							"position": [0,2],
							"shape": "1U",
							"label": {
								"glyph": "4"
							},
							"sublabels": [
								"", "", "",
								"", "", "",
								"&larr;", "", ""
							]
						},
						{
							"id": 9,
							"position": [1,2],
							"shape": "1U",
							"Features": "Homing",
							"label": {
								"glyph": "5"
							}
						},
						{
							"id": 10,
							"position": [2,2],
							"shape": "1U",
							"label": {
								"glyph": "6"
							},
							"sublabels": [
								"", "", "",
								"", "", "",
								"&rarr;", "", ""
							]
						},
						{
							"id": 11,
							"position": [0,3],
							"shape": "1U",
							"label": {
								"glyph": "1"
							},
							"sublabels": [
								"", "", "",
								"", "", "",
								"End", "", ""
							]
						},
						{
							"id": 12,
							"position": [1,3],
							"shape": "1U",
							"label": {
								"glyph": "2"
							},
							"sublabels": [
								"", "", "",
								"", "", "",
								"&darr;", "", ""
							]
						},
						{
							"id": 13,
							"position": [2,3],
							"shape": "1U",
							"label": {
								"glyph": "3"
							},
							"sublabels": [
								"", "", "",
								"", "", "",
								"PgDn", "", ""
							]
						},
						{
							"id": 14,
							"position": [3,3],
							"Stabilizer": "2U",
							"shape": "2U vertical",
							"label": {
								"glyph": "Enter",
								"position": [1.27,17.78]
							}
						},
						{
							"id": 15,
							"position": [0,4],
							"Stabilizer": "2U",
							"shape": "2U",
							"label": {
								"glyph": "0"
							},
							"sublabels": [
								"", "", "",
								"", "", "",
								"Ins", "", ""
							]
						},
						{
							"id": 16,
							"position": [2,4],
							"shape": "1U",
							"label": {
								"glyph": "."
							},
							"sublabels": [
								"", "", "",
								"", "", "",
								"Del", "", ""
							]
						}
					]
				}
				]
			}
		}';
		/**
		TODO make all with the native Json built in class
		**/
		var keeb = haxe.Json.parse(k1);

		// The first palette:
		var p1 = '{
		"pallete": {
			"name":"Kids Crayons 16",
			"url": "https://some.site.org",
			"colorMatchingProfile": "generic",
			"size": 16,
			"squashes": [
				{"black"  : "0xFF000000"},
				{"white"  : "0xFFffffff"},
				{"red"    : "0xFFff0000"},
				{"lime"   : "0xFF00ff00"},
				{"blue"   : "0xFF0000ff"},
				{"yellow" : "0xFFffff00"},
				{"cyan"   : "0xFF00ffff"},
				{"magenta": "0xFFff00ff"},
				{"silver" : "0xFF808080"},
				{"gray"   : "0xFF404040"},
				{"maroon" : "0xFF800000"},
				{"olive"  : "0xFF808000"},
				{"green"  : "0xFF008000"},
				{"purple" : "0xFF800080"},
				{"teal"   : "0xFF008080"},
				{"navy"   : "0xFF000080"}
				]
			}
		}';
		var p2 ='{
		"palette": {
			"name": "Sweetie-16",
			"url": "https://lospec.com/palette-list/sweetie-16",
			"colorMatchingProfile": "generic",
			"size": 16,
			"squashes": [
				{"black": "0xFF1A1C2C"},
				{"violet":"0xFF5D275D"},
				{"red":   "0xFFB13E53"},
				{"orange":"0xFFEF7D57"},
				{"yellow":"0xFFFFCD75"},
				{"lime":  "0xFFA7F070"},
				{"green": "0xFF38B764"},
				{"teal":  "0xFF257179"},
				{"dblue": "0xFF29366F"},
				{"blue":  "0xFF3B5DC9"},
				{"sky":   "0xFF41A6F6"},
				{"cyan":  "0xFF73EFF7"},
				{"white": "0xFFF4F4F4"},
				{"lgray": "0xFF94B0C2"},
				{"gray":  "0xFF566C86"},
				{"dgray": "0xFF333C57"}
				]
			}
		}';
		var assortment = haxe.Json.parse(p1);
		trace ("assortment:"+assortment+"");


		//The 2nd palette:
		var assortment2 = haxe.Json.parse(p2);
		trace ("assortment:"+assortment2+"");

		var keeb:KeysonData = haxe.Json.parse(k1);
		trace ("name:["+keeb.name+"]");
		trace ("board.switchType:["+keeb.board.switchType+"]");

}
}
	function readfile(dest:String) {
		//TODO open said file and return it as an array of lines
		return; // content:Array<String>;
	}

