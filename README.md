# Bidirectional Utils.cycle() for Framer

Utils.cycle() is a handy tool for going through an array. 
Unfortunately, Framer's default method can only move to a "next" item of given array. 
This extension will override default method so you can browse through your arrays in both directions (next &amp; previous)

## How To Install

- [Download the extension] (https://github.com/rdksl/Bidirectional-Utils.cycle-for-Framer/blob/master/BidirectionalUtilsCycle.zip?raw=true)
- Copy the ```Utilscycle.coffee``` file to your prototype's ```modules``` folder.
- Call ```Utilscycle = require "Utilscycle"``` in your Framer prototype.

or put this piece of code before you will call Utils.cycle()
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

#### [Try the live demo] (https://framer.cloud)

![Screen Demo](./rangeFilterDemo.gif)

## How To Use

#### Initialize your "cycler" object
```javascript
array = ["a", "b", "c", "d", "e", "f", "g", "h"]
cycler = Utils.cycle(array)
```

#### Go to the next item

To move forward, you can use
```javascript
cycler() # Or cycler(1)
```

#### Go to the previous item

This is the only addition to the default Utils.cycle() method. Give your "cycler" object any negative parameter to move one item back
```javascript
cycler(-1)
```
