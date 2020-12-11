import flixel.FlxG;
import flixel.FlxSubState;
import flixel.text.FlxText;

class PauseMenu extends FlxSubState
{
	public function new()
	{
		super(0x35FFFFFF);
	}

	override public function create()
	{
		super.create();

		/* Display text and pause the in-game music */
		final pauseTxt = new FlxText(0, 0, 0, "Game Paused!", 42);
		pauseTxt.screenCenter(XY);
		add(pauseTxt);

		FlxG.sound.music.pause();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.justPressed.ESCAPE)
		{
			FlxG.sound.music.play();
			close();
		}
	}
}
