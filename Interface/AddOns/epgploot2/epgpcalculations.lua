local function DecodeNote(note)
    local ep, gp = string.match(note, "^(%d+),(%d+)$")
    if ep then
        return tonumber(ep), tonumber(gp)
    end

    return 0, 0
end

-- Parse options. Options are inside GuildInfo and are inside a -EPGP-
-- block. Possible options are:
--
-- @DECAY_P:<number>
-- @MIN_EP:<number>
-- @BASE_GP:<number>
local function GetBaseGP()
    local guild_info = GetGuildInfoText() or ""
    local base_gp = 0
    local min_ep = 0
	
    local lines = {string.split("\n", guild_info)}
    local in_block = false

    for _,line in pairs(lines) do
        if line == "-EPGP-" then
            in_block = not in_block
        elseif in_block then

            -- Min EP
            local mep = line:match("@MIN_EP:(%d+)")
            if mep then
                mep = tonumber(mep) or DEFAULT_MIN_EP
                if mep >= 0 then
                    if min_ep ~= mep then
                        min_ep = mep
                    end
                else
                    --EPGP:Print(L["Min EP should be a positive number"])
                end
            end

            -- Base GP
            local bgp = line:match("@BASE_GP:(%d+)")
            if bgp then
                bgp = tonumber(bgp) or DEFAULT_BASE_GP
                if bgp >= 0 then
                    if base_gp ~= bgp then
                        base_gp = bgp
                        --callbacks:Fire("BaseGPChanged", bgp)
                        --DestroyStandings()
                    end
                else
                    --EPGP:Print(L["Base GP should be a positive number"])
                end
            end
        end
    end

    return base_gp, min_ep
end

function EPGPLoot2:UpdateRaidPrio()

	-- self:Print("Calculating prio...")

    local base_gp, min_ep = GetBaseGP()
    local cacheRaidPrio = {}
  
    for i = 1, GetNumGuildMembers(true) do

        local name, realm, rank, _, _, _, _, note, _, _, _ = GetGuildRosterInfo(i)

        if name then
            name = EPGPLoot2:FixUnitName(name);

            -- self:Print("Calculating prio for "..name)

            local t = cacheRaidPrio[name]
            if not t then
                t = {}
                cacheRaidPrio[name] = t
            end

            local ep, gp = DecodeNote(note)

            if (ep < 0) then
                ep = 0;
            end;

            if (gp <= 0) then
                gp = 1;
            end;

            -- self:Print("Player "..name.." has "..ep.." and "..gp.." gp")

            if (((ep == 0) and (gp == 0)) or (ep < min_ep)) then
                t.prio = 0
            else
                t.prio = ep / (base_gp + gp)
            end

            t.rank = rank
            t.note = note
            cacheRaidPrio[name] = t
        end
    end
  
    for k,v in pairs(cacheRaidPrio) do
        if (cacheRaidPrio[k].prio == 0) then
            if (cacheRaidPrio[cacheRaidPrio[k].note] ~= nil) then
                local newprio = cacheRaidPrio[cacheRaidPrio[k].note]
                cacheRaidPrio[k] = newprio
            else
                if UnitInRaid(k) then
                    self:Print("|cFFFFFF00WARNING!|r |cFFFFFFFF"..k.."|r |cFFFFFF00has an invalid officernote: '|r|cFFFFFFFF "..cacheRaidPrio[k].note.."|r|cFFFFFF00' setting prio to zero!|r")
                end
            end
        end
    end
  
    return cacheRaidPrio
end
