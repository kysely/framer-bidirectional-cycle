alphabet = ["a", "b", "c", "d", "e", "f", "g", "h"]

cycler = Utils.cycle(alphabet)

# cycler(none or true) => next
# cycler(false)        => previous

print cycler()      # Outputs "a" (next)
print cycler()      # Outputs "b" (next)
print cycler(true)  # Outputs "c" (next)

print cycler(false) # Outputs "b" (previous)
print cycler(false) # Outputs "a" (previous)
