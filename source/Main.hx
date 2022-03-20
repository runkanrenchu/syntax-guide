package;

import openfl.Lib;
import openfl.display.Sprite;

class Main extends Sprite
{
	static public function main()
	{
		Lib.current.addChild(new Test(true, true));
	}
}
