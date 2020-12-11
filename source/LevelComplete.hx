import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;

class LevelComplete extends FlxSubState
{
	var _nextLevel:Class<LevelState>;

	public function new(nextLevel:Class<LevelState>)
	{
		super(0x55172c2f);
		_nextLevel = nextLevel; // Used to check if there is a next level
	}

	override public function create()
	{
		super.create();

		/* Text for next level and final level completion */
		final boundingBox = new FlxSprite();
		boundingBox.makeGraphic(500, 120, 0xD9383b3b);
		boundingBox.screenCenter(XY);
		add(boundingBox);

		final levelCompleteTxt = new FlxText(0, (boundingBox.y + 15), 0, "Level Complete!", 30);

		final subCompleteTxt = new FlxText(0, (boundingBox.y + 85), 0, "Press 'SPACE' to continue", 18);

		if (_nextLevel == null)
		{
			levelCompleteTxt.text = "You made it to the Costume Party!";
			subCompleteTxt.text = "Press 'SPACE' to start again.";
		}

		levelCompleteTxt.screenCenter(X);
		add(levelCompleteTxt);
		subCompleteTxt.screenCenter(X);
		add(subCompleteTxt);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		/* if nxtLevel is Null then go to StartMenu, else go to where nxtLevel is set to */
		if (FlxG.keys.justPressed.SPACE)
		{
			(_nextLevel == null) ? FlxG.switchState(new LevelOne()) : FlxG.switchState(Type.createInstance(_nextLevel, []));
			close();
		}
	}
}
