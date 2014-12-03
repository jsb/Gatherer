GATHERER_ADDON_MESSAGE_PREFIX = "GATHERER";
GATHERER_TOKEN_SEPARATOR = ";";

function Gatherer_BroadcastGather(gather, gatherType, gatherC, gatherZ, gatherX, gatherY, gatherIcon, gatherEventType)
  local message = Gatherer_EncodeGather(gather, gatherType, gatherC, gatherZ, gatherX, gatherY, gatherIcon, gatherEventType);
  Gatherer_SendRawMessage(message);
end

function Gatherer_AddonMessageEvent(prefix, message, type)
    if prefix == GATHERER_ADDON_MESSAGE_PREFIX then
        Gatherer_ReceiveBroadcast(message);
    end
end

function Gatherer_EncodeGather(gather, gatherType, gatherC, gatherZ, gatherX, gatherY, gatherIcon, gatherEventType)
    return gather .. GATHERER_TOKEN_SEPARATOR ..
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

    local gather, rest = eatToken(message);
    local gatherType, rest = eatToken(rest);
    local gatherC, rest = eatToken(rest);
    local gatherZ, rest = eatToken(rest);
    local gatherX, rest = eatToken(rest);
    local gatherY, rest = eatToken(rest);
    local gatherIcon, rest = eatToken(rest);
    local gatherEventType, rest = eatToken(rest);

    Gatherer_ChatPrint("Decoded: " ..
                       gather .. " " ..
                       gatherType .. " " ..
                       gatherC .. " " ..
                       gatherZ .. " " ..
                       gatherX .. " " ..
                       gatherY .. " " ..
                       gatherIcon .. " " ..
                       gatherEventType);

    return gather, gatherType, gatherC, gatherZ, gatherX, gatherY, gatherIcon, gatherEventType;
end

function Gatherer_ReceiveBroadcast(message)
    if Gatherer_Settings.debug then
        Gatherer_ChatPrint("Gatherer Received: " .. message);
    end
    local gather, gatherType, gatherC, gatherZ, gatherX, gatherY, gatherIcon, gatherEventType = Gatherer_DecodeGather(message);
    Gatherer_AddGatherBase(gather, gatherType, gatherC, gatherZ, gatherX, gatherY, gatherIcon, gatherEventType);
end

function Gatherer_SendRawMessage(message)
    if Gatherer_Settings.debug then
        Gatherer_ChatPrint("Gatherer Sending: " .. message);
    end
    SendAddonMessage(GATHERER_ADDON_MESSAGE_PREFIX, message, "GUILD");
end
