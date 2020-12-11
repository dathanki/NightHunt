import flixel.system.FlxBasePreloader;
import openfl.text.Font;
import openfl.text.TextField;
import openfl.text.TextFormat;

@:font("assets/fonts/OpenSans-Regular.ttf") class CustomFont extends Font {}

class Preloader extends FlxBasePreloader
{
	// public function new(MinDisplayTime:Float = 0) {
	// 	super(2);
	// }
	override public function create()
	{
		super.create();
		Font.registerFont(CustomFont);
		final text = new TextField();
		text.defaultTextFormat = new TextFormat("Open Sans", 24, 0xffffffff);
		text.embedFonts = true;
		text.text = "Loading...";
		text.width = 109;
		text.x = 1138;
		text.y = 668;
		addChild(text);
	}
}
