package;

class Test {
	public static function main() {
		trace (">>>We Are Testing...");
		//The keyboard variable object to be:
		var keeb = new Keyson();
		//The keyboard string to be written to a file on some URL:
		//It is an array of lines of the file
		var keebfile:Array<String> =[];

		trace ("__keebName:\""+keeb.name+"\"");

		// The first palette:
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

		trace ("__assortment size:\""+assortment.size+"\"");
		trace ("__assortment element 5:\""+assortment.squashes[5].color+"\"/0x"+StringTools.hex(assortment.squashes[5].value)+"\"");


		//The 2nd palette:
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

		trace ("__assortment2 size:\""+assortment2.size+"\"");
		trace ("__assortment2 element 5:\""+assortment2.squashes[5].color+"\"/0x"+StringTools.hex(assortment2.squashes[5].value)+"\"");

		//We define a simple (and single) keyboard unit here
		var single = new Keyson.Unit();
			single.unitID = 0; //        unique unit ID
			single.designator = "Singular"; // "Master", "Slave", "Numpad" ...
			single.position = [0,0]; // placement of the unit
			single.angle = 0; //     rotation around the anchor point
			single.size = 4; //          number of keys/elements
			single.keys = [];

		single.keys.push(new Keyson.Key(0,"1U",[0,0],new Keyson.KeyLabel("1")));
		single.keys.push(new Keyson.Key(1,"1U",[1,0],new Keyson.KeyLabel("2")));
		single.keys.push(new Keyson.Key(2,"1U",[0,1],new Keyson.KeyLabel("3")));
		single.keys.push(new Keyson.Key(3,"1U",[1,1],new Keyson.KeyLabel("4")));

		//TODO make actual keyboard device here
		var pad = new Keyson.Keyboard();
		pad.keyStep = [19.05,19.05];
		pad.stabilizerType = "Cherry";
		pad.switchType = "Cherry MX";
		pad.capSize = [18.75,18.75];
		pad.unitMeasure = "mm";
		pad.caseColor = "gray";
		pad.keysColor = "gray";
		pad.labelFont = "Sans";
		pad.sublabelFont = "Sans";
		pad.labelFontSize = 11;
		pad.sublabelFontSize = 7;
		pad.labelColor = "black";
		pad.labelPosition = [0.0,0.0];
		pad.sublabelColor = "black";
		pad.profile = "Cherry";
		pad.keySculpt = "R3";
		pad.amountOfUnits = 1;
		pad.units = [];

		pad.units.push(single);
		trace ("__pad keys amount:\""+pad.units[0].keys.length+"\"");

		//TODO assign it one pallete
		//TODO switch to the other palette

		//Assemble the whole keyboard:
		keeb.name = "Numpad";
		keeb.author="The Core Team";
		keeb.license="CC";
		keeb.comment="This is a test";
		keeb.colorTable=assortment;
		keeb.board =pad;
		/**
		 *
		 * Writting the keyson into an string array
		 *
		 **/
		keebfile = [];
		keebfile.push("{");

		keebfile.push("\"Name\": \""+keeb.name+"\"");
		keebfile.push("\"Author\": \""+keeb.author+"\"");
		keebfile.push("\"License\": \""+keeb.license+"\"");
		keebfile.push("\"Comment\": \""+keeb.comment+"\"");
		keebfile.push("\"Palette\": {");
			//descend into colorTable:
			keebfile.push("\"Name\": \""+keeb.colorTable.name+"\"");

			keebfile.push("\"URL\": \""+keeb.colorTable.url+"\"");
			keebfile.push("\"Color Matching Profile\": \""+keeb.colorTable.colorMatchingProfile+"\"");
			keebfile.push("\"Size\": "+Std.string(keeb.colorTable.squashes.length)+"");
			keebfile.push("\"Colors\": [");
			for( s in keeb.colorTable.squashes) {
				keebfile.push("{\""+StringTools.rpad(s.color+"\":", " ", 12)+" 0x"+StringTools.hex(s.value, 6 )+"}");
				trace (">>>squash: \""+StringTools.rpad(s.color+"\":", " ", 12)+" 0x"+StringTools.hex(s.value, 6 ));
			};
			keebfile.push("]");
		keebfile.push("}");
		keebfile.push("\"Keyboard\": {");
		//Descend into keyboard details:
			keebfile.push("\"1U Key Step\": "+Std.string(keeb.board.keyStep));
			keebfile.push("\"Stabilizer type\": "+keeb.board.stabilizerType+"\"");
			keebfile.push("\"Switch type\": "+keeb.board.switchType+"\"");
			keebfile.push("\"Cap Size\":"+Std.string(keeb.board.capSize));
			keebfile.push("\"Units\": \""+keeb.board.unitMeasure+"\"");
			keebfile.push("\"Case Color\": \""+keeb.board.caseColor+"\"");
			keebfile.push("\"Keys Color\": \""+keeb.board.keysColor+"\"");
			keebfile.push("\"Font\": \""+keeb.board.labelFont+"\"");
			keebfile.push("\"Sublabel Font\": \""+keeb.board.sublabelFont+"\"");
			keebfile.push("\"Label Size\": "+Std.string(keeb.board.labelFontSize));
			keebfile.push("\"Sublabel Size\": "+Std.string(keeb.board.sublabelFontSize));
			keebfile.push("\"Label Color\": \""+keeb.board.labelColor+"\"");
			keebfile.push("\"Label Position\": "+Std.string(keeb.board.labelPosition));
			keebfile.push("\"Sublabel Color\": \""+keeb.board.sublabelColor+"\"");
			keebfile.push("\"Profile\": \""+keeb.board.profile+"\"");
			keebfile.push("\"Key Sculpt\": "+keeb.board.keySculpt+"\"");
			keebfile.push("\"Amount of Units\": "+Std.string(keeb.board.units.length)+"\"");
			keebfile.push("\"Unit\": [ {");
			//Descend into Unit details:
			for ( u in keeb.board.units) {
				keebfile.push("\"Unit ID\": "+Std.string(u.unitID));
				keebfile.push("\"Designator\": \""+u.designator+"\"");
				keebfile.push("\"Position\": "+Std.string(u.position));
				keebfile.push("\"Angle\": "+Std.string(u.angle));
				keebfile.push("\"Size\": "+Std.string(u.keys.length));
				keebfile.push("\"Keys\": [");
				//Descend into Key details
				for ( k in u.keys) {
					keebfile.push("{");
					keebfile.push("\"Key ID\": "+Std.string(k.keyID));
					keebfile.push("\"Position\": \""+Std.string(k.position));
					keebfile.push("\"Stabilizer\": \""+k.stabilizer+"\"");
					keebfile.push("\"Angle\": \""+Std.string(k.angle));
					keebfile.push("\"Shape\": \""+k.shape+"\"");
					keebfile.push("\"Label Font\": \""+k.labelFont+"\"");
					keebfile.push("\"Relative Rotation Center\": \""+Std.string(k.relativeRotationCenter));
					keebfile.push("\"Features\": \""+k.features+"\"");
					keebfile.push("\"Stepped Top\": \""+Std.string(k.steppedTop));
					keebfile.push("\"Homing Features\": \""+k.homingFeature+"\"");
					keebfile.push("\"Key Color\": \""+k.keysColor+"\"");
					keebfile.push("\"Label\": {");
					// Label has substructure too:
					keebfile.push("\"Key Color\": \""+k.label.keysColor+"\"");
					keebfile.push("\"Label Font\": \""+k.label.labelFont+"\"");
					keebfile.push("\"Font Size\": "+Std.string(k.label.labelFontSize));
					keebfile.push("\"Color\": \""+k.label.labelColor+"\"");
					keebfile.push("\"Position\": "+Std.string(k.label.labelPosition));
					keebfile.push("\"Profile\": \""+k.label.profile+"\"");
					keebfile.push("\"Key Sculpt\": \""+k.label.keySculpt+"\"");
					keebfile.push("\"Glyph\": \""+k.label.glyph+"\"");
					keebfile.push("}");
					keebfile.push("\"Sublabels\": {");
					// TODO reconsider sublabel to be more generic or somewhat
					keebfile.push("\"Font\": \""+k.sublabels.sublabelFont+"\"");
					keebfile.push("\"Font Size\": "+Std.string(k.sublabels.sublabelFontSize));
					keebfile.push("\"Color\": \""+k.sublabels.sublabelColor+"\"");
					keebfile.push("\"Positions\": \""+k.sublabels.positions+"\""); // the 9 positions on a key
					keebfile.push("}");
					keebfile.push("}");
				};
			};
			keebfile.push("]");
			keebfile.push("}");
		keebfile.push("]");
		keebfile.push("}");

		keebfile.push("}");
		//Read in the keeb
		/**
		 *
		 * Read the keyson from the string array
		 *
		 **/
		trace (">>>file:"+keebfile);
		// very basic integrity check for braces:
		var cbraces:Int = 0;
		var sbraces:Int = 0;
		var linecount:Int = 0;
		var keebfileLinecntr:Int;
		for ( i in keebfile) {
			//trace ("I: ["+i+"]");
			linecount = linecount + 1;
			if ( i.indexOf("{") >= 0 ) { // accoun for braces
				cbraces = cbraces + 1;
			};
			if ( i.indexOf("}") >= 0 ) {// accoun for braces
				cbraces = cbraces - 1;
			};
			if ( i.indexOf("[") >= 0 ) { // accoun for braces
				sbraces = sbraces + 1;
			};
			if ( i.indexOf("]") >= 0 ) {// accoun for braces
				sbraces = sbraces - 1;
			};
			if ( i.indexOf(":") > -1 )
			trace("Member: <"+i.split(":")[0]+">/<"+i.split(":")[1]+">");
			// checking content:

		};
		keeb =  new Keyson(); // we just cleared keeb; it's dead Jim...
		var palettesize = 0;
		if ( keebfile[1].split(":")[0] == "\"Name\"" ) {
			keeb.name = keebfile[1].split(":")[1];
		} else {
			trace ("Keyson project name missing on line 1!");
		}
		if ( keebfile[2].split(":")[0] == "\"Author\"" ) {
			keeb.author = keebfile[2].split(":")[1];
		} else {
			trace ("Keyson author name entry missing on line 2!");
		}
		if ( keebfile[3].split(":")[0] == "\"License\"" ) {
			keeb.license = keebfile[3].split(":")[1];
		} else {
			trace ("Keyson license entry missing on line 3!");
		}
		if ( keebfile[4].split(":")[0] == "\"Comment\"" ) {
			keeb.comment = keebfile[4].split(":")[1];
		} else {
			trace ("Keyson comment entry missing on line 4!");
		}
		if ( keebfile[5].split(":")[0] == "\"Palette\"" ) {
			trace ("Palette found.");
		} else {
			trace ("Keyson Palette entry missing on line 5!");
		}
		if ( keebfile[6].split(":")[0] == "\"Name\"" ) {
			keeb.colorTable.name = keebfile[6].split(":")[1];
		} else {
			trace ("Keyson Palette name entry missing on line 6!");
		}
		if ( keebfile[7].split(":")[0] == "\"URL\"" ) {
			keeb.colorTable.url = keebfile[7].split(":")[1];
		} else {
			trace ("Keyson Palette URL entry missing on line 7!");
		}
		if ( keebfile[8].split(":")[0] == "\"Color Matching Profile\"" ) {
			keeb.colorTable.colorMatchingProfile = keebfile[8].split(":")[1];
		} else {
			trace ("Keyson Palette color matching profile entry missing on line 8!");
		}
		if ( keebfile[9].split(":")[0] == "\"Size\"" ) {
			palettesize = Std.parseInt(keebfile[9].split(":")[1]);
		} else {
			trace ("Keyson Palette size entry missing on line 9!"+keebfile[9].split(":")[1]);
		}
		if ( keebfile[10].split(":")[0] == "\"Colors\"" ) {
			trace ("Colors header found on line 10!");
		} else {
			trace ("Keyson Palette Colors array header missing on line 9!");
		}
		// TODO loop the lines until found the matching [}] of [Palette: {]
		keebfileLinecntr = 11; // line starts at line 6
		while (keebfile[keebfileLinecntr] != "]") { // seeking the single closed square brace
			keebfileLinecntr = keebfileLinecntr + 1;
			//TODO read in the palette line by line
		};
		// since now on we can't herdcode the line number
		if ( keebfile[keebfileLinecntr] == "]" ) {
			trace ("Colors footer found!");
		} else {
			trace ("Keyson Palette Colors array footer missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		trace ("Colors read: "+Std.string(keebfileLinecntr-11)+" of "+Std.string(palettesize));
		keebfileLinecntr = keebfileLinecntr + 1;
		if ( keebfile[keebfileLinecntr] == "}" ) {
			trace ("Palette footer found.");
			keebfileLinecntr = keebfileLinecntr + 1; // we only ever advance if found!
		} else {
			trace ("Keyson Palette footer missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Keyboard\"" ) {
			trace ("Keyboard found at line: "+Std.string(keebfileLinecntr));
			keebfileLinecntr = keebfileLinecntr + 1; // we only ever advance if found!
		} else {
			trace ("Keyson Keyboard entry missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"1U Key Step\"" ) {
			// TODO: make this simpler to digest
			keeb.board.keyStep =[ for (a in keebfile[keebfileLinecntr].split(":")[1].substring(keebfile[keebfileLinecntr].split(":")[1].indexOf("[")+1,keebfile[keebfileLinecntr].split(":")[1].indexOf("]")).split(",")) Std.parseFloat(a)];
			trace ( "Array:"+Std.string(keeb.board.keyStep) );
			keebfileLinecntr = keebfileLinecntr + 1; // we only ever advance if found!
		} else {
			trace ("Keyson Keyboard header missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Stabilizer type\"" ) {
			keeb.board.stabilizerType = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1; // we only ever advance if found, remember?
		} else {
			trace ("Keyson Stabilizer type missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Switch type\"" ) {
			keeb.board.switchType = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Switch type missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Cap Size\"" ) {
			// TODO: make this simpler to digest
			keeb.board.capSize = [ for (a in keebfile[keebfileLinecntr].split(":")[1].substring(keebfile[keebfileLinecntr].split(":")[1].indexOf("[")+1,keebfile[keebfileLinecntr].split(":")[1].indexOf("]")).split(",")) Std.parseFloat(a)];
			trace ( "Array:"+Std.string(keeb.board.capSize) );
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Cap Size missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Units\"" ) {
			keeb.board.unitMeasure = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Units missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Case Color\"" ) {
			keeb.board.caseColor = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Case Color missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Keys Color\"" ) {
			keeb.board.keysColor = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Keys Color missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Font\"" ) {
			keeb.board.labelFont = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Font missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Sublabel Font\"" ) {
			keeb.board.sublabelFont = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Sublabel Font missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Label Size\"" ) {
			keeb.board.labelFontSize = Std.parseInt(keebfile[keebfileLinecntr].split(":")[1]);
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Label Size missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Sublabel Size\"" ) {
			keeb.board.sublabelFontSize = Std.parseInt(keebfile[keebfileLinecntr].split(":")[1]);
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Sublabel Size missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Label Color\"" ) {
			keeb.board.labelColor = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Label Color missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Label Position\"" ) {
			// TODO: make this simpler to digest
			keeb.board.labelPosition = [ for (a in keebfile[keebfileLinecntr].split(":")[1].substring(keebfile[keebfileLinecntr].split(":")[1].indexOf("[")+1,keebfile[keebfileLinecntr].split(":")[1].indexOf("]")).split(",")) Std.parseFloat(a)];
			trace ( "Array:"+Std.string(keeb.board.labelPosition) );
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Label Position missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Sublabel Color\"" ) {
			keeb.board.sublabelColor = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Sublabel Color missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Profile\"" ) {
			keeb.board.profile = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Profile missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Key Sculpt\"" ) {
			keeb.board.keySculpt = keebfile[keebfileLinecntr].split(":")[1];
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Key Sculpt missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Amount of Units\"" ) {
			keeb.board.amountOfUnits = Std.parseInt(keebfile[keebfileLinecntr].split(":")[1]);
			keebfileLinecntr = keebfileLinecntr + 1;
		} else {
			trace ("Keyson Amount of Units missing on line "+Std.string(keebfileLinecntr)+"!");
		}
		if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Unit\"" ) {
			// advance the counter to evaluate next line:
			keebfileLinecntr = keebfileLinecntr + 1;
			trace ("Keyson Unit found on line "+Std.string(keebfileLinecntr)+"!");
			//we're to loop until we find the matching "]" line:
			while (keebfile[keebfileLinecntr] != "]") { // seeking the single closed square brace
				keebfileLinecntr = keebfileLinecntr + 1;
				//TODO read in the units line by line
				if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Unit ID\"" ) {
				}
				if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Designator\"" ) {
				}
				if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Position\"" ) {
				}
				if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Angle\"" ) {
				}
				if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Size\"" ) {
				}
				if ( keebfile[keebfileLinecntr].split(":")[0] == "\"Keys\"" ) {
					// advance the counter to evaluate next line:
					keebfileLinecntr = keebfileLinecntr + 1;
					trace ("Keyson Key found on line "+Std.string(keebfileLinecntr)+"!");
					//we're to loop until we find the matching "]" line:
					while (keebfile[keebfileLinecntr] != "]") { // seeking the single closed square brace
						keebfileLinecntr = keebfileLinecntr + 1;
						//TODO read in the keys line by line
					}
					if ( keebfile[keebfileLinecntr] == "]" )
						trace ("Key footer found on line "+Std.string(keebfileLinecntr)+"!");
				}
			}
			keebfileLinecntr = keebfileLinecntr + 1;
			// IDK what element ends here :^(
			keebfileLinecntr = keebfileLinecntr + 1;
			if ( keebfile[keebfileLinecntr] == "]" )
				trace ("Unit footer found on line "+Std.string(keebfileLinecntr)+"!");
		} else {
			trace ("Keyson Unit missing on line "+Std.string(keebfileLinecntr)+"!");
		}

		trace ("Lines read: "+Std.string(linecount));
		if ( sbraces != 0 )
			trace (">>>A square brace ([/]) is off, the file might be corrupt: "+Std.string(sbraces));
		if ( cbraces != 0 )
			trace (">>>A curly brace ({/}) is off, the file might be corrupt: "+Std.string(cbraces));
	}
}
	function readfile(dest:String) {
		//TODO open said file and return it as an array of lines
		return; // content:Array<String>;
	}

