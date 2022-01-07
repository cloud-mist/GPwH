-- A(m,n)
ackermann 0 n = n + 1
ackermann m 0 = ackermann (m - 1) 1
ackermann m n = ackermann (m - 1) (ackermann m (n - 1))

-- ghci> :set +s
-- ghci> ackermann 3 3
-- 61
-- (0.01 secs, 873,208 bytes)
-- ghci> ackermann 3 8
-- 2045
-- (1.79 secs, 973,915,792 bytes)
-- ghci> ackermann 3 9
-- 4093
-- (7.35 secs, 3,905,915,488 bytes)
