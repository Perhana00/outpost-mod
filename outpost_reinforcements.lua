-- outpost_reinforcements.lua

-- Script for handling Empire swordsmen reinforcement spawn during settlement attack

-- Function to spawn swordsmen reinforcements
function spawnReinforcements(settlement)
    -- Logic for spawning swordsmen
    print("Reinforcements spawned for settlement: " .. settlement)
end

-- Function to handle settlement attack
function onSettlementAttack(settlement)
    print("Settlement under attack: " .. settlement)
    spawnReinforcements(settlement)
end

-- Example usage
-- onSettlementAttack("SettlementName")