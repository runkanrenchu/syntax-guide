# Keywords and vocabulary.

Keywords are VERY important. So important that they have their own file! It's essential to understand them, specially since you'll use a lot of them, sometimes 
without even noticing. Here are brief explanations on how they work, very simplified for noobie use, and with links to their documentation pages for further explanation.

These might not use the most accurate terms, but they're supposed to be "noob-friendly". Feel free to open a PR/DM me if you have something to add!

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

**See [override - Haxe](https://haxe.org/manual/class-field-override.html).**
