package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class InitState extends FlxState
{
	var intro:FlxSprite;

	override public function create()
	{
		super.create();
		intro = new FlxSprite(0, 0);
		intro.loadGraphic("assets/images/StaticIntroArt.png");
		add(intro);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.justPressed.ANY)
		{
			FlxG.switchState(new StartGame());
		}
	}
}
