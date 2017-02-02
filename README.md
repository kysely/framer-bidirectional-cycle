# Bidirectional Utils.cycle() for Framer

Framer's Utils.cycle() extension that allows you to browse arrays in both directions (instead of returning only next item).

## How To Use [(Try the live demo)] (https://framer.cloud/XJiCH/)

- [Download the extension] (https://github.com/rdksl/Bidirectional-Utils.cycle-for-Framer/blob/master/BidirectionalUtilsCycle.zip?raw=true)
- Copy the `Utilscycle.coffee` file to your prototype's ```modules``` folder.
- Call `Utilscycle = require "Utilscycle"` in your Framer prototype.
- Set up as the default Utils.cycle()
- Call your `cycler` function with no or any positive number to return `next` item. Call with any negative number to return `previous` item

```javascript
array = ["a", "b", "c", "d", "e", "f", "g", "h"]

cycler = Utils.cycle(array)

print cycler() #Outputs "a"
print cycler(1) #Outputs "b"
print cycler(8) #Outputs "c"
print cycler(9) #Outputs "d"
print cycler(-1) #Outputs "c"
print cycler(-1) #Outputs "b"

```

If you don't want to load this silly thing from another file, you can copy its code from [Utilscycle.coffee] (https://github.com/rdksl/Bidirectional-Utils.cycle-for-Framer/blob/master/Utilscycle.coffee)
