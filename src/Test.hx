package;


class Test {
    public static function main() {
        trace (">>>We Are Testing...");
// define the receiving objects first:
        var keeb:Keyson;
        var object2:Keyson;
        var object3:Keyson;

/* a "Keyson" is a key board wrapper object: it defines the physical layout and the
 * metadata that makes a keyboard project:
 * Author,
 * Comments,
 * License,
 * Colors the author envisioned for the keyset ...
 *
 * ...things like that, and the particular keyboard layout of course
 */

//The keyboard variable object to be:
        var sample1 = '{
            "name": "Numpad",
            "author": "cest73",
            "license": "MIT",
            "comment": "A common numpad block layout",
            "colorTable": {
                "name": "Kids Crayons 16",
                "url": "https://some.site.org",
                "colorMatchingProfile": "generic",
                "size": 16,
                "squashes": [
                    {"color":"black"  , "value":"0xFF000000"},
                    {"color":"white"  , "value":"0xFFffffff"},
                    {"color":"red"    , "value":"0xFFff0000"},
                    {"color":"lime"   , "value":"0xFF00ff00"},
                    {"color":"blue"   , "value":"0xFF0000ff"},
                    {"color":"yellow" , "value":"0xFFffff00"},
                    {"color":"cyan"   , "value":"0xFF00ffff"},
                    {"color":"magenta", "value":"0xFFff00ff"},
                    {"color":"silver" , "value":"0xFF808080"},
                    {"color":"gray"   , "value":"0xFF404040"},
                    {"color":"maroon" , "value":"0xFF800000"},
                    {"color":"olive"  , "value":"0xFF808000"},
                    {"color":"green"  , "value":"0xFF008000"},
                    {"color":"purple" , "value":"0xFF800080"},
                    {"color":"teal"   , "value":"0xFF008080"},
                    {"color":"navy"   , "value":"0xFF000080"}
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

// The first palette:
        var sample2 = '{
            "name": "Palette",
            "author": "cest73",
            "license": "MIT",
            "comment": "A simple palette for basic sample testing",
            "colorTable": {
                "name":"Kids Crayons 16",
                "url": "https://some.site.org",
                "colorMatchingProfile": "generic",
                "size": 16,
                "squashes": [
                    {"color":"black"  , "value":"0xFF000000"},
                    {"color":"white"  , "value":"0xFFffffff"},
                    {"color":"red"    , "value":"0xFFff0000"},
                    {"color":"lime"   , "value":"0xFF00ff00"},
                    {"color":"blue"   , "value":"0xFF0000ff"},
                    {"color":"yellow" , "value":"0xFFffff00"},
                    {"color":"cyan"   , "value":"0xFF00ffff"},
                    {"color":"magenta", "value":"0xFFff00ff"},
                    {"color":"silver" , "value":"0xFF808080"},
                    {"color":"gray"   , "value":"0xFF404040"},
                    {"color":"maroon" , "value":"0xFF800000"},
                    {"color":"olive"  , "value":"0xFF808000"},
                    {"color":"green"  , "value":"0xFF008000"},
                    {"color":"purple" , "value":"0xFF800080"},
                    {"color":"teal"   , "value":"0xFF008080"},
                    {"color":"navy"   , "value":"0xFF000080"}
                    ]
                }
            }';

        var sample3 ='{
            "name": "Palette",
            "author": "GrafxKid",
            "license": "CC",
            "comment": "A special palette borrowed for basic sample testing",
            "colorTable": {
                "name": "Sweetie-16",
                "url": "http://grafxkid.tumblr.com/palettes",
                "colorMatchingProfile": "generic",
                "size": 16,
                "squashes": [
                    {"color":"black" , "value":"0xFF1A1C2C"},
                    {"color":"violet", "value":"0xFF5D275D"},
                    {"color":"red"   , "value":"0xFFB13E53"},
                    {"color":"orange", "value":"0xFFEF7D57"},
                    {"color":"yellow", "value":"0xFFFFCD75"},
                    {"color":"lime"  , "value":"0xFFA7F070"},
                    {"color":"green" , "value":"0xFF38B764"},
                    {"color":"teal"  , "value":"0xFF257179"},
                    {"color":"dblue" , "value":"0xFF29366F"},
                    {"color":"blue"  , "value":"0xFF3B5DC9"},
                    {"color":"sky"   , "value":"0xFF41A6F6"},
                    {"color":"cyan"  , "value":"0xFF73EFF7"},
                    {"color":"white" , "value":"0xFFF4F4F4"},
                    {"color":"lgray" , "value":"0xFF94B0C2"},
                    {"color":"gray"  , "value":"0xFF566C86"},
                    {"color":"dgray" , "value":"0xFF333C57"}
                    ]
                }
            }';


// parser a palette thru Keyson into a fully functional Keyson Object
        object2 = Keyson.parse(sample2);

        trace ("object name:"+object2.name+"");
        trace ("palette name:"+object2.colorTable.name+"");
        trace ("\n");

//The 2nd palette:
        object3 = Keyson.parse(sample3);

        trace ("object name:"+object3.name+"");
        trace ("palette name:"+object3.colorTable.name+"");

// parsing a entire keyboard project
        keeb = Keyson.parse(sample1);

        trace ("keeb name>>> "+keeb.name);
        trace ("keeb author>>> "+keeb.author+"\n");

// adding a key:
        //how many keys?
        trace ("\rkeeb colorTable length>>> "+keeb.board[0].keys[keeb.board[0].keys.length-1].keyId+"\n");

// make a new key and append it with haxe native method
//NOTE: .board[]. is an array of halves/numpads or orther devices split in more than one single case or unit
// each of them can have individual position and angle compared to the others
// this example is showcasing tweaking individual key properties on creation:
        var newKnob = new Keyson.Key(17, "1U", [0,0], new Keyson.KeyLabel("tralalala")); // ID, shape, position, label
        keeb.board[0].keys.push( newKnob );

        trace ("\rkeeb colorTable length>>> "+keeb.board[0].keys[keeb.board[0].keys.length-1].keyId+"\n");

//make a new key with Keyson native method
        keeb.board[0].addKey("1U",[12,12],"Test"); // shape, position, label

        trace ("\rkeeb colorTable length>>> "+keeb.board[0].keys[keeb.board[0].keys.length-1].keyId+"\n");

// we recover the keyboard into a string
        var outsample1 = Keyson.encode(keeb);
        trace ("Keyson: "+outsample1);
    }
}

