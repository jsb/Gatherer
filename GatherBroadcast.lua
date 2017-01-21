GATHERER_TOKEN_SEPARATOR = ";";
GATHERER_ADDON_MESSAGE_PREFIX = "gatherer_p2p";

function Gatherer_BroadcastGather(gather, gatherType, gatherC, gatherZ, gatherX, gatherY, iconIndex, gatherEventType)
    assert(type(iconIndex) == 'number')
    local message = Gatherer_EncodeGather(GetUnitName("player"), gather, gatherType, gatherC, gatherZ, gatherX, gatherY, iconIndex, gatherEventType);

    if Gatherer_Settings.debug then
        local prettyNodeName = gather;
        local prettyZoneName = GatherRegionData[gatherC][gatherZ].name;
        Gatherer_ChatPrint("Gatherer: Broadcasting new " .. prettyNodeName .. " node found in " .. prettyZoneName .. ".");
        Gatherer_ChatPrint("Gatherer: gatherType: " .. gatherType .. ", gatherEventType: " .. gatherEventType .. ".");
    end

    Gatherer_SendRawMessage(message);
end


VERSION_REG_EXP = '(%d+)\.(%d+)\.(%d+)';


local function extractVersion(str)
    -- type(Text) -> Tuple[int, int, int]
    local major, minor, fix = Gatherer_split(str, '.')
    return {tonumber(major), tonumber(minor), tonumber(fix)}
end


local function validPrefix(prefix)
    -- type: (Text) -> bool
    -- Return true if prefix has correct format and acceptable version.
    -- Message format is considered broken if *minor version* changes.
    -- Thus fix builds by sermver will be compatible with each other.

    -- check overall prefix format
    local prefixPos = strfind(
        prefix, '^'..GATHERER_ADDON_MESSAGE_PREFIX..GATHERER_TOKEN_SEPARATOR..VERSION_REG_EXP..'$'
    );
    if (not prefixPos) then
        return
	end
	-- check version components
    local prefixVersion = extractVersion(prefix)
    local currentVersion = extractVersion(GATHERER_VERSION)
    if prefixVersion[1] ~= currentVersion[1] or prefixVersion[2] ~= currentVersion[2] then
        return
    end
	return true
end


function Gatherer_AddonMessageEvent(prefix, message, type)
	if (not Gatherer_Settings.p2p) or (not validPrefix(prefix)) then
        return
	end
	Gatherer_ReceiveBroadcast(message);
end

function Gatherer_EncodeGather(sender, gather, gatherType, gatherC, gatherZ, gatherX, gatherY, gatherIcon, gatherEventType)
    return sender .. GATHERER_TOKEN_SEPARATOR ..
           gather .. GATHERER_TOKEN_SEPARATOR ..
           gatherType .. GATHERER_TOKEN_SEPARATOR ..
           gatherC .. GATHERER_TOKEN_SEPARATOR ..
           gatherZ .. GATHERER_TOKEN_SEPARATOR ..
           gatherX .. GATHERER_TOKEN_SEPARATOR ..
           gatherY .. GATHERER_TOKEN_SEPARATOR ..
           gatherIcon .. GATHERER_TOKEN_SEPARATOR ..
           gatherEventType .. GATHERER_TOKEN_SEPARATOR;
end

function Gatherer_DecodeGather(message)
    local function eatToken(str)
        local sep = string.find(str, GATHERER_TOKEN_SEPARATOR);
        local arg = string.sub(str, 1, sep-1);
        local rest = string.sub(str, sep+1);
        return arg, rest
    end

    local sender, rest = eatToken(message);
    local gather, rest = eatToken(rest);
    local gatherType, rest = eatToken(rest);
    local gatherC, rest = eatToken(rest);
    local gatherZ, rest = eatToken(rest);
    local gatherX, rest = eatToken(rest);
    local gatherY, rest = eatToken(rest);
    local iconIndex, rest = eatToken(rest);
    local gatherEventType, rest = eatToken(rest);

    -- correct types
    gatherType = tonumber(gatherType);
    gatherC = tonumber(gatherC);
    gatherZ = tonumber(gatherZ);
    gatherX = tonumber(gatherX);
    gatherY = tonumber(gatherY);
    iconIndex = tonumber(iconIndex);
    gatherEventType = tonumber(gatherEventType);

    return sender, gather, gatherType, gatherC, gatherZ, gatherX, gatherY, iconIndex, gatherEventType;
end

function Gatherer_ReceiveBroadcast(message)
    local sender, gather, gatherType, gatherC, gatherZ, gatherX, gatherY, iconIndex, gatherEventType = Gatherer_DecodeGather(message);
    assert(type(iconIndex) == 'number')
    if sender ~= GetUnitName("player") then
        if Gatherer_Settings.debug then
            local prettyNodeName = gather;
            local prettyZoneName = GatherRegionData[gatherC][gatherZ].name;
            Gatherer_ChatPrint("Gatherer: " .. sender .. " discovered a new " .. prettyNodeName .. " node in " .. prettyZoneName .. ".");
			Gatherer_ChatPrint("Gatherer: gatherType: "..gatherType..', iconIndex: '.. iconIndex ..', gatherEventType: '..gatherEventType)
        end
        local newNodeFound = Gatherer_AddGatherToBase(gather, gatherType, gatherC, gatherZ, gatherX, gatherY, iconIndex, gatherEventType, false);
        if Gatherer_Settings.debug then
            if newNodeFound then
				Gatherer_ChatNotify('It was a new node!', Gatherer_ENotificationType.info)
            else
                Gatherer_ChatNotify('It was a duplicate.', Gatherer_ENotificationType.warning)
            end
        end
    end
end

function Gatherer_SendRawMessage(message)
    SendAddonMessage(
        GATHERER_ADDON_MESSAGE_PREFIX..GATHERER_TOKEN_SEPARATOR..GATHERER_VERSION,
        message, "GUILD"
    );
end
