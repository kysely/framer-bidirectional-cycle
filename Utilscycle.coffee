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
