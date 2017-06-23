Utils.cycle = ->
	args = Utils.arrayFromArguments arguments[0]
	curr = -1

	return (dir = true) ->
		if dir
			curr++
			curr = 0 if curr >= args.length
		else
			curr--
			curr = (args.length-1) if curr < 0
		return args[curr]
