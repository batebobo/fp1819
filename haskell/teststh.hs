something :: Floating a => a -> a
something x = sqrt x

cast :: (Integral a) =>  a -> Double 
cast y = (fromIntegral y)::Double
