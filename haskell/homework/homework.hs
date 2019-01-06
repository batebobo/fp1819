import Data.List hiding (groupBy, minimumBy)

data Point = Point {
  pX :: Double,
  pY :: Double
} deriving (Show)

-- изберете си между това и горното представяне на точка
-- data Point = Point Double Double deriving Show

instance Eq Point where
-- TODO:

data Cluster = Cluster {
  cId :: Int,
  cCenter :: Point
} deriving (Show)

-- същото като за точка
-- data Cluster = Cluster Int Point deriving Show

instance Eq Cluster where
-- TODO:

-- centroid :: [Point] -> Maybe Point
-- сумата на всички точки / броят им
-- TODO:

-- sqDistance :: Point -> Point -> Double
-- квадрат на евклидово разстояние
-- TODO:

-- splitBy :: (Eq a) => a -> [a] -> [[a]]
-- може да видите как се използва долу в main
-- TODO:

-- nearest :: [Cluster] -> Point -> Maybe Cluster
-- искаме да проверим кой е най-близкият cluster за дадена точка
-- т.е. центърът на кой cluster е най-близо до нашата точка.
-- TODO:

-- partition:: (a -> a -> Bool) -> [a] -> [[a]]
-- групираме елементи на списък според релация на еквивалентност, която ни дават отвън
-- т.е. правим разбиване на класове на еквивалентност
-- например : (groupBy (\x y -> x == y) [1,2,1,2,1,2,1]) -> [[1,1,1,1],[2,2,2]]
-- TODO:

main :: IO ()
main = do
 pointsFile <- readFile "points"
 let pointsLines = lines pointsFile
 let points = map (\line -> case splitBy ' ' line of [x,y] -> Point (read x :: Double) (read y :: Double)) pointsLines
 mapM_ (putStrLn . show) points 
 
