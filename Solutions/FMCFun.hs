{-# LANGUAGE GADTs #-}

module FMCFun where

import Prelude hiding
    ( (.) , ($)
    , flip , curry , uncurry
    , iterate
    )

-- use your mind to infer the types, don't cheat!

-- curry takes a "traditional" binary function
-- and returns its currified version
curry :: ((a , b) -> c) -> a -> b -> c
curry f m n = f(m , n)

-- uncurry takes a currified function
-- and returns its "traditional" binary version
uncurry :: (a -> b -> c) -> (a , b) -> c 
uncurry f(m , n) = f m n 

-- flip takes a (currified) binary function
-- and returns one that behaves the same but takes its arguments in the opposite order

flip :: (a -> b -> c) -> b -> a -> c 
flip f n m = f m n

-- (.) takes two composable functions and returns their composition

(.) :: (b -> c) -> (a -> b) -> a -> c
(f . g) m = f (g m)

-- (.>) is composition but in diagramatic notation (should be ; but Haskell forbids)
(.>) :: (a -> b) -> (b -> c) -> a -> c
(.>) = flip (.)

-- ($) takes a function and a suitable argument and applies the function to the argument
-- think: why would we ever want that?

-- iterate: figure it out by its type
iterate :: (a -> a) -> a -> [a]
iterate = undefined

-- orbit
orbit = flip iterate

