import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.editors.tiled.TiledMap;
import flixel.addons.editors.tiled.TiledObjectLayer;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxGroup;
import flixel.system.FlxSound;
import flixel.util.FlxCollision;

class LevelState extends FlxState
{
	var levelBounds:FlxGroup;
	var player:Player;
	var platformsGrp:FlxTypedGroup<FlxSprite>;
	var candyGrp:FlxTypedGroup<FlxSprite>;
	var hud:Hud;
	var totalCandy = 0;
	var nextLevel:Class<LevelState>;
	var collectSnd:FlxSound;

	override public function create()
	{
		var background:FlxSprite = new FlxSprite(0, 0);
		background.loadGraphic("assets/images/BG.png");
		add(background);
		collectSnd = FlxG.sound.load("assets/sounds/coin.wav");
		FlxG.autoPause = false;
		#if !debug
		FlxG.mouse.visible = false;
		#end

		if (FlxG.sound.music == null)
		{
			FlxG.sound.playMusic("assets/music/music.ogg");
		}
	}

	function createLevel(levelName:String, playerPos:{x:Int, y:Int})
	{
		final map = new TiledMap('assets/data/$levelName.tmx');

		createPlatforms(map);
		createDrops(map);

		player = new Player(playerPos.x, playerPos.y);
		add(player);

		levelBounds = FlxCollision.createCameraWall(FlxG.camera, true, 1);

		hud = new Hud();
		add(hud);
	}

	/**
	 * Method to create platforms
	 *
	 * @param map
	 */
	function createPlatforms(map:TiledMap)
	{
		final platformsLayer:TiledObjectLayer = cast(map.getLayer("platforms"));
		platformsGrp = new FlxTypedGroup<FlxSprite>();

		for (platform in platformsLayer.objects)
		{
			final platfromSprt = new FlxSprite(platform.x, (platform.y));
			platfromSprt.loadGraphic("assets/images/platform.png", false, 400, 32);
			platfromSprt.immovable = true;
			platformsGrp.add(platfromSprt);
		}

		add(platformsGrp);
	}

	function createDrops(map:TiledMap)
	{
		final candyLayer:TiledObjectLayer = cast(map.getLayer("candy"));
		candyGrp = new FlxTypedGroup<FlxSprite>();

		totalCandy = candyLayer.objects.length;

		for (candy in candyLayer.objects)
		{
			final candySprt = new FlxSprite(candy.x, (candy.y - candy.height));
			candySprt.loadGraphic("assets/images/candy.png", false, 24, 22);
			candyGrp.add(candySprt);
		}

		add(candyGrp);
	}

	function collectDrop(_, candy:FlxSprite)
	{
		candy.kill();
		hud.incrementScore();
		collectSnd.play(true);
		if (hud.score == 7)
		{
			final levelComplete = new LevelComplete(nextLevel);
			openSubState(levelComplete);
		}
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		FlxG.collide(player, levelBounds);
		FlxG.collide(player, platformsGrp);
		FlxG.overlap(player, candyGrp, collectDrop);

		/* 'Pause' and open substate pauseMenu instead of closing current state */
		if (FlxG.keys.justPressed.ESCAPE)
		{
			final pauseMenu = new PauseMenu();
			openSubState(pauseMenu);
		}
	}
}
