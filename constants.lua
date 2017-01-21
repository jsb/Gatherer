-- Here will be ~dragons~ all the constants, enums, types for type hinting, etc
--

-- Gatherer_EGatherType = {treasure=0, herb=1, ore=2}
Gatherer_EGatherType = {
	[0]          = "Treasure",
	[1]          = "Herb",
	[2]          = "Ore",
	[3]          = "Default",
	["Treasure"] = 0,
	["Herb"]     = 1,
	["Ore"]      = 2,
	["Default"]  = 3,
};

function Gatherer_EGatherType_ensureIndex(gatherType)
	-- type: (Gatherer_EGatherType) -> gatherTypeIndex
	local gatherTypeIndex
	if type(gatherType) == "string" then
		return Gatherer_EGatherType[gatherType];
	end
	return gatherType;
end

-- EGatherEventType = {normal=0, no_skill=1, fishing=2}

-- Continent = int
-- Zone = int
-- ZoneName = Text

-- IconName = Text
-- IconIndex = int
-- Icon = Union[IconName, IconIndex]

-- GatherName = Text
-- NodeInfo = Dict[Text, Union[int,float]]

-- GathererDb = Dict[Continent, Dict[Zone, Dict[GatherName, List[NodeInfo]]]]

GATHERER_NOTIFICATION_PREFIX = 'Gatherer: '

Gatherer_ENotificationType = {
	error = 10, warning = 20, info = 30, debug = 40
}

GATHERER_NOTIFICATION_COLORS = {
	[Gatherer_ENotificationType.error] = {0.9, 0, 0},
	[Gatherer_ENotificationType.warning] = {0.9, 0.9, 0},
	[Gatherer_ENotificationType.info] = {0.235, 0.78, 0.9},
	[Gatherer_ENotificationType.debug] = {1.0, 0.5, 0.25},
}

Gatherer_EBoolean = {
	[true]='on',
	[false]='off'
}