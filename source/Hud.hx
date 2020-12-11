import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.system.FlxAssets;
import flixel.text.FlxText;

class Hud extends FlxTypedGroup<FlxSprite> {
	var scoreText:FlxText;	// Used for textual printing of score

	public var score = 0;	// Used for keeping int score

	public function new() {
		super();
		/* Used for showing and updating the Score text (in-game screen) */
		FlxAssets.FONT_DEFAULT = "assets/fonts/OpenSans-Regular.ttf";
		scoreText = new FlxText(31, 32, 131, "Score: 0", 24);
		scoreText.scrollFactor.set(0, 0);
		add(scoreText);
	}

	public function incrementScore() {
		score++;
		scoreText.text = 'Score: $score';	// update the INT score 
	}
}