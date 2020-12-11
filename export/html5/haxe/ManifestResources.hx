package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_opensans_regular_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy34:assets%2Fdata%2Fdata-goes-here.txty4:sizezy4:typey4:TEXTy2:idR1y7:preloadtgoR0y31:assets%2Fdata%2FlevelAssets.tsxR2i415R3R4R5R7R6tgoR0y28:assets%2Fdata%2FlevelOne.tmxR2i1595R3R4R5R8R6tgoR0y30:assets%2Fdata%2FlevelThree.tmxR2i1635R3R4R5R9R6tgoR0y28:assets%2Fdata%2FlevelTwo.tmxR2i1462R3R4R5R10R6tgoR2i96932R3y4:FONTy9:classNamey42:__ASSET__assets_fonts_opensans_regular_ttfR5y37:assets%2Ffonts%2FOpenSans-Regular.ttfR6tgoR0y24:assets%2Fimages%2FBG.pngR2i81247R3y5:IMAGER5R15R6tgoR0y27:assets%2Fimages%2Fcandy.pngR2i3427R3R16R5R17R6tgoR0y32:assets%2Fimages%2Fhero_runs.jsonR2i3168R3R4R5R18R6tgoR0y31:assets%2Fimages%2Fhero_runs.pngR2i31932R3R16R5R19R6tgoR0y36:assets%2Fimages%2Fimages-go-here.txtR2zR3R4R5R20R6tgoR0y30:assets%2Fimages%2FIntroArt.gifR2i17255282R3R16R5R21R6tgoR0y30:assets%2Fimages%2Fplatform.pngR2i26296R3R16R5R22R6tgoR0y36:assets%2Fimages%2FStaticIntroArt.pngR2i164951R3R16R5R23R6tgoR0y36:assets%2Fmusic%2Fmusic-goes-here.txtR2zR3R4R5R24R6tgoR2i1979826R3y5:MUSICR5y26:assets%2Fmusic%2Fmusic.oggy9:pathGroupaR26hR6tgoR2i23978R3y5:SOUNDR5y26:assets%2Fsounds%2Fcoin.wavR27aR29hR6tgoR2i54320R3R28R5y26:assets%2Fsounds%2Fjump.wavR27aR30hR6tgoR0y36:assets%2Fsounds%2Fsounds-go-here.txtR2zR3R4R5R31R6tgoR2i2114R3R25R5y26:flixel%2Fsounds%2Fbeep.mp3R27aR32y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R25R5y28:flixel%2Fsounds%2Fflixel.mp3R27aR34y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3R28R5R33R27aR32R33hgoR2i33629R3R28R5R35R27aR34R35hgoR2i15744R3R11R12y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R11R12y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R16R5R40R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R16R5R41R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_levelassets_tsx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_levelone_tmx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_levelthree_tmx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_leveltwo_tmx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_opensans_regular_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_candy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hero_runs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hero_runs_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_introart_gif extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_platform_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_staticintroart_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_coin_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_jump_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/levelAssets.tsx") @:noCompletion #if display private #end class __ASSET__assets_data_levelassets_tsx extends haxe.io.Bytes {}
@:keep @:file("assets/data/levelOne.tmx") @:noCompletion #if display private #end class __ASSET__assets_data_levelone_tmx extends haxe.io.Bytes {}
@:keep @:file("assets/data/levelThree.tmx") @:noCompletion #if display private #end class __ASSET__assets_data_levelthree_tmx extends haxe.io.Bytes {}
@:keep @:file("assets/data/levelTwo.tmx") @:noCompletion #if display private #end class __ASSET__assets_data_leveltwo_tmx extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/OpenSans-Regular.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_opensans_regular_ttf extends lime.text.Font {}
@:keep @:image("assets/images/BG.png") @:noCompletion #if display private #end class __ASSET__assets_images_bg_png extends lime.graphics.Image {}
@:keep @:image("assets/images/candy.png") @:noCompletion #if display private #end class __ASSET__assets_images_candy_png extends lime.graphics.Image {}
@:keep @:file("assets/images/hero_runs.json") @:noCompletion #if display private #end class __ASSET__assets_images_hero_runs_json extends haxe.io.Bytes {}
@:keep @:image("assets/images/hero_runs.png") @:noCompletion #if display private #end class __ASSET__assets_images_hero_runs_png extends lime.graphics.Image {}
@:keep @:file("assets/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/IntroArt.gif") @:noCompletion #if display private #end class __ASSET__assets_images_introart_gif extends lime.graphics.Image {}
@:keep @:image("assets/images/platform.png") @:noCompletion #if display private #end class __ASSET__assets_images_platform_png extends lime.graphics.Image {}
@:keep @:image("assets/images/StaticIntroArt.png") @:noCompletion #if display private #end class __ASSET__assets_images_staticintroart_png extends lime.graphics.Image {}
@:keep @:file("assets/music/music-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/music/music.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_music_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/coin.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_coin_wav extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/jump.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_jump_wav extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,8,1/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_opensans_regular_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_opensans_regular_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/OpenSans-Regular"; #else ascender = 2189; descender = -600; height = 2789; numGlyphs = 938; underlinePosition = -205; underlineThickness = 102; unitsPerEM = 2048; #end name = "Open Sans Regular"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_opensans_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_opensans_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_opensans_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_opensans_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_opensans_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_opensans_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
