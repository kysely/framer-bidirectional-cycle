# Bidirectional Utils.cycle() for Framer

Utils.cycle() is a handy tool for going through an array. 
Unfortunately, Framer's default method can only move to a "next" item of given array. 
This extension will override default method so you can browse through your arrays in both directions (next &amp; previous)

## How To Install

- [Download the extension] (https://github.com/rdksl/Bidirectional-Utils.cycle-for-Framer/blob/master/BidirectionalUtilsCycle.zip?raw=true)
- Copy the ```Utilscycle.coffee``` file to your prototype's ```modules``` folder.
- Call ```Utilscycle = require "Utilscycle"``` in your Framer prototype.

or copy the code directly into your prototype.

## How To Use

This extension will override Framer's default Utils.cycle() method and y

#### Example
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

#### [Try the live demo] (https://framer.cloud)

![Screen Demo](./rangeFilterDemo.gif)

## Direct Install (aka copy the code)

If you don't want this simple extension to be loaded from another file, you can copy it directly to your prototype's code.

```javascript
Utils.cycle = ->
	args = Utils.arrayFromArguments arguments[0]
	curr = -1

	return (dir) ->
		if dir < 0
			curr--
			curr = (args.length-1) if curr < 0
		else
			curr++
			curr = 0 if curr >= args.length
		return args[curr]
```
