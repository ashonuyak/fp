module Lab1 where

import Prelude

import Data.List (List(..))
import Effect (Effect)
import Effect.Console (log)

singleton :: forall a. a -> List a
singleton e = Cons e Nil

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

snoc :: forall a. List a -> a -> List a
snoc Nil a = (Cons a Nil)
snoc (Cons a b) c = (Cons a (snoc b c))

length :: forall a. List a -> Int
length Nil = 0
length (Cons _ a) = 1 + length a

test :: Effect Unit
test = do
    log ("1: " <> show (singleton "alo"))
    log ("2: " <> show (null (Cons "alo" Nil)))
    log ("3: " <> show (snoc (Cons "alo" Nil) "aloevera"))
    log ("4: " <> show (length (Cons "alo" (Cons "alolo" (Cons "aloha" Nil)))))
