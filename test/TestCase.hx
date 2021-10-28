package;

import keyson.Keyson;
import utest.Assert;

class TestCase extends utest.Test {
	var keyboard:String = "";
	var palette1:String = "";
	var palette2:String = "";

	public function setupClass() {
		keyboard = sys.io.File.getContent("tests/keyboard.json");
		palette1 = sys.io.File.getContent("tests/kidsCrayonsPallette.json");
		palette2 = sys.io.File.getContent("tests/sweetie16Palette.json");
	}

	function testMetadataParsing() {
		var keeb = Keyson.parse(keyboard);

		Assert.equals("Numpad", keeb.name);
		Assert.equals("cest73", keeb.author);
	}

	function testKeyAdding() {
		var keeb = Keyson.parse(keyboard);

		keeb.board[0].addKey("1U", [12,12], "Test");

		// Check if there is eighteen keys after we added one
		Assert.equals(18, keeb.board[0].keys.length);
	}

	function testKeyboardFromScratch() {
		var keeb = new Keyson();

		keeb.name = "TestKeyboard";
		
		keeb.board[0].addKey("1U", [0, 0], "Esc");
		keeb.board[0].addKey("1U", [1, 0], "1");
		keeb.board[0].addKey("1U", [2, 0], "2");
		keeb.board[0].addKey("1U", [3, 0], "3");
		keeb.board[0].addKey("1U", [4, 0], "4");
		keeb.board[0].addKey("2U", [5, 0], "Backspace");

		// Check if it contains all 6 keys
		Assert.equals(6, keeb.board[0].keys.length-1);
		Assert.equals("TestKeyboard", keeb.name);

		trace(Keyson.encode(keeb));
	}
}
