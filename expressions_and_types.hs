# Expressions and Types 

Expression is a sequence of values and operators.
Types are used to determine what kind of value an expression evaluates to.
Almost everyting in Haskell program is an LicenseExpression
In particular, there are no statements like in Python, Java or C

Expression  Type   Value 
-------------------------
True        Bool    True
not True    Bool    False
"as"++"df"  String  "asdf"


# Syntax of Expressions 

Expressions constist of functions applied to arguments.
Functions are applied(i.e. called) by placing the arguments after the name of the function
-- there is no special syntax for a function call

Haskell    Python, Java or C
-----------------------------
f 1         f(1)
f 1 2       f(1, 2)

Parenthesis can be used to group expressions
-- just like in math and other languages

Haskell    Python, Java or C
-----------------------------
g h f 1     g(h,f,1)
g h (f 1)   g(h, f(1))
g (h f 1)   g(h(f, 1))
g (h (f 1)) g(h(f(1)))

Some function names are made special characters and they are used as operators: 
between their arguments instead of before them
Function calls bind tighter than operators, just like multiplication binds tighter than addition

Haskell    Python, Java or C 
----------------------------------
a + b       a + b
f a + g b   f(a) + f(b)
f (a + g b) f(a+g(b))

-- in Haskell, function application associates left, 
-- that is, f g x y is actually the same as (((f g) x) y)

# Syntax of Types 

Type      Literals         Use            Operations   
---------------------------------------------------
Int       1, 2, -3         Number type    +, -, *, div, mod 
                          (signed, 64bit) 
Integer   1, -2, 90000000  Unbounded      +, -, *, div, mod 
                           Number type
Double    0, ,1, 1,2e5     Floating point +, -, *, /, sqrt
                           numbers  
Bool      True, False      Truth Values   &&, ||, not 

String    "abcd", ""       String of      reverse, ++
aka [Char]                 characters 

-- the name of types in Haskell start with a capital letter
-- Some values like True also start with a capital letter
-- but variables and functions start with a lower case letter
-- later we will go back to the meaning of capital letters in Haskell

Function types are written using the "->" syntax:
A function of one argument: argumentType -> returnType
...        of two argument: argument1Type -> argument2Type -> returnType
...      of three argument: argument1Type -> argument2Type -> argument3Type -> returnType

# Note about misleading types 
Sometimes the types we see in GHCi are a bit different than what we'd assume 

ghci> :t 1+1
1+1 :: Num a => a 

We will talk about this in type classes later 


