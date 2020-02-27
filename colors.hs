data MyColors = Orane | Red | Blue | Green | Silver
    deriving (Show, Eq) --instead of Ord we use:

instance Ord MyColors where
    compare c1 c2 = compare (show c1) (show c2)

