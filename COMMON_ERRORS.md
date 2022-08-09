# Common errors in Haxe.

When you're programming, you code and code until you get a successful build. However, sometimes the compilation can halt with errors. Why is this? What do these red lines
on the console mean?

----------

### **Null Object Reference**/**Cannot read property of 'null'**.

- **What:** NOR, or Null object reference, is an error that can appear on Windows as a warning popup after an app crash, and on web as an error on the console + an app freeze.

- **Why:** NOR happens whenever we're, respectively, accessing a property from a null object.

- **How:** To avoid this error, make sure you've got the concepts of (declaration and instantiation)[https://github.com/runkanrenchu/syntax-guide/blob/master/KEYWORDS.md#instantiation-and-declaration]
extra clear. Take a look at your code to check if there's any possibly null values being accessed.

### `listen EADDRINUSE`

- **What:** EADDRINUSE appears in our terminal, as `listen EADDRINUSE`, followed by a stack trace from functions unrelated to your code.

- **Why:** EADDRINUSE happens when we're using a port that's already in use. Whenever we start our compiling process, we're also doing `haxe --connect [port]` (usually
`6000` or `5500`). And when a port is already in a connection, we get this error.

- **How:** To fix this error, close all previously used terminals. Make sure that all other build commands have finished, and if possible, stop them. Otherwise, you can manually
connect to a different port.
