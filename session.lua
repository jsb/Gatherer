-- Here will be stored session-lifetime data and routines to operate on it.
--

-- Imaginary session-long part of the database.
-- Like imaginary part of a complex nubmer.
local GatherItems_imaginary = {};

local function Gatherer_add_imaginary_node_data(continent, zone, gather_name, node_index, key, value)
	if (not GatherItems_imaginary[continent]) then GatherItems_imaginary[continent] = { }; end
	if (not GatherItems_imaginary[continent][zone]) then GatherItems_imaginary[continent][zone] = { }; end
	if (not GatherItems_imaginary[continent][zone][gather_name]) then
		GatherItems_imaginary[continent][zone][gather_name] = { };
	end
	if (not GatherItems_imaginary[continent][zone][gather_name][node_index]) then
		GatherItems_imaginary[continent][zone][gather_name][node_index] = { };
	end
	GatherItems_imaginary[continent][zone][gather_name][node_index][key] = value
end


local SENT_KEYS = {
	[Gatherer_EBroadcastMedia.guild] = 'sent_to_guild',
	[Gatherer_EBroadcastMedia.raid] = 'sent_to_raid',
};

local sent_count = {
	[Gatherer_EBroadcastMedia.guild] = 0,
	[Gatherer_EBroadcastMedia.raid] = 0,
};

function Gatherer_sent_count(broadcast_media)
	-- type: (EBroadcastMedia) -> int
	return sent_count[broadcast_media];
end

function Gatherer_mark_sent(broadcast_media, continent, zone, gather_name, node_index)
	-- type: (EBroadcastMedia, Continent, Zone, GatherName, int) -> nil
	if not Gatherer_node_sent(broadcast_media, continent, zone, gather_name, node_index) then
		sent_count[broadcast_media] = sent_count[broadcast_media] + 1
	end
	Gatherer_add_imaginary_node_data(continent, zone, gather_name, node_index, SENT_KEYS[broadcast_media], true)
end

function Gatherer_node_sent(broadcast_media, continent, zone, gather_name, node_index)
	-- type: (EBroadcastMedia, Continent, Zone, GatherName, int) -> bool
	if not GatherItems_imaginary[continent] then return false end
	if not GatherItems_imaginary[continent][zone] then return false end
	if not GatherItems_imaginary[continent][zone][gather_name] then return false end
	if not GatherItems_imaginary[continent][zone][gather_name][node_index] then return false end
	return GatherItems_imaginary[continent][zone][gather_name][node_index][SENT_KEYS[broadcast_media]]
end
