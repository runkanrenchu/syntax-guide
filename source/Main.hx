import openfl.display.Sprite; // imports are typed below the "package;" line, and are required to use the classes they offer.

/**
	class names always start with an uppercase letter, no spaces, no semicolons. 
	class names must have the same name as the module (.hx file) they are in.
	they can `extend` or `implement` other classes/interfaces.
**/
class Main extends Sprite
{
	static public function main()
	{
		new Main(true, false);
	}

	/**
		if we are extending a class, we `override` its main function (`new()`, or `create()` in the case of a FlxState). 
		in this case we are extending OpenFL's Sprite class, so we override its `new()` function.
				
		new() is the function that you call in order to create a new instance of this class. 
		it can have any number of arguments, and if we were extending a class, we'd have to call super() on it
		(`super()` takes part on class inheritance. for reference: https://haxe.org/manual/types-class-inheritance.html) 

	**/
	override public function new(isCool:Bool, ?isAwesome:Bool)
		/**
			the `?` right before the isAwesome argument denotes that it is OPTIONAL. therefore it can be passed in or not.
			if it isn't passed in, however, it returns false by default. 

			TRIVIA: default values: just like we can assign a name to the arguments, we can also assign them
			a default value, which will be used in case the argument is null.
		**/
	{
		super();

		#if sys
		if (isCool)
			Sys.command("echo cool!"); // we can access the arguments that we passed in, and perform different actions on them.
		if (isAwesome) // notice how the parentheses on if statements do NOT end with semicolons.
			Sys.command("echo awesome!");
		else
		{ // if the code block inside the if statement is of more than one line, it has to be enclosed in brackets.
			Sys.command("echo not awesome");
			Sys.command("echo :(");
			Sys.command("pause");
		}
		#else
		throw("Non-sys target.");
		#end
	}
}
