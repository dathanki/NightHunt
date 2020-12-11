package;

/* Used to create LevelThree using LevelState and LevelThree.tmx */
class LevelThree extends LevelState
{
	override public function create()
	{
		super.create();
		createLevel("levelThree", {x: 575, y: 15});
	}
}
