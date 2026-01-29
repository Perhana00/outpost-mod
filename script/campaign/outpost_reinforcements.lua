-- Outpost Reinforcements Script

local function handleReinforcementSpawning(attackingFaction)
    local alliedSettlements = getAlliedSettlements()
    for _, settlement in ipairs(alliedSettlements) do
        if settlement.isUnderAttack then
            spawnReinforcements(settlement, attackingFaction)
        end
    end
end

local function getAlliedSettlements()
    -- Logic to retrieve allied settlements
    return {}  -- Return a list of allied settlements
end

local function spawnReinforcements(settlement, attackingFaction)
    -- Logic for spawning reinforcements
    print(string.format("Spawning reinforcements for settlement %s against faction %s", settlement.name, attackingFaction))
end

-- Example usage (this would be triggered by an event in the game)
handleReinforcementSpawning("enemyFactionName")