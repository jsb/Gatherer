-- Here will be stored session-lifetime data and routines to operate on it.
--

-- Imaginary session-long part of the database.
-- Like imaginary part of a complex nubmer.
local GatherItems_imaginary = {};


local function Gatherer_add_imaginary_node_data(continent, zone, gatherName, nodeIndex, key, value)
	if (not GatherItems_imaginary[continent]) then GatherItems_imaginary[continent] = { }; end
	if (not GatherItems_imaginary[continent][zone]) then GatherItems_imaginary[continent][zone] = { }; end
	if (not GatherItems_imaginary[continent][zone][gatherName]) then
		GatherItems_imaginary[continent][zone][gatherName] = { };
	end
	if (not GatherItems_imaginary[continent][zone][gatherName][nodeIndex]) then
		GatherItems_imaginary[continent][zone][gatherName][nodeIndex] = { };
	end
	GatherItems_imaginary[continent][zone][gatherName][nodeIndex][key] = value
end


local DUPLICATE_KEY = 'was_p2p_duplicate';


function Gatherer_mark_node_as_p2p_duplicate(continent, zone, gatherName, nodeIndex)
	Gatherer_add_imaginary_node_data(continent, zone, gatherName, nodeIndex, DUPLICATE_KEY, true)
end

function Gatherer_is_p2p_duplicate(continent, zone, gatherName, nodeIndex)
	if not GatherItems_imaginary[continent] then return false end
	if not GatherItems_imaginary[continent][zone] then return false end
	if not GatherItems_imaginary[continent][zone][gatherName] then return false end
	if not GatherItems_imaginary[continent][zone][gatherName][nodeIndex] then return false end
	return GatherItems_imaginary[continent][zone][gatherName][nodeIndex][DUPLICATE_KEY]
end
