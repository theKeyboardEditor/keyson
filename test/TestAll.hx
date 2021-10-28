package;

class TestAll {
	public static function main() {
		trace("Starting Testing...");
		
		utest.UTest.run([
			new TestCase()
		]);
	}
}
