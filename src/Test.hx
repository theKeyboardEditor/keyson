package;

class Test {
	public static function main() {
		trace (">>>We Are Testing...");
		var keeb = new Keyson();

		trace ("__keebName:'"+keeb.name+"'");

		var assortment = new Keyson.Palette();
		assortment.name= "Kids Crayons 16";
		assortment.url = "https://some.site.org";
		assortment.colorMatchingProfile = "generic";
		assortment.squashes = [];

		assortment.squashes.push(new Keyson.Color("black"  , 0x000000));
		assortment.squashes.push(new Keyson.Color("white"  , 0xffffff));
		assortment.squashes.push(new Keyson.Color("red"    , 0xff0000));
		assortment.squashes.push(new Keyson.Color("lime"   , 0x00ff00));
		assortment.squashes.push(new Keyson.Color("blue"   , 0x0000ff));
		assortment.squashes.push(new Keyson.Color("yellow" , 0xffff00));
		assortment.squashes.push(new Keyson.Color("cyan"   , 0x00ffff));
		assortment.squashes.push(new Keyson.Color("magenta", 0xff00ff));
		assortment.squashes.push(new Keyson.Color("silver" , 0x808080));
		assortment.squashes.push(new Keyson.Color("gray"   , 0x404040));
		assortment.squashes.push(new Keyson.Color("maroon" , 0x800000));
		assortment.squashes.push(new Keyson.Color("olive"  , 0x808000));
		assortment.squashes.push(new Keyson.Color("green"  , 0x008000));
		assortment.squashes.push(new Keyson.Color("purple" , 0x800080));
		assortment.squashes.push(new Keyson.Color("teal"   , 0x008080));
		assortment.squashes.push(new Keyson.Color("navy"   , 0x000080));
		assortment.size = assortment.squashes.length;

		trace ("__assortment size:'"+assortment.size+"'");
		trace ("__assortment element 5:'"+assortment.squashes[5].color+"'/0x"+StringTools.hex(assortment.squashes[5].value)+"'");


		var assortment2 = new Keyson.Palette();
		assortment2.name= "Kids Crayons 16";
		assortment2.url = "https://some.site.org";
		assortment2.colorMatchingProfile = "generic";
		assortment2.squashes = [];

		assortment2.squashes.push(new Keyson.Color("black" , 0x1A1C2C));
		assortment2.squashes.push(new Keyson.Color("violet", 0x5D275D));
		assortment2.squashes.push(new Keyson.Color("red"   , 0xB13E53));
		assortment2.squashes.push(new Keyson.Color("orange", 0xEF7D57));
		assortment2.squashes.push(new Keyson.Color("yellow", 0xFFCD75));
		assortment2.squashes.push(new Keyson.Color("lime"  , 0xA7F070));
		assortment2.squashes.push(new Keyson.Color("green" , 0x38B764));
		assortment2.squashes.push(new Keyson.Color("teal"  , 0x257179));
		assortment2.squashes.push(new Keyson.Color("dblue" , 0x29366F));
		assortment2.squashes.push(new Keyson.Color("blue"  , 0x3B5DC9));
		assortment2.squashes.push(new Keyson.Color("sky"   , 0x41A6F6));
		assortment2.squashes.push(new Keyson.Color("cyan"  , 0x73EFF7));
		assortment2.squashes.push(new Keyson.Color("white" , 0xF4F4F4));
		assortment2.squashes.push(new Keyson.Color("lgray" , 0x94B0C2));
		assortment2.squashes.push(new Keyson.Color("gray"  , 0x566C86));
		assortment2.squashes.push(new Keyson.Color("dgray" , 0x333C57));
		assortment2.size = assortment2.squashes.length;

		trace ("__assortment2 size:'"+assortment2.size+"'");
		trace ("__assortment2 element 5:'"+assortment2.squashes[5].color+"'/0x"+StringTools.hex(assortment2.squashes[5].value)+"'");

	}
}
