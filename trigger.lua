function(e, ...)
    local rollId = select(1, ...)
    local itemLink = GetLootRollItemLink(rollId)
    local itemId = select(3, strfind(itemLink, "item:(%d+)"))
    local scarabIds = {
        ["20858"]=true, --Stone Scarab
        ["20859"]=true, --Gold Scarab
        ["20860"]=true, --Silver Scarab
        ["20861"]=true, --Bronze Scarab
        ["20862"]=true, --Crystal Scarab
        ["20863"]=true, --Clay Scarab
        ["20864"]=true, --Bone Scarab
        ["20865"]=true, --Ivory Scarab
    }
    
    local aq20idolIds = {
        ["20866"]=true, --Azure Idol
        ["20867"]=true, --Onyx Idol
        ["20868"]=true, --Lambent Idol
        ["20869"]=true, --Amber Idol
        ["20870"]=true, --Jasper Idol
        ["20871"]=true, --Obsidian Idol
        ["20872"]=true, --Vermillion Idol
        ["20873"]=true, --Alabaster Idol
    }
    
    local aq40idolIds = {
        ["20874"]=true, --Idol of the Sun
        ["20875"]=true, --Idol of the Night
        ["20876"]=true, --Idol of Death
        ["20877"]=true, --Idol of the Sage
        ["20878"]=true, --Idol of Rebirth
        ["20879"]=true, --Idol of Life
        ["20881"]=true, --Idol of Strife
        ["20882"]=true, --Idol of War
    }
    
    local howToRoll = nil
    
    if scarabIds[itemId] then
        howToRoll = aura_env.roll("scarabs")
    elseif aq20idolIds[itemId] then
        howToRoll = aura_env.roll("aq20idols")
    elseif aq40idolIds[itemId] then
        howToRoll = aura_env.roll("aq40idols")
    end
    
    if howToRoll then
        RollOnLoot(rollId, howToRoll)        
    end
end