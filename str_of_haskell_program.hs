module Main where 
    -- there is one Haskell module per source file
    -- A module consists of definitions 

-- The golden ratio
-- this is a comment 
-- comments are not part of the actual program but text for human readers of the program

phi :: Double 
-- this is a definition of the constant phi, with an acoompanying type annotation(type signature)
-- the type signature is a way to tell Haskell what kind of value this function returns

phi = (sqrt 5.0 + 1.0) / 2.0
-- this is an equation that defines the constant phi, using the value of phi as an argument to itself
-- the left hand side of the = is the expression we are defining
-- and the right hand side of the = is the definition

-- in general, a definition(of a function or constant) 
-- consists of an optional type annotation and one or more equations 

polynomial :: Double -> Double
polynomial x = x^2 - x - 1

-- this is the definition of a function called polynomial
-- it has a type annotation and an equation 
-- note how an equation for a function differs from the equation of a constant
-- by the presence of a parameter x left of the = sign 
-- also note that ^ is the power operator in Haskell, not bitwise xor like in many other languages 

f :: Double -> Double
f x = polynomial (polynomial x)

main :: IO ()
main = do
    print (polynomial phi)
    print (f phi)