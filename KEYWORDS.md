# Keywords and vocabulary.

Keywords are VERY important. So important that they have their own file! It's essential to understand them, specially since you'll use a lot of them, sometimes 
without even noticing. Here are brief explanations on how they work, very simplified for noobie use, and with links to their documentation pages for further explanation.

_These might not use the most accurate terms, but they're supposed to be "noob-friendly". Feel free to open a PR/DM me if you have something to add!_

----------

- `override`: We use this keyword whenever we declare a field that already exists in a parent class. So say the parent class has this method:

```haxe
function changeColor(sprite:Sprite)
{
  sprite.color = BLUE;
}
```
And in the new class, which extends the parent, I want the sprite to be blue instead of red. To do this, I `override` the function:

```haxe
override function changeColor(sprite:Sprite)
{
  sprite.color = RED;
}
```

You will see the `override` keyword a LOT, even in the most basic projects. Most projects with multiple modules will `extend` tons of classes, making `override` VERY useful!

**See: [override - Haxe](https://haxe.org/manual/class-field-override.html).**

----------

- `public`: By default, class fields are `private`, which means that they can only be accessed from within the class itself. Using the `public` keyword when declaring a field changes this behaviour, now making it available from anywhere.

```haxe
class MyClass
{
  public static var points:Float = 10; //can be accessed anywhere
  private var count:Int; //is private, can only be accessed from within `this` class.

  public function new() {}
}

class Main
{
  public function new() 
  {
    trace(MyClass.points); //OK
    trace(MyClass.count); //Error: cannot access private field count
  }
}
```

### Trivia:

- Access modifiers/overrides can go in any order, BUT they have to be **before** the `class`/`function`/`var` keywords.

```haxe
static public function myFunc() {} //OK
private var myVar:T //OK
static class public MyClass {} // Error
```

**See: [Access modifiers - Haxe](https://haxe.org/manual/class-field-access-modifier.html)**

----------

# Vocabulary

The vocabulary part is also very important. Here I help you understand some concepts that, while they aren't specific to your code, they are still helpful to understand.

- Module: We refer to files with the `.hx` extension as "modules".

- Library: Libraries/libs are "addons"/"extensions" (note the quotation marks) that we can integrate with our Haxe projects, allowing us to add new features and expand the functionalities it has.

- [Haxelib](https://lib.haxe.org/): Haxelib is the home of all libraries you can integrate with Haxe! Haxe comes with the `haxelib` command, which will allow you to install and manage all of your libs from the command line. Libraries are also referred to as Haxelibs, since they are found in there. You can do `haxelib help` in your command prompt to get started.

- Debug: This isn't Haxe-specific, but it's a word used generally in the programming community: "debugging" is the process on which a developer spots and removes (or tries to) the bugs found on their project. A "debug session" is a series of actions that are performed (usually with the help of an IDE) during the debugging process, such as inspecting the code, or using breakpoints.

- IDE: An IDE (integrated development environment) integrates common features developers use into a GUI. Some examples are Visual Studio, IntelliJ IDEA, and Eclipse.

- Code Editor: While IDEs and Code editors might seem like the same thing, they are not. IDEs combine developing tools into a GUI and usually come with debugging features, but the codin' is made in a code editor, which has all the powerful features any text editor has, combined with syntax highlighting, completion, and
other useful features that make programming easier. Some popular editors are Visual Studio Code, Sublime Text, And Notepad++.

- [Constructor](https://haxe.org/manual/types-class-constructor.html): A constructor is the function (usually found as `new()`, `init()`, and `create()` in the case of a FlxState) that is used to create a new instance of a class. Essentially, when we do `new MyClass()`, we are calling `MyClass.new()`.

- [Explicit typing](https://haxe.org/manual/types.html): Whenever we are creating a new field, we assign it a name and then explicitly type its Type, this is known as "explicit typing": `var myPoint:Point = new Point();`. Type inference is not necessary in Haxe, however; Haxe's compiler is very smart, and can also handle `var myPoint = new Point();`, as it knows that myPoint is an instance of Point without extra typing.

- Anonymous functions: A function is defined as anonymous when it doesn't have a name. You'll be wondering, _hey, how do I create a function without a name? What would be the use case?_ Anon functions are usually used as arguments. For example, a FlxTween's onComplete function. You'll be less likely to need to call that function anywhere other than after the tween finishes, so why assign it a name? Here's some syntax.

```haxe
function myFunc(arg:T) {} //function
function(_:T):T {} //anon function
```

- Compilation vs Build: You'll see these are used interchangeably, but when it comes to specific terms; whenever we speak about "compilation", we mostly refer to _the process of turning source code into an object file_, a.k.a translating your code to something the target can understand. Whenever we say "build", we usually refer to the whole process of compiling, linking AND packaging the result into, say, an executable file.

### Instantiation and declaration.

Instantiation and declaration are two different parts of the process of creating a new field. I recommend reading through this whole section since I have seen a lot
of questions regarding the famous `null` errors!

- **Declaration** is the part where we assign the field a name and a type. 

```haxe
var mySprite:FlxSprite;
```

The declaration is usually found inside the class bracket for variables that have to be accessed from within the whole class. However, **this doesn't mean that the object is ready to be used yet!** The field will be `null` until we use its constructor, or well, **instantiate** it.

- **Instantiation** is the part where we use the type's constructor, we pass arguments, and we initialise the field.

```haxe
mySprite = new FlxSprite(0, 10);
```

Since we used its constructor, it is now an instance of FlxSprite and is ready to be used:

```haxe
mySprite.setGraphicSize(100, 200);
```

### **Trivia**

- Constructors can also be used directly while creating a variable:
```haxe
var myFirstVar = new MyType(); //OK
var mySecondVar:MyType = new MyType(); //OK
var myThirdVar:MyType(); //Error
```

- Some types like Float, Int or Array, can be instantiated without a constructor (essentially because, Floats and Ints don't have constructors):

```haxe
var myFloat:Float = 1.4; //OK
var myArray:Array<Int> = [1, 3, 5]; //OK
var a = new Array<Int>(); //OK
var i = new Int(); //Error
var myInt:Int;
myInt = 20; //OK
```
