-- Function to check if PLAYER has an outpost in the ALLIED settlement being attacked
function checkPlayerOutpostInAlliedSettlement(alliedSettlement)
    local playerOutposts = PLAYER:getOutposts() -- Assuming a function gets the outposts of the player
    for _, outpost in ipairs(playerOutposts) do
        if outpost:settlement == alliedSettlement then
            return true
        end
    end
    return false
end

-- Function to spawn Empire swordsmen reinforcements
function spawnEmpireReinforcements(alliedSettlement)
    if checkPlayerOutpostInAlliedSettlement(alliedSettlement) then
        -- Code to spawn Empire swordsmen at the allied settlement
        spawnUnits(alliedSettlement, "Empire_Swordsmen", numberOfReinforcements)
    end
end