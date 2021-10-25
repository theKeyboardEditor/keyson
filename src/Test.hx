package;


class Test {
	public static function main() {
		trace (">>>We Are Testing...");
//		Keyson;
		//The keyboard variable object to be:
		var keyboardString1 = '{
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
			"board": [
				{
					"keyboardID": 0,
					"designator": "Numpad",
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
					"size": 17,
					"keys": [
						{
							"keyId": 0,
							"position": [0,0],
							"shape": "1U",
							"label": {
								"glyph": "Num Lock"
							}
						},
						{
							"keyId": 1,
							"position": [1,0],
							"shape": "1U",
							"label": {
								"glyph": "/"
							}
						},
						{
							"keyId": 2,
							"position": [2,0],
							"shape": "1U",
							"label": {
								"glyph": "*"
							}
						},
						{
							"keyId": 3,
							"position": [3,0],
							"shape": "1U",
							"label": {
								"glyph": "-"
							}
						},
						{
							"keyId": 4,
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
							"keyId": 5,
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
							"keyId": 6,
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
							"keyId": 7,
							"position": [3,1],
							"Stabilizer": "2U",
							"shape": "2U vertical",
							"label": {
								"glyph": "+",
								"position": [1.27,17.78]
							}
						},
						{
							"keyId": 8,
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
							"keyId": 9,
							"position": [1,2],
							"shape": "1U",
							"Features": "Homing",
							"label": {
								"glyph": "5"
							}
						},
						{
							"keyId": 10,
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
							"keyId": 11,
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
							"keyId": 12,
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
							"keyId": 13,
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
							"keyId": 14,
							"position": [3,3],
							"Stabilizer": "2U",
							"shape": "2U vertical",
							"label": {
								"glyph": "Enter",
								"position": [1.27,17.78]
							}
						},
						{
							"keyId": 15,
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
							"keyId": 16,
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
		}';

		var keeb = haxe.Json.parse(keyboardString1);

		// The first palette:
		var paletteString1 = '{
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
		var paletteString2 ='{
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
		var assortment = haxe.Json.parse(paletteString1);
		trace ("assortment:"+assortment+"");
		trace ("\n");

		//The 2nd palette:
		var assortment2 = haxe.Json.parse(paletteString2);
		trace ("assortment:"+assortment2+"");
		trace ("\n");

//		var keeb:Keyson = haxe.Json.parse(keyboardString1);
		var parser = new json2object.JsonParser<Keyson>();
		var keeb:Keyson = parser.fromJson(keyboardString1);

		trace ("keeb name>>> "+keeb.name);
		trace ("keeb author>>> "+keeb.author);
		trace ("keeb colorTable name>>> "+keeb.board[0].keys[keeb.board[0].keys.length-1].keyId);
		var newKnob = new Keyson.Key(17,"1U",[0,0],new Keyson.KeyLabel("tralalala"));
		keeb.board[0].keys.push( newKnob );
		trace ("\n");
		trace ("keeb colorTable name>>> "+keeb.board[0].keys[keeb.board[0].keys.length-1].keyId);
		keeb.board[0].addKey("1U",[12,12],"Test");
		trace ("\n");
		trace ("keeb colorTable name>>> "+keeb.board[0].keys[keeb.board[0].keys.length-1].keyId);
}
}

