package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.system.FlxSound;
import flixel.system.macros.FlxAssetPaths;
import lime.utils.Assets;

class Player extends FlxSprite
{
	/* Used to set movement & jumping values */
	final SPEED:Int = 150;
	final GRAVITY:Int = 600;
	var jumpSnd:FlxSound;

	public function new(xPos:Int = 0, yPos:Int = 0)
	{
		/* Used to created and animate the hero */
		super(xPos, yPos);
		loadGraphic("assets/images/hero_runs.png", true, 32, 48);
		drag.x = SPEED * 4;

		animation.add("run", [9, 10, 11, 12, 13, 14], 12);
		animation.add("idle", [0], 1, false);

		setFacingFlip(FlxObject.LEFT, true, false); // look left
		setFacingFlip(FlxObject.RIGHT, false, false); // look right

		acceleration.y = GRAVITY; // Mimic gravity pulling hero back down

		jumpSnd = FlxG.sound.load("assets/sounds/jump.wav");
	}

	/* Used to implement movement mechanic using animation frames */
	function movement()
	{
		final left = FlxG.keys.anyPressed([LEFT, A]);
		final right = FlxG.keys.anyPressed([RIGHT, D]);

		if ((left || right) && !(left && right))
		{
			animation.play("run");
		}
		else
		{
			animation.play("idle");
		}
		if (left && right)
		{
			velocity.x = 0;
		}
		else if (left)
		{
			velocity.x = -SPEED;
			facing = FlxObject.LEFT;
		}
		else if (right)
		{
			velocity.x = SPEED;
			facing = FlxObject.RIGHT;
		}
	}

	/* Used to implement jumping mechanic, w/sound and movement */
	function jumping()
	{
		final jump = FlxG.keys.anyPressed([UP, SPACE, W]);
		if (jump && isTouching(FlxObject.FLOOR))
		{
			velocity.y = -GRAVITY / 1.2;
			jumpSnd.play(true);
		}
	}

	override function update(elapsed:Float)
	{
		jumping();
		super.update(elapsed);
		movement();
	}
}
