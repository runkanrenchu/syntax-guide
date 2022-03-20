package;

import flixel.FlxSprite; // imports are typed below the "package;" line, and are required to use the classes they offer.

/*
	class names always start with an uppercase letter, no spaces, no semicolons. 
	class names must have the same name as the module (.hx file) they are in.
	they can `extend` or `implement` other classes/interfaces.
 */
class Test
{
	/*
		if we are extending a class, we `override` its main function (`new()`, or `create()` in the case of a FlxState). 
		in this case we aren't extending any classes. so we just declare its new() function as we'd do with any other.
	 */
	var mySprite:FlxSprite; // DECLARATION: variables that need to be accessed from throughout the WHOLE class have to be defined inside the class bracket, but outside of any functions.

	/* IMPORTANT NOTE: **DECLARATION** is different from **INSTANTIATION**. 
		Declaring a variable is assigning it a name and a type, but it is `null` until it's instantiated!!
	 */
	public function new(isCool:Bool = false, ?isAwesome:Bool = false)
		/* new() is the function that you call in order to create a new instance of this class. 
			it can have any number of arguments, and if we were extending a class, we'd have to call super() on it
			(`super()` takes part on class inheritance. for reference: https://haxe.org/manual/types-class-inheritance.html) 
		 */
	{
		// we use the "this" keyword to refer to fields of `this` class.

		if (isCool)
			trace("cool!"); // we can access the arguments that we passed in, and perform different actions.

		/*
			the `?` right before the isAwesome argument denotes that it is OPTIONAL. therefore it can be passed in or not.
			if it isn't passed in, however, it returns false by default. 
		 */
		if (isAwesome)
			trace("awesome!"); // note how the lines of code that end in a closing parentheses and are not part of a function declaration end with a semicolon.
		mySprite = new FlxSprite();
	}
}
