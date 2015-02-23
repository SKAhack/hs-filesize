module Filesize (
    filesize
) where

filesize n
    | n >= yotta = roundToStr ( n / yotta ) ++ "YB"
    | n >= zetta = roundToStr ( n / zetta ) ++ "ZB"
    | n >= exa  = roundToStr ( n / exa ) ++ "EB"
    | n >= peta = roundToStr ( n / peta ) ++ "PB"
    | n >= tera = roundToStr ( n / tera ) ++ "TB"
    | n >= giga = roundToStr ( n / giga ) ++ "GB"
    | n >= mega = roundToStr (n / mega) ++ "MB"
    | n >= kilo = roundToStr ( n / kilo ) ++ "kB"
    | otherwise = roundToStr n ++ "B"

kilo  = 2 ^ 10
mega  = 2 ^ 20
giga  = 2 ^ 30
tera  = 2 ^ 40
peta  = 2 ^ 50
exa   = 2 ^ 60
zetta = 2 ^ 70
yotta = 2 ^ 70

round' :: (RealFrac a, Fractional a) => Int -> a -> a
round' n f = (fromInteger $ round $ f * (10^n)) / (10.0^^n)

roundToStr n = show $ round' 2 n

