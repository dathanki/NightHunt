package;

/* Used to create LevelOne using LevelState and LevelOne.tmx */
class LevelOne extends LevelState
{
	override public function create()
	{
		super.create();
		nextLevel = LevelTwo; // need this for the LevelComplete
		createLevel("levelOne", {x: 25, y: 175});
	}
}
