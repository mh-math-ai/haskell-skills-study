# ghci 
# ghci is interative Haskell interpreter.

# you run ghci by type 

ghci 

# in terminal

1+1

# ghci can use the functions from the Haskell base library

"asdf"

# when we evaluate a string literal, the result is the same string

reverse "asdf"
# "fdsa"

# we can compute the reverse of a string by applying the function reverse to the value

:type "asdf"
# :asdf: :: String

# we can also ask for their type with the :type(abbreviated :t) GHCi command
# commands that start with : are part of the user interface of GHCi, not part of the Haskell language

tail "asdf"
# "sdf"

# the tail function works on lists and returns all except the first element of the list

:type tail "asdf"
# tail "asdf" :: [Char]

# we can put function value in a command

:type tail
# tail :: GHC.Stack.Types.HasCallStack => [a] -> [a]

# tail is the type of function that takes a list of any type as an argument, 
# and returns a list of the same type

# you can quit ghci by

:quit 

