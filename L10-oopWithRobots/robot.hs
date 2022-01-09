-- A robot constructor
robot (name, attack, hp) = \msg -> msg (name, attack, hp)

-- an instance
killerRobot = robot ("Kill3r", 25, 200)

-- helper func
name (n, _, _) = n

attack (_, a, _) = a

hp (_, _, hp) = hp

-- getters
getName aRobot = aRobot name

getAttack aRobot = aRobot attack

getHp aRobot = aRobot hp

-- setters
setName aRobot newName = aRobot (\(n, a, h) -> robot (newName, a, h))

setAttack aRobot newAttack = aRobot (\(n, a, h) -> robot (n, newAttack, h))

setHp aRobot newHp = aRobot (\(n, a, h) -> robot (n, a, newHp))

-- create new objects by modifying copies of old,existing ones.
nicerRobot = setName killerRobot "kitty"

gentlerRobot = setAttack killerRobot 5

softerRobot = setHp killerRobot 50

-- print robot's msg
printRobot aRobot = aRobot (\(n, a, h) -> n ++ " attack:" ++ show a ++ " hp:" ++ show h)

-- TODO: not finished  <09-01-22, cloud mist> --
