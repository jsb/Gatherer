GATHERER_TOKEN_SEPARATOR = ";";
GATHERER_ADDON_MESSAGE_PREFIX = "gatherer_p2p";


local function Gatherer_EncodeGather(sender, gather, gatherType, gatherC, gatherZ, gatherX, gatherY, gatherIcon, gatherEventType)
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


local function Gatherer_SendRawMessage(broadcast_media, message)
	local bm_name = Gatherer_EBroadcastMedia[broadcast_media];
	SendAddonMessage(
		GATHERER_ADDON_MESSAGE_PREFIX..GATHERER_TOKEN_SEPARATOR..GATHERER_VERSION,
		message, strupper(bm_name)
	);
end


function Gatherer_BroadcastGather(
	broadcast_media, gather, gatherType, gatherC, gatherZ, gatherX, gatherY, iconIndex, gatherEventType
)
    assert(type(iconIndex) == 'number')
    local message = Gatherer_EncodeGather(GetUnitName("player"), gather, gatherType, gatherC, gatherZ, gatherX, gatherY, iconIndex, gatherEventType);

    if Gatherer_Settings.debug then
        local prettyNodeName = gather;
        local prettyZoneName = GatherRegionData[gatherC][gatherZ].name;
        Gatherer_ChatNotify(
			"Broadcasting new " .. prettyNodeName .. " node found in " .. prettyZoneName .. ".",
			Gatherer_ENotificationType.sending
		);
        Gatherer_ChatNotify(
			"gatherType: " .. gatherType .. ", gatherEventType: " .. gatherEventType .. ".",
			Gatherer_ENotificationType.sending
		);
    end

    Gatherer_SendRawMessage(broadcast_media, message);
end


local function Gatherer_DecodeGather(message)
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


local function Gatherer_ReceiveBroadcast(broadcast_media, message)
	local sender, gather, gatherType, gatherC, gatherZ, gatherX, gatherY, iconIndex, gatherEventType = Gatherer_DecodeGather(message);
	assert(type(iconIndex) == 'number')
	if sender == GetUnitName("player") then
		return
	end
	if Gatherer_Settings.debug then
		local prettyNodeName = gather;
		local prettyZoneName = GatherRegionData[gatherC][gatherZ].name;
		Gatherer_ChatNotify(
			Gatherer_coloredText(
				sender, {170, 115, 255}
			) .. " discovered a new " .. prettyNodeName .. " node in " .. prettyZoneName .. ".",
			Gatherer_ENotificationType.receiving
		);
		Gatherer_ChatNotify(
			'gatherType: '..gatherType..', iconIndex: '.. iconIndex ..', gatherEventType: '..gatherEventType,
			Gatherer_ENotificationType.receiving
		)
	end

	local new_node_found, inserted_index = Gatherer_AddGatherToBase(gather, gatherType, gatherC, gatherZ, gatherX, gatherY, iconIndex, gatherEventType, false);
	Gatherer_mark_sent(broadcast_media, gatherC, gatherZ, gather, inserted_index)
	if Gatherer_Settings.debug then
		if new_node_found then
			Gatherer_ChatNotify('It was a new node!', Gatherer_ENotificationType.info)
		else
			Gatherer_ChatNotify('It was a duplicate.', Gatherer_ENotificationType.warning)
		end
	end
end


VERSION_REG_EXP = '(%d+)\.(%d+)\.(%d+)';


local function extractVersion(str)
	-- type(Text) -> Tuple[int, int, int]
	local major, minor, fix = unpack(Gatherer_split(str, '.'))
	return {tonumber(major), tonumber(minor), tonumber(fix)}
end


local function validPrefix(prefix)
	-- type: (Text) -> bool
	-- Return true if prefix has correct format and acceptable version.
	-- Message format is considered broken *every tenth* minor version.
	-- E.g. 1.0.x and 1.9.x are compatible, 1.0.x and 1.10.x are not.
	-- Thus when breaking message format don't forget to switch to the next ten
	-- in the minor version.

	-- check overall prefix format
	local prefixPos = strfind(
		prefix, '^'..GATHERER_ADDON_MESSAGE_PREFIX..GATHERER_TOKEN_SEPARATOR..VERSION_REG_EXP..'$'
	);
	if (not prefixPos) then
		return
	end

	local versionPos = strfind(prefix, VERSION_REG_EXP)
	local prefixVersionStr = strsub(prefix, versionPos)
	-- check version components
	local prefixVersion = extractVersion(prefixVersionStr);
	local currentVersion = extractVersion(GATHERER_VERSION);
	Gatherer_ChatNotify(
		'Message version: '..table.concat(prefixVersion, ', ')..' vs '..table.concat(currentVersion, ', '),
		Gatherer_ENotificationType.debug
	)
	if (
	(prefixVersion[1] ~= currentVersion[1])
			or (floor(prefixVersion[2]/10) ~= floor(currentVersion[2]/10))
	) then
		return
	end
	return true
end


local function message_accepted_by_type(type, settings)
	for _, bm_name in ipairs(Gatherer_EBroadcastMedia) do
		if (strlower(type) == bm_name) and (not settings[bm_name]) then
			Gatherer_ChatNotify(
				format(
					'type: %s, media: %s, setting: %s', type, bm_name, tostring(settings[bm_name])
				),
				Gatherer_ENotificationType.debug
			)
			return false
		end
	end
	return true
end


function Gatherer_AddonMessageEvent(prefix, message, type)
	if (not message_accepted_by_type(type, Gatherer_Settings)) or (not validPrefix(prefix)) then
        return
	end
	local broadcast_media = Gatherer_EBroadcastMedia[strlower(type)];
	Gatherer_ReceiveBroadcast(broadcast_media, message);
end



