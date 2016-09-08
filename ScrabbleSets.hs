module ScrabbleSets
where

import qualified Data.Map as Map

tiles :: Map.Map Char Int
tiles = Map.fromList [
  ('_', 2),
  ('A', 9),
  ('B', 2),
  ('C', 2),
  ('D', 4),
  ('E', 12),
  ('F', 2),
  ('G', 3),
  ('H', 2),
  ('I', 9),
  ('J', 1),
  ('K', 1),
  ('L', 4),
  ('M', 2),
  ('N', 6),
  ('O', 8),
  ('P', 2),
  ('Q', 1),
  ('R', 6),
  ('S', 4),
  ('T', 6),
  ('U', 4),
  ('V', 2),
  ('W', 2),
  ('X', 1),
  ('Y', 2),
  ('Z', 1)]

can_tile_be_played :: Char -> Map.Map Char Int -> Bool
can_tile_be_played t ts
  | Map.lookup t ts == Just 0 = False
  | otherwise                 = True
