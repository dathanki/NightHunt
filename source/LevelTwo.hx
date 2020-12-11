package;

/* Used to create LevelTwo using LevelState and LevelTwo.tmx */
class LevelTwo extends LevelState {
	override public function create() {
		super.create();
		nextLevel = LevelThree; // state there is a LevelThree
		createLevel("levelTwo", {x: 80, y: 672});
	}
}