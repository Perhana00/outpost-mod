-- Function to handle reinforcement spawning for Empire swordsmen when settlements with allied outposts are attacked.
local function on_settlement_attacked(context)
    local attacker = context:attacker()
    local defender = context:defender()

    if attacker:faction():name() == "wh_main_emp_empire" and defender:settlement():has_allied_outpost() then
        local unit_count = 2
        local unit_key = "wh_main_emp_inf_swordsmen"

        -- Spawn the reinforcement units
        for i = 1, unit_count do
            local reinforcement = defender:reinforcement():add_unit(unit_key)
            reinforcement:spawn_at_settlement(defender:settlement())
        end
    end
end

-- Register the event to trigger when a battle starts
local function register_reinforcement_event()
    cm:add_listener(
        "SettlementAttackedListener",
        "BattleStarted",
        true,
        function(context)
            on_settlement_attacked(context)
        end
    )
end

-- Call the registration function
register_reinforcement_event()