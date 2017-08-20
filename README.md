# Bidirectional Utils.cycle() for Framer

Framer's Utils.cycle() extension that allows you to browse arrays in both directions (instead of returning only next item).

## How To Use [(Try the live demo)](https://framer.cloud/XJiCH/)
<a href='https://open.framermodules.com/Bidirectional Cycle'>
    <img alt='Install with Framer Modules'
    src='https://www.framermodules.com/assets/badge@2x.png' width='160' height='40' /></a>

or

- Copy the `Utilscycle.coffee` file to your prototype's `modules` folder.
- Call `Utilscycle = require "Utilscycle"` in your Framer prototype.
- Now your Utils.cycle() can iterate in both directions.
- To return `next` item, call your `cycler()` with *no* or `true` as an argument
- To return `previous` item, call your `cycler()` with `false` as an argument
 
 
 
```coffeescript
Utilscycle = require "Utilscycle"

alphabet = ["a", "b", "c", "d", "e", "f", "g", "h"]

cycler = Utils.cycle(alphabet)

# cycler(none or true) => next
# cycler(false)        => previous

print cycler()      # Outputs "a" (next)
print cycler()      # Outputs "b" (next)
print cycler(true)  # Outputs "c" (next)

print cycler(false) # Outputs "b" (previous)
print cycler(false) # Outputs "a" (previous)

```

 

If you don't want to load this silly thing from another file, you can copy its code from [Utilscycle.coffee](https://github.com/rdksl/Bidirectional-Utils.cycle-for-Framer/blob/master/Utilscycle.coffee)
