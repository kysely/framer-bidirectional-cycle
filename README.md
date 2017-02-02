# Bidirectional Utils.cycle() for Framer

Framer's Utils.cycle() extension that allows you to browse arrays in both directions (instead of returning only next item).

## How To Use [(Try the live demo)] (https://framer.cloud/XJiCH/)

- [Download the extension] (https://github.com/rdksl/Bidirectional-Utils.cycle-for-Framer/blob/master/BidirectionalUtilsCycle.zip?raw=true)
- Copy the `Utilscycle.coffee` file to your prototype's ```modules``` folder.
- Call `Utilscycle = require "Utilscycle"` in your Framer prototype.
- Set up as the default Utils.cycle()
- To return `next` item, call your `cycler()` with *no* or *any positive number* as an argument
- To return `previous` item, call your `cycler()` with *any negative number* as an argument
 
 
 
```coffeescript
array = ["a", "b", "c", "d", "e", "f", "g", "h"]

cycler = Utils.cycle(array)

print cycler() 		# Outputs "a" (next)
print cycler(1) 	# Outputs "b" (next)
print cycler(8) 	# Outputs "c" (next)
print cycler(96) 	# Outputs "d" (next)
print cycler(-1) 	# Outputs "c" (previous)
print cycler(-82)  # Outputs "b" (previous)

```

 

If you don't want to load this silly thing from another file, you can copy its code from [Utilscycle.coffee] (https://github.com/rdksl/Bidirectional-Utils.cycle-for-Framer/blob/master/Utilscycle.coffee)
