-- 实现 length
--

-- 1. rule1 & 2
myLength [] = 0
-- 2. any alternate cases(rule3)
myLength xs = 1 + myLength (tail xs)
