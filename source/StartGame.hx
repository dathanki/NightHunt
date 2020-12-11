package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.addons.ui.FlxButtonPlus;
import flixel.util.FlxColor;

class StartGame extends FlxState
{
	var playButton:FlxButtonPlus;

	override public function create()
	{
		super.create();

		var playText = new flixel.text.FlxText(500, 25, 0, "Let's Go!", 48);
		add(playText);

		var text = new flixel.text.FlxText(0, 150, 0, "
		The Spooky SZN is here and with it comes the dentist! 
		Let's help Jacko the Pumpkin head to defeat the dentist 
		and make it in time for the Spooky szn costume party!", 34);
		text.screenCenter(X);
		add(text);

		var pText = new flixel.text.FlxText(325, 550, 0, "Collect the Candy to defeat him!", 34);
		add(pText);

		playButton = new FlxButtonPlus(0, 0, clickPlay, "Play", 225, 25);
		playButton.x = (FlxG.width / 4) + (FlxG.width / 8) + 20;
		playButton.y = FlxG.height - playButton.height - 100;
		add(playButton);
	}

	function clickPlay()
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function()
		{
			FlxG.switchState(new LevelOne());
		});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
