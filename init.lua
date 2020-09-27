aura_env.pass = 1
aura_env.need = 2
aura_env.greed = 3
aura_env.nothing = 4

aura_env.roll = function(item)
    local innerRoll = aura_env.config[item]
    if not innerRoll then 
        return nil
    end
    return aura_env.mapRoll(innerRoll)
end

aura_env.mapRoll = function(innerRoll)
    if innerRoll == aura_env.nothing then
        return nil
    end
    if innerRoll == aura_env.pass then
        return 0
    end
    if innerRoll == aura_env.need then
        return 1
    end
    if innerRoll == aura_env.greed then
        return 2
    end
    return nil
end