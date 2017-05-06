--[[

	File containing localized strings
	for English, French, German and Chinese versions, defaults to English

	Processed locales: french (frFR), german (deDE), simplified chinese (zhCN), english (US or GB, default)
]]

-- Default implementations to be called as a fallback

-- ore classes
ORE_CLASS_VEIN_DEFAULT   ="vein"
ORE_CLASS_DEPOSIT_DEFAULT ="deposit"

-- ore types
ORE_COPPER_DEFAULT    ="copper"
ORE_TIN_DEFAULT       ="tin"
ORE_IRON_DEFAULT      ="iron"
ORE_SILVER_DEFAULT    ="silver"
ORE_TRUESILVER_DEFAULT="truesilver"
ORE_GOLD_DEFAULT      ="gold"
ORE_MITHRIL_DEFAULT   ="mithril"
ORE_THORIUM_DEFAULT   ="thorium"
ORE_RTHORIUM_DEFAULT  ="thorium (rich)"
ORE_DARKIRON_DEFAULT  ="dark iron"

-- herb types
HERB_ARTHASTEAR_DEFAULT        ="arthas' tears"
HERB_BLACKLOTUS_DEFAULT        ="black lotus"
HERB_BLINDWEED_DEFAULT         ="blindweed"
HERB_BRIARTHORN_DEFAULT        ="briarthorn"
HERB_BRUISEWEED_DEFAULT        ="bruiseweed"
HERB_DREAMFOIL_DEFAULT         ="dreamfoil"
HERB_EARTHROOT_DEFAULT         ="earthroot"
HERB_FADELEAF_DEFAULT          ="fadeleaf"
HERB_FIREBLOOM_DEFAULT         ="firebloom"
HERB_GHOSTMUSHROOM_DEFAULT     ="ghost mushroom"
HERB_GOLDENSANSAM_DEFAULT      ="golden sansam"
HERB_GOLDTHORN_DEFAULT         ="goldthorn"
HERB_GRAVEMOSS_DEFAULT         ="grave moss"
HERB_GROMSBLOOD_DEFAULT        ="gromsblood"
HERB_ICECAP_DEFAULT            ="icecap"
HERB_KHADGARSWHISKER_DEFAULT   ="khadgar's whisker"
HERB_KINGSBLOOD_DEFAULT        ="kingsblood"
HERB_LIFEROOT_DEFAULT          ="liferoot"
HERB_MAGEROYAL_DEFAULT         ="mageroyal"
HERB_MOUNTAINSILVERSAGE_DEFAULT="mountain silversage"
HERB_PEACEBLOOM_DEFAULT        ="peacebloom"
HERB_PLAGUEBLOOM_DEFAULT       ="plaguebloom"
HERB_PURPLELOTUS_DEFAULT       ="purple lotus"
HERB_SILVERLEAF_DEFAULT        ="silverleaf"
HERB_STRANGLEKELP_DEFAULT      ="stranglekelp"
HERB_SUNGRASS_DEFAULT          ="sungrass"
HERB_SWIFTTHISTLE_DEFAULT      ="swiftthistle"
HERB_WILDSTEELBLOOM_DEFAULT    ="wild steelbloom"
HERB_WINTERSBITE_DEFAULT       ="wintersbite"
HERB_WILDVINE_DEFAULT	       ="wildvine"


function Gatherer_FindOreType_default(input)
	local i,j, oreType, oreClass, oreTypeClass;

	if ( string.find(input, "rich") and string.find(input, "thorium") ) then
		return ORE_RTHORIUM_DEFAULT;
	end;

	if ( string.find(input, "dark") and string.find(input, "iron") ) then
		return ORE_DARKIRON_DEFAULT;
	end

	i,j, oreType, oreClass = string.find(input, "([^ ]+) ([^ ]+)$");
	if (oreType and oreClass and ((oreClass == ORE_CLASS_VEIN_DEFAULT) or (oreClass == ORE_CLASS_DEPOSIT_DEFAULT))) then
		return oreType;
	end
	return;
end


GATHERER_NOTEXT_DEFAULT="([-]) no text "

TREASURE_BOX_DEFAULT        	="box"
TREASURE_CHEST_DEFAULT      	="chest"
TREASURE_CLAM_DEFAULT       	="giant clam"
TREASURE_CRATE_DEFAULT      	="crate"
TREASURE_BARREL_DEFAULT     	="barrel"
TREASURE_CASK_DEFAULT       	="cask"
TREASURE_FOOTLOCKER_DEFAULT 	= "footlocker"

TREASURE_UNGOROSOIL_DEFAULT 	= "un'goro soil"
TREASURE_UNGOROSOIL_G_DEFAULT	= "dirt pile"
TREASURE_BLOODPETAL_DEFAULT 	= "bloodpetal"
TREASURE_BLOODPETAL_G_DEFAULT 	= "bloodpetal sprout"
TREASURE_POWERCRYST_DEFAULT 	= "power crystal"

TREASURE_BLOODHERO_DEFAULT  	= "blood of heroes"

TREASURE_SHELLFISHTRAP_DEFAULT	="shellfish trap"

TREASURE_FISHNODE_TRIGGER1_DEFAULT	= "Trunk";
--	TREASURE_FISHNODE_TRIGGER2	= "Bloated"; -- no longer found in wreckage in 1.11
TREASURE_FISHNODE_TRIGGER3_DEFAULT	= "swarm";
TREASURE_FISHNODE_TRIGGER4_DEFAULT	= "school";
TREASURE_FISHNODE_TRIGGER5_DEFAULT	= "floating wreckage";
TREASURE_FISHNODE_TRIGGER6_DEFAULT	= "oil spill";
TREASURE_FISHNODE_TRIGGER7_DEFAULT	= "patch of elemental water";

TREASURE_FISHNODE_DEFAULT		= "school";
TREASURE_FISHWRECK_DEFAULT		= TREASURE_FISHNODE_TRIGGER5_DEFAULT;
TREASURE_FISHELEM_DEFAULT		= TREASURE_FISHNODE_TRIGGER7_DEFAULT;
TREASURE_NIGHTDRAGON_DEFAULT 	= "night dragon"
TREASURE_WHIPPERROOT_DEFAULT 	= "whipper root"
TREASURE_WINDBLOSSOM_DEFAULT 	= "windblossom"
TREASURE_SONGFLOWER_DEFAULT 	= "songflower"

TREASURE_REGEX_DEFAULT = {
	[1] = " ([^ ]+)$",
	[2] = "^([^ ]+)",
	[3] = "([^ ]+) ([^ ]+) ",
};

function Gatherer_FindTreasureType_default(in_input)
	local iconName, input;

	input = string.gsub(in_input, GATHERER_NOTEXT_DEFAULT, "")

	local EDGE_CASES = {
		[TREASURE_UNGOROSOIL_DEFAULT] = {TREASURE_UNGOROSOIL_DEFAULT, TREASURE_UNGOROSOIL_G_DEFAULT},
		[TREASURE_POWERCRYST_DEFAULT] = {TREASURE_POWERCRYST_DEFAULT},
		[TREASURE_BLOODHERO_DEFAULT] = {TREASURE_BLOODHERO_DEFAULT},
	}
	for result, candidates in EDGE_CASES do
		for _, candidate in candidates do
			if string.find(input, candidate) then
				return result, result;
			end
		end
	end

	if (string.find(input, TREASURE_BLOODPETAL_G_DEFAULT) or string.find(input, TREASURE_BLOODPETAL_DEFAULT)) then
		return TREASURE_BLOODPETAL_DEFAULT, TREASURE_BLOODPETAL_G_DEFAULT;
	end

	for iconName in Gather_DB_IconIndex_default[Gatherer_EGatherType.treasure] do
		local index, treasure_regex, i, j, treasType;
		if ( input == iconName ) then
			return iconName;
		end

		if ( string.find(input, iconName) ) then
			for index, treasure_regex in TREASURE_REGEX_DEFAULT do
				i,j, treasType = string.find(input, treasure_regex);
				if ( treasType and treasType == iconName ) then
					return iconName;
				end

				i,j, _, treasType = string.find(input, treasure_regex);
				if ( treasType and treasType == iconName ) then
					return iconName;
				end
			end
		end
	end
	return;
end

function Gatherer_FindFishType_default(fishItem, fishTooltip)
	if ( fishItem  and (strfind(fishItem, TREASURE_FISHNODE_TRIGGER1_DEFAULT) ))
	then
		return TREASURE_FISHWRECK_DEFAULT;
		-- Fish School
	elseif ( fishTooltip and (strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER4_DEFAULT) or
			(TREASURE_FISHNODE_TRIGGER3_DEFAULT and strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER3_DEFAULT))))
	then
		return TREASURE_FISHNODE_DEFAULT;
		-- Floating Wreckage and Oil Spill
	elseif ( fishTooltip and
			(strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER5_DEFAULT) or
					strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER6_DEFAULT)))
	then
		return TREASURE_FISHWRECK_DEFAULT;
		-- Elemental Water
	elseif ( fishTooltip and strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER7_DEFAULT) )
	then
		return TREASURE_FISHELEM_DEFAULT;
	end
	return nil;
end


function Gatherer_apply_locale(locale)
	if ( locale == "frFR" ) then
		-- French localized variables
		GATHERER_VERSION_WARNING="Nouvelle version de Gatherer d\195\169tect\195\169e, v\195\169rifiez le zone match.";
		GATHERER_NOTEXT="([-]) pas de texte "

		-- TRADE NAME
		TRADE_HERBALISM="Herboristerie";
		OLD_TRADE_HERBALISM="Herboristerie";
		TRADE_MINING="Minage"
		TRADE_OPENING="Ouverture"
		GATHER_HERBALISM="Cueillette"

		-- strings for gather line in chat
		HERB_GATHER_STRING="Vous ex\195\169cutez Cueillette sur"
		ORE_GATHER_STRING="Vous ex\195\169cutez Minage sur"
		TREASURE_GATHER_STRING="Vous ex\195\169cutez Ouverture sur"

		GATHERER_REQUIRE="N\195\169cessite"
		GATHERER_NOSKILL="Requiert"

		-- Length of the string to keep the gather name
		HERB_GATHER_LENGTH=31
		HERB_GATHER_END=-2
		ORE_GATHER_LENGTH=27
		ORE_GATHER_END=-2
		TREASURE_GATHER_LENGTH=30
		TREASURE_GATHER_END=-2

		-- ore classes
		ORE_CLASS_VEIN   ="veine"
		ORE_CLASS_DEPOSIT="d\195\169p\195\180t"
		ORE_CLASS_LODE   ="filon"
		ORE_CLASS_SEAM   ="gisement"

		-- ore types
		ORE_COPPER     ="cuivre"
		ORE_TIN        ="\195\169tain"
		ORE_IRON       ="fer"
		ORE_SILVER     ="argent"
		ORE_TRUESILVER ="vrai-argent"
		ORE_GOLD       ="or"
		ORE_MITHRIL    ="mithril"
		ORE_THORIUM    ="thorium"
		ORE_RTHORIUM   ="thorium (riche)"
		ORE_DARKIRON   ="sombrefer"

		-- herb types (ingame verified translations)
		HERB_PEACEBLOOM        ="pacifique"
		HERB_SILVERLEAF        ="feuillargent"
		HERB_EARTHROOT         ="terrestrine"
		HERB_MAGEROYAL         ="mage royal"
		HERB_BRIARTHORN        ="eglantine"
		HERB_STRANGLEKELP      ="etouffante"
		HERB_SWIFTTHISTLE      ="chardonnier"
		HERB_BRUISEWEED        ="doulourante"
		HERB_WILDSTEELBLOOM    ="aci\195\169rite sauvage"
		HERB_GRAVEMOSS         ="tombeline"
		HERB_KINGSBLOOD        ="sang-royal"
		HERB_LIFEROOT          ="viet\195\169rule"
		HERB_FADELEAF          ="p\195\162lerette"
		HERB_KHADGARSWHISKER   ="moustache de khadgar"
		HERB_FIREBLOOM         ="fleur de feu"
		HERB_GOLDTHORN         ="dor\195\169pine"
		HERB_PURPLELOTUS       ="lotus pourpre"
		HERB_BLINDWEED         ="aveuglette"
		HERB_SUNGRASS          ="soleillette"
		HERB_GHOSTMUSHROOM     ="champignon fant\195\180me"
		HERB_GOLDENSANSAM      ="sansam dor\195\169"
		HERB_GROMSBLOOD        ="gromsang"
		HERB_WILDVINE	       ="sauvageonne"
		HERB_WINTERSBITE       ="hivernale"
		HERB_ARTHASTEAR        ="larmes d'arthas"
		HERB_BLACKLOTUS        ="lotus noir"
		HERB_DREAMFOIL         ="feuiller\195\170ve"
		HERB_ICECAP            ="calot de glace"
		HERB_MOUNTAINSILVERSAGE="sauge\-argent des montagnes"
		HERB_PLAGUEBLOOM       ="fleur de peste"

		-- treasure types
		-- Note: BARREL is a placeholder, chances are it's translated by the one corresponding to CASK.
		TREASURE_BOX        ="bo\195\174te"
		TREASURE_CHEST      ="coffre"
		TREASURE_CLAM       ="palourde"
		TREASURE_CRATE      ="caisse"
		TREASURE_BARREL     ="barrique"
		TREASURE_CASK       ="tonneau"
		TREASURE_SHELLFISHTRAP="casier \195\160 crustac\195\169s"
		TREASURE_FOOTLOCKER   = "cantine"

		TREASURE_BLOODHERO    = "sang des h\195\169ros"

		TREASURE_BLOODPETAL   = "p\195\169tale de sang"
		TREASURE_BLOODPETAL_G = "pousse de p\195\169tale([-])de([-])sang"
		TREASURE_POWERCRYST   = "cristal de puissance"
		TREASURE_UNGOROSOIL_G = "tas de poussi\195\168re"
		TREASURE_UNGOROSOIL   = "humus d'Un'Goro"

		TREASURE_NIGHTDRAGON 	= "dragon nocturne"
		TREASURE_WHIPPERROOT 	= "navetille"
		TREASURE_WINDBLOSSOM_G 	= "fleur([-])de([-])vent"
		TREASURE_WINDBLOSSOM 	= "fleur de vent"
		TREASURE_SONGFLOWER_G 	= "fleur([-])de([-])chant"
		TREASURE_SONGFLOWER 	= "fleur de chant"

		TREASURE_FISHNODE_TRIGGER1	= "Malle";
	--	TREASURE_FISHNODE_TRIGGER2	= "boursoufl\195\169"; -- no longer found in wreckage in 1.11

		TREASURE_FISHNODE_TRIGGER4	= "banc d";
		TREASURE_FISHNODE_TRIGGER5	= "d\195\169bris flottant";
		TREASURE_FISHNODE_TRIGGER6	= "nappe de p\195\169trole";
		TREASURE_FISHNODE_TRIGGER7	= "remous d'eau \195\169l\195\169mentaire";

		TREASURE_FISHNODE		= "banc";
		TREASURE_FISHWRECK		= TREASURE_FISHNODE_TRIGGER5;
		TREASURE_FISHELEM		= TREASURE_FISHNODE_TRIGGER7;

		GATHERER_ReceivesLoot		= "Vous recevez le butin : (.+)%.";

		TREASURE_REGEX = {
			[1] = " ([^ ]+)$",
			[2] = "^([^ ]+) ",
			[3] = "([^ ]+) ([^ ]+) ",
			[4] = "([^ ]+) ([^ ]+)$",
		};


		function Gatherer_FindOreType(input)
			local i,j, oreType, oreClass, oreArticle;
			local trinput=string.gsub(input, '\'', " ")

			if ( string.find(input, "riche") and string.find(input, "thorium") ) then
				return ORE_RTHORIUM;
			end;

			if ( string.find(input, ORE_DARKIRON)) then
				return ORE_DARKIRON;
			end

			i, j, oreClass, oreArticle, oreType = string.find(input, "([^ ]+) ([^ ]+) ([^ ]+)$");
			if (oreClass ~= ORE_CLASS_VEIN and oreClass ~= ORE_CLASS_DEPOSIT and oreClass ~= ORE_CLASS_LODE and oreClass ~= ORE_CLASS_SEAM) then
				i, j, oreClass, oreArticle, oreType = string.find(trinput, "^([^ ]+) ([^ ]+) ([^ ]+)");
			end
			if (oreType and oreClass and (oreClass == ORE_CLASS_VEIN or oreClass == ORE_CLASS_DEPOSIT or oreClass == ORE_CLASS_LODE or oreClass == ORE_CLASS_SEAM)) then
				return oreType;
			end
			return Gatherer_FindOreType_default(input);
		end

		function Gatherer_FindTreasureType(in_input)
			local iconName, input;
			input = string.gsub(in_input, GATHERER_NOTEXT, "")

			if ( string.find(input, TREASURE_UNGOROSOIL_G) ) then
				return TREASURE_UNGOROSOIL, TREASURE_UNGOROSOIL;
			end

			if (string.find(input, TREASURE_POWERCRYST) ) then
				return TREASURE_POWERCRYST, TREASURE_POWERCRYST;
			end

			if (string.find(input, TREASURE_BLOODPETAL_G) or string.find(input, TREASURE_BLOODPETAL)) then
				return TREASURE_BLOODPETAL, TREASURE_BLOODPETAL;
			end

			if (string.find(input, TREASURE_BLOODHERO) ) then
				return TREASURE_BLOODHERO, TREASURE_BLOODHERO;
			end

			if (string.find(input, TREASURE_WINDBLOSSOM_G) or string.find(input, TREASURE_WINDBLOSSOM)) then
				return TREASURE_WINDBLOSSOM, TREASURE_WINDBLOSSOM;
			end

			if (string.find(input, TREASURE_SONGFLOWER_G) or string.find(input, TREASURE_SONGFLOWER)) then
				return TREASURE_SONGFLOWER, TREASURE_SONGFLOWER;
			end

			for iconName in Gather_DB_IconIndex[0] do
				local index, treasure_regex, i, j, treasType;
				if ( input == iconName ) then
					return iconName;
				end

				if ( string.find(input, iconName) ) then
					for index, treasure_regex in TREASURE_REGEX do
						i,j, treasType = string.find(input, treasure_regex);
						if ( treasType and treasType == iconName ) then
							return iconName;
						end

						i,j, _, treasType = string.find(input, treasure_regex);
						if ( treasType and treasType == iconName ) then
							return iconName;
						end
					end
				end
			end
			return Gatherer_FindTreasureType_default(in_input);
		end
	-- Common Values, Functions
		TYPE_RARE		= "Rare";
	elseif ( locale == "deDE" ) then
		-- German localized variables
		GATHERER_VERSION_WARNING="New zone order detected, check zone match to translate old zones to new order.";
		GATHERER_NOTEXT="([-]) Kein Text "

		-- TRADE NAME
		TRADE_HERBALISM="Kr\195\164uterkunde"
		OLD_TRADE_HERBALISM="Kr\195\164uterkunde"
		TRADE_MINING="Bergbau"
		TRADE_OPENING="\195\150ffnen"
		GATHER_HERBALISM="Kr\195\164utersammeln"

		-- strings for gather line in chat
		HERB_GATHER_STRING="Ihr f\195\188hrt Kr\195\164utersammeln auf" -- "Ihr fuhrt Krautersammeln auf Beulengras aus."
		ORE_GATHER_STRING="Ihr f\195\188hrt Bergbau auf"                -- "Ihr fuhrt Bergbau auf Kupfervorkommen aus."
		TREASURE_GATHER_STRING="Ihr f\195\188hrt \195\150ffnen auf"     -- "Ihr fuhrt Offnen auf Ramponierte Truhe aus."

		-- Length of the string to keep the gather name
		HERB_GATHER_LENGTH=32
		HERB_GATHER_END=-6
		ORE_GATHER_LENGTH=24
		ORE_GATHER_END=-6
		TREASURE_GATHER_LENGTH=24
		TREASURE_GATHER_END=-6

		GATHERER_REQUIRE="Ben\195\182tigt"
		GATHERER_NOSKILL="Erfordert"

		-- ore classes
		ORE_CLASS_VEIN   ="vorkommen"
		ORE_CLASS_DEPOSIT="ablagerung"

		-- ore types
		ORE_COPPER    ="kupfer"
		ORE_TIN       ="zinn"
		ORE_IRON      ="eisen"
		ORE_SILVER    ="silber"
		ORE_TRUESILVER="echtsilber"
		ORE_GOLD      ="gold"
		ORE_MITHRIL   ="mithril"
		ORE_THORIUM   ="thorium"
		ORE_RTHORIUM  ="thorium (reiches)"
		ORE_DARKIRON  ="dunkeleisen"

		-- herb types
		HERB_ARTHASTEAR        ="arthas\226\128\153 tr\195\164nen"
		HERB_BLACKLOTUS        ="schwarzer lotus"
		HERB_BLINDWEED         ="blindkraut"
		HERB_BRIARTHORN        ="wilddornrose"
		HERB_BRUISEWEED        ="beulengras"
		HERB_DREAMFOIL         ="traumblatt"
		HERB_EARTHROOT         ="erdwurzel"
		HERB_FADELEAF          ="blassblatt"
		HERB_FIREBLOOM         ="feuerbl\195\188te"
		HERB_GHOSTMUSHROOM     ="geisterpilz"
		HERB_GOLDENSANSAM      ="goldener sansam"
		HERB_GOLDTHORN         ="golddorn"
		HERB_GRAVEMOSS         ="grabmoos"
		HERB_GROMSBLOOD        ="gromsblut"
		HERB_ICECAP            ="eiskappe"
		HERB_KHADGARSWHISKER   ="khadgars schnurrbart"
		HERB_KINGSBLOOD        ="k\195\182nigsblut"
		HERB_LIFEROOT          ="lebenswurz"
		HERB_MAGEROYAL         ="magusk\195\182nigskraut"
		HERB_MOUNTAINSILVERSAGE="bergsilberweisling"
		HERB_PEACEBLOOM        ="friedensblume"
		HERB_PLAGUEBLOOM       ="pestbl\195\188te"
		HERB_PURPLELOTUS       ="lila lotus"
		HERB_SILVERLEAF        ="silberblatt"
		HERB_STRANGLEKELP      ="w\195\188rgetang"
		HERB_SUNGRASS          ="sonnengras"
		HERB_SWIFTTHISTLE      ="flitzdistel"
		HERB_WILDSTEELBLOOM    ="wildstahlblume"
		HERB_WINTERSBITE       ="winterbiss"
		HERB_WILDVINE          ="wildranke"

		-- treasure types
		TREASURE_BOX        ="kiste"
		TREASURE_CHEST      ="truhe"
		TREASURE_CLAM       ="muschel"
		TREASURE_CRATE      ="kasten"
		TREASURE_BARREL     ="tonne"
		TREASURE_CASK       ="fass"
		TREASURE_SHELLFISHTRAP="schalentierfalle"
		TREASURE_FOOTLOCKER = "schlie\195\159kiste"

		TREASURE_BLOODHERO  = "blut von helden"

		TREASURE_UNGOROSOIL_G = "erdhaufen"
		TREASURE_BLOODPETAL = "blutbl\195\188te"
		TREASURE_BLOODPETAL_G = "blutbl\195\188tenspr\195\182ssling"
		TREASURE_POWERCRYST = "machtkristall"
		TREASURE_UNGOROSOIL = "un'Goro erde"

		TREASURE_NIGHTDRAGON 	= "nachtdrache"
		TREASURE_WHIPPERROOT 	= "peitscherwurzel"
		TREASURE_WINDBLOSSOM 	= "windbl\195\188te"
		TREASURE_SONGFLOWER 	= "liedblume"

		TREASURE_FISHNODE_TRIGGER1	= "Geh\195\164use";
	--	TREASURE_FISHNODE_TRIGGER2	= "Aufgedunsener"; -- no longer found in wreckage in 1.11

		TREASURE_FISHNODE_TRIGGER4	= "schwarm";
		TREASURE_FISHNODE_TRIGGER5	= "schwimmende tr\195\188mmer";
		TREASURE_FISHNODE_TRIGGER6  = "\195\150lfleck";
		TREASURE_FISHNODE_TRIGGER7	= "stelle mit elementarwasser";

		TREASURE_FISHNODE			= "schwarm";
		TREASURE_FISHWRECK			= TREASURE_FISHNODE_TRIGGER5;
		TREASURE_FISHELEM			= TREASURE_FISHNODE_TRIGGER7;

		GATHERER_ReceivesLoot		= "Ihr bekommt Beute: (.+)%.";

		TREASURE_REGEX = {
			[1] = " ([^ ]+)$",
			[2] = "^([^ ]+) ",
			[3] = "([^ ]+) ([^ ]+) ",
			[4] = "([^ ]+) ([^ ]+)$",
			[5] = "^([^ ]+)$",
		};

		function Gatherer_FindOreType(input)
			local i,j, oreType, oreClass, oreTypeClass;

			if ( string.find(input, "reiches") and string.find(input, "thorium") ) then
				 return ORE_RTHORIUM;
			end;

			-- fix for ooze covered
			oreTypeClass = string.gsub(string.gsub(string.gsub(string.gsub(input, "br\195\188hschlammbedecktes ", ""), "kleines ", ""), "reiches ", "" ), "br\195\188hschlammbedeckte ", "" );

			if (string.find(oreTypeClass, ORE_CLASS_VEIN)) then
				oreType = strsub(oreTypeClass, 0, string.len(oreTypeClass)-string.len(ORE_CLASS_VEIN));
				oreClass = ORE_CLASS_VEIN;
			end
			if (string.find(oreTypeClass, ORE_CLASS_DEPOSIT)) then
				oreType = strsub(oreTypeClass, 0, string.len(oreTypeClass)-string.len(ORE_CLASS_DEPOSIT));
				oreClass = ORE_CLASS_DEPOSIT;
			end
			if( oreClass == ORE_CLASS_DEPOSIT and oreType == ORE_SILVER ) then
				   oreType = ORE_TRUESILVER;
			end
			if (oreType and oreClass and ((oreClass == ORE_CLASS_VEIN) or (oreClass == ORE_CLASS_DEPOSIT))) then
				return oreType;
			end
			return Gatherer_FindOreType_default(input);
		end

		function Gatherer_FindTreasureType(in_input)
			local iconName, input;

			-- fix for clams
			input = string.gsub(string.gsub(in_input, GATHERER_NOTEXT, ""), "riesen", "");

			if ( string.find(input, TREASURE_UNGOROSOIL_G) or string.find(input, TREASURE_UNGOROSOIL)) then
				return TREASURE_UNGOROSOIL, TREASURE_UNGOROSOIL;
			end

			if (string.find(input, TREASURE_POWERCRYST) ) then
				return TREASURE_POWERCRYST, TREASURE_POWERCRYST;
			end

			if (string.find(input, TREASURE_BLOODPETAL_G) or string.find(input, TREASURE_BLOODPETAL)) then
				return TREASURE_BLOODPETAL, TREASURE_BLOODPETAL_G;
			end

			if (string.find(input, TREASURE_BLOODHERO) ) then
				return TREASURE_BLOODHERO, TREASURE_BLOODHERO;
			end

			for iconName in Gather_DB_IconIndex[0] do
				local index, treasure_regex, i, j, treasType;
				if ( input == iconName ) then
					return iconName;
				end

				if ( string.find(input, iconName) ) then
					for index, treasure_regex in TREASURE_REGEX do
						i,j, treasType = string.find(input, treasure_regex);
						if ( treasType and treasType == iconName ) then
							return iconName;
						end

						i,j, _, treasType = string.find(input, treasure_regex);
						if ( treasType and treasType == iconName ) then
							return iconName;
						end
					end
				end

				if ( string.find(string.lower(input), string.lower(iconName))) then
					return iconName;
				end
			end
			return Gatherer_FindTreasureType_default(in_input);
		end
		-- Common Values, Functions
		TYPE_RARE		= "Rare";
	elseif (  locale == "zhCN"  ) then

		-- Chinese localized variables
		-- localized by biAji
		GATHERER_VERSION_WARNING="New Gatherer Version detected, check zone match.";
		GATHERER_NOTEXT="([-]) no text "

		-- TRADE NAME
		TRADE_HERBALISM="\232\141\137\232\141\175\229\173\166"
		OLD_TRADE_HERBALISM="\232\141\137\232\141\175\229\173\166"
		TRADE_MINING="\233\135\135\231\159\191"
		TRADE_OPENING="Opening"
		GATHER_HERBALISM="Herb Gathering"

		-- strings for gather line in chat
		HERB_GATHER_STRING="\228\189\191\231\148\168\233\135\135\233\155\134"
		ORE_GATHER_STRING="\228\189\191\231\148\168\233\135\135\231\159\191"
		TREASURE_GATHER_STRING="\228\189\191\231\148\168\230\137\147\229\188\128"

		-- Length of the string to keep the gather name
		HERB_GATHER_LENGTH=5
		HERB_GATHER_END=-20
		ORE_GATHER_LENGTH=5
		ORE_GATHER_END=-15
		TREASURE_GATHER_LENGTH=5
		TREASURE_GATHER_END=-15

		GATHERER_REQUIRE="\233\156\128\232\166\129"
		GATHERER_NOSKILL="\233\156\128\232\166\129\231\173\137\231\186\167"

		-- ore classes
		ORE_CLASS_VEIN   ="\231\159\191"
		ORE_CLASS_DEPOSIT="\231\159\191\231\159\179"

		-- ore types
		ORE_COPPER    ="\233\147\156"
		ORE_TIN       ="\233\148\161"
		ORE_IRON      ="\233\147\129"
		ORE_SILVER    ="\233\147\182"
		ORE_TRUESILVER="\231\156\159\233\147\182"
		ORE_GOLD      ="\233\135\145"
		ORE_MITHRIL   ="\231\167\152\233\147\182"
		ORE_THORIUM   ="\231\145\159\233\147\182"
		ORE_RTHORIUM  ="\229\175\140\231\145\159\233\147\182"
		ORE_DARKIRON  ="\233\187\145\233\147\129"

		-- herb types
		HERB_ARTHASTEAR        ="\233\152\191\229\176\148\232\144\168\230\150\175\228\185\139\230\179\170"
		HERB_BLACKLOTUS        ="\233\187\145\232\142\178\232\138\177"
		HERB_BLINDWEED         ="\231\155\178\231\155\174\232\141\137"
		HERB_BRIARTHORN        ="\231\159\179\229\141\151\232\141\137"
		HERB_BRUISEWEED        ="\232\183\140\230\137\147\232\141\137"
		HERB_DREAMFOIL         ="\230\162\166\229\143\182\232\141\137"
		HERB_EARTHROOT         ="\229\156\176\230\160\185\232\141\137"
		HERB_FADELEAF          ="\230\158\175\229\143\182\232\141\137"
		HERB_FIREBLOOM         ="\231\129\171\231\132\176\232\138\177"
		HERB_GHOSTMUSHROOM     ="\229\185\189\231\129\181\232\143\135"
		HERB_GOLDENSANSAM      ="\233\187\132\233\135\145\229\143\130"
		HERB_GOLDTHORN         ="\233\135\145\230\163\152\232\141\137"
		HERB_GRAVEMOSS         ="\229\162\147\229\156\176\232\139\148"
		HERB_GROMSBLOOD        ="\230\160\188\231\189\151\229\167\134\228\185\139\232\161\128"
		HERB_ICECAP            ="\229\134\176\231\155\150\232\141\137"
		HERB_KHADGARSWHISKER   ="\229\141\161\229\190\183\229\138\160\231\154\132\232\131\161\233\161\187"
		HERB_KINGSBLOOD        ="\231\154\135\232\161\128\232\141\137"
		HERB_LIFEROOT          ="\230\180\187\230\160\185\232\141\137"
		HERB_MAGEROYAL         ="\233\173\148\231\154\135\232\141\137"
		HERB_MOUNTAINSILVERSAGE="\229\177\177\233\188\160\232\141\137"
		HERB_PEACEBLOOM        ="\229\174\129\231\165\158\232\138\177"
		HERB_PLAGUEBLOOM       ="\231\152\159\231\150\171\232\138\177"
		HERB_PURPLELOTUS       ="\231\180\171\232\142\178\232\138\177"
		HERB_SILVERLEAF        ="\233\147\182\229\143\182\232\141\137"
		HERB_STRANGLEKELP      ="\232\141\134\230\163\152\232\151\187"
		HERB_SUNGRASS          ="\229\164\170\233\152\179\232\141\137"
		HERB_SWIFTTHISTLE      ="\233\155\168\231\135\149\232\141\137"
		HERB_WILDSTEELBLOOM    ="\233\135\142\233\146\162\232\138\177"
		HERB_WINTERSBITE       ="\229\134\172\229\136\186\232\141\137"
		HERB_WILDVINE	       ="\233\135\142\232\145\161\232\144\132\232\151\164"

		-- treasure types
		TREASURE_BOX   		="\231\160\180\230\141\159\231\154\132\231\155\146\229\173\144"
		TREASURE_CHEST 		="\231\174\177\229\173\144"
		TREASURE_CLAM  		="\229\183\168\229\158\139\232\154\140\229\163\179"
		TREASURE_CRATE 		="\230\157\191\230\157\161\231\174\177"
		TREASURE_BARREL		="\230\156\168\230\161\182"
		TREASURE_CASK  		="\229\176\143\229\156\134\230\161\182"
		TREASURE_SHELLFISHTRAP	="shellfish trap"
		TREASURE_FOOTLOCKER 	= "footlocker"

		TREASURE_BLOODHERO  	= "\232\139\177\233\155\132\228\185\139\232\161\128"

		TREASURE_UNGOROSOIL 	= "\229\174\137\230\136\136\230\180\155\231\154\132\230\179\165\229\156\159"
		TREASURE_UNGOROSOIL_G	= "\229\174\137\230\136\136\230\180\155\229\156\159\229\160\134"
		TREASURE_BLOODPETAL 	= "\232\161\128\231\147\163\232\138\177"
		TREASURE_BLOODPETAL_G 	= "\232\161\128\231\147\163\232\138\177\232\139\151"
		TREASURE_POWERCRYST 	= "\232\131\189\233\135\143\230\176\180\230\153\182"

		TREASURE_NIGHTDRAGON 	= "night dragon"
		TREASURE_WHIPPERROOT 	= "whipper root"
		TREASURE_WINDBLOSSOM 	= "windblossom"
		TREASURE_SONGFLOWER 	= "songflower"

		TREASURE_FISHNODE_TRIGGER1	= "Trunk";
	--	TREASURE_FISHNODE_TRIGGER2	= "Bloated"; -- no longer found in wreckage in 1.11

		TREASURE_FISHNODE_TRIGGER4	= "school";
		TREASURE_FISHNODE_TRIGGER5	= "floating wreckage";
		TREASURE_FISHNODE_TRIGGER6	= "oil spill";
		TREASURE_FISHNODE_TRIGGER7	= "patch of elemental water";

		TREASURE_FISHNODE		= "school";
		TREASURE_FISHWRECK		= TREASURE_FISHNODE_TRIGGER5;
		TREASURE_FISHELEM		= TREASURE_FISHNODE_TRIGGER7;

		GATHERER_ReceivesLoot		= "You receive loot: (.+)%.";

		TREASURE_REGEX = {
			[1] = " ([^ ]+)$",
			[2] = "^([^ ]+)",
			[3] = "([^ ]+) ([^ ]+) ",
		};

		function Gatherer_FindOreType(input)
			local i,j, oreType, oreClass, oreTypeClass;

			if ( string.find(input, "\229\175\140") and string.find(input, "\231\145\159\233\147\182") ) then
				return ORE_RTHORIUM;
			end;


			--i,j, oreType, oreClass = string.find(input, "([^ ]+) ([^ ]+)$");
			oreTypeClass = input;
			if (string.find(oreTypeClass, ORE_CLASS_VEIN)) then
			   oreType = strsub(oreTypeClass, 0, string.len(oreTypeClass)-string.len(ORE_CLASS_VEIN));
			   oreClass = ORE_CLASS_VEIN;
			end
			if (string.find(oreTypeClass, ORE_CLASS_DEPOSIT)) then
			   oreType = strsub(oreTypeClass, 0, string.len(oreTypeClass)-string.len(ORE_CLASS_DEPOSIT));
			   oreClass = ORE_CLASS_DEPOSIT;
			end
			if( oreClass == ORE_CLASS_DEPOSIT and oreType == ORE_SILVER ) then
			   oreType = ORE_TRUESILVER;
			end

			if (oreType and oreClass and ((oreClass == ORE_CLASS_VEIN) or (oreClass == ORE_CLASS_DEPOSIT))) then
				return oreType;
			end
			return Gatherer_FindOreType_default(input);
		end

		function Gatherer_FindTreasureType(in_input)
			local iconName, input;

			input =string.gsub(in_input, GATHERER_NOTEXT, "")
			if ( string.find(input, TREASURE_UNGOROSOIL_G) or string.find(input, TREASURE_UNGOROSOIL)) then
				return TREASURE_UNGOROSOIL, TREASURE_UNGOROSOIL;
			end

			if (string.find(input, TREASURE_POWERCRYST) ) then
				return TREASURE_POWERCRYST, TREASURE_POWERCRYST;
			end

			if (string.find(input, TREASURE_BLOODPETAL_G) or string.find(input, TREASURE_BLOODPETAL)) then
				return TREASURE_BLOODPETAL, TREASURE_BLOODPETAL_G;
			end

			if (string.find(input, TREASURE_BLOODHERO) ) then
				return TREASURE_BLOODHERO, TREASURE_BLOODHERO;
			end

			for iconName in Gather_DB_IconIndex[0] do
				local index, treasure_regex, i, j, treasType;
				if ( input == iconName ) then
					return iconName;
				end

				if ( string.find(input, iconName) ) then
					for index, treasure_regex in TREASURE_REGEX do
						i,j, treasType = string.find(input, treasure_regex);
						if ( treasType and treasType == iconName ) then
							return iconName;
						end

						i,j, _, treasType = string.find(input, treasure_regex);
						if ( treasType and treasType == iconName ) then
							return iconName;
						end
					end
				end
			end
			return Gatherer_FindTreasureType_default(in_input);
		end
		-- Common Values, Functions
		TYPE_RARE		= "Rare";

	elseif ( locale == "ruRU" ) then
		-- Russian localized variables (Maus and fix by CFM)
		GATHERER_VERSION_WARNING="Обнаружена новая версия Gatherer, проверь zone match.";
		GATHERER_NOTEXT="([-]) no text "

		TRADE_HERBALISM="Травничество"
		OLD_TRADE_HERBALISM="Травничество"
		TRADE_MINING="Горное дело"
		TRADE_OPENING="Открытие"
		GATHER_HERBALISM="Сбор трав"

		HERB_GATHER_STRING="Вы применяете Сбор трав на"
		ORE_GATHER_STRING="Вы применяете Горное дело на"
		TREASURE_GATHER_STRING="Вы применяете Открытие на"

		HERB_GATHER_LENGTH=31
		HERB_GATHER_END=-2
		ORE_GATHER_LENGTH=31
		ORE_GATHER_END=-2
		TREASURE_GATHER_LENGTH=31
		TREASURE_GATHER_END=-2

		GATHERER_REQUIRE="Требуется:"
		GATHERER_NOSKILL="быть не менее"

		-- ore types
		ORE_COPPER    ="Медная жила"
		ORE_TIN       ="Оловянная жила"
		ORE_IRON      ="Залежи железа"
		ORE_SILVER    ="Серебряная жила"
		ORE_TRUESILVER="Залежи истинного серебра"
		ORE_GOLD      ="Золотая жила"
		ORE_MITHRIL   ="Мифриловые залежи"
		ORE_THORIUM   ="Ториевая жила"
		ORE_RTHORIUM  ="Богатая ториевая жила"
		ORE_DARKIRON  ="Залежи черного железа"

		-- herb types
		HERB_ARTHASTEAR        ="Слезы артаса"
		HERB_BLACKLOTUS        ="Черный лотос"
		HERB_BLINDWEED         ="Пастушья сумка"
		HERB_BRIARTHORN        ="Остротерн"
		HERB_BRUISEWEED        ="Синячник"
		HERB_DREAMFOIL         ="Снолист"
		HERB_EARTHROOT         ="Земляной корень"
		HERB_FADELEAF          ="Бледнолист"
		HERB_FIREBLOOM         ="Огнецвет"
		HERB_GHOSTMUSHROOM     ="Призрачная поганка"
		HERB_GOLDENSANSAM      ="Золотой сансам"
		HERB_GOLDTHORN         ="Златошип"
		HERB_GRAVEMOSS         ="Могильный мох"
		HERB_GROMSBLOOD        ="Кровь Грома"
		HERB_ICECAP            ="Ледяной зев"
		HERB_KHADGARSWHISKER   ="Кадгаров ус"
		HERB_KINGSBLOOD        ="Королевская кровь"
		HERB_LIFEROOT          ="Корень жизни"
		HERB_MAGEROYAL         ="Магороза"
		HERB_MOUNTAINSILVERSAGE="Горный серебряный шалфей"
		HERB_PEACEBLOOM        ="Мироцвет"
		HERB_PLAGUEBLOOM       ="Чумоцвет"
		HERB_PURPLELOTUS       ="Лиловый лотос"
		HERB_SILVERLEAF        ="Сребролист"
		HERB_STRANGLEKELP      ="Удавник"
		HERB_SUNGRASS          ="Солнечник"
		HERB_SWIFTTHISTLE      ="Скорополох"
		HERB_WILDSTEELBLOOM    ="Дикий сталецвет"
		HERB_WINTERSBITE       ="Морозник"
		HERB_WILDVINE	       ="Дикая лоза"

		-- treasure types
		TREASURE_BOX        	="Коробка"
		TREASURE_CHEST      	="Сундук"
		TREASURE_CLAM       	="Гигантский моллюск"
		TREASURE_CRATE      	="Ящик"
		TREASURE_BARREL     	="Бочонок"
		TREASURE_CASK       	="Бочка"
		TREASURE_SHELLFISHTRAP	="Ловушка на моллюска"
		TREASURE_FOOTLOCKER 	= "Сундучки"

		TREASURE_BLOODHERO  	= "Кровь героев"

		TREASURE_UNGOROSOIL 	= "Почва ун'Горо"
		TREASURE_UNGOROSOIL_G	= "Куча земли"
		TREASURE_BLOODPETAL 	= "Побег кровоцвета"
		TREASURE_BLOODPETAL_G 	= "Росток кровоцвета"
		TREASURE_POWERCRYST 	= "Кристалл силы"

		TREASURE_NIGHTDRAGON 	= "Ночной дракон"
		TREASURE_WHIPPERROOT 	= "Гнилой кнутокорень"
		TREASURE_WINDBLOSSOM 	= "Оскверненный ветроцвет"
		TREASURE_SONGFLOWER 	= "Оскверненный песнецвет"

		TREASURE_FISHNODE_TRIGGER1	= "Сундучок";
		TREASURE_FISHNODE_TRIGGER3	= "Стая";
		TREASURE_FISHNODE_TRIGGER4	= "Косяк";
		TREASURE_FISHNODE_TRIGGER5	= "Плавающие обломки";
		TREASURE_FISHNODE_TRIGGER6	= "Нефтяное пятно";
		TREASURE_FISHNODE_TRIGGER7	= "Пятно элементарной воды";

		TREASURE_FISHNODE		= "Стая рыбы";
		TREASURE_FISHWRECK		= TREASURE_FISHNODE_TRIGGER5;
		TREASURE_FISHELEM		= TREASURE_FISHNODE_TRIGGER7;

		GATHERER_ReceivesLoot		= "Ваша добыча: (.+)%.";

		function Gatherer_FindOreType(input)
			if ( string.find(input, "едная") and string.find(input, "жила") ) then --cooper
				return ORE_COPPER;
			elseif ( string.find(input, "ловянная") and string.find(input, "жила") ) then --tin
				return ORE_TIN;
			elseif ( string.find(input, "алежи") and string.find(input, "железа") ) then -- iron
				return ORE_IRON;
			elseif ( string.find(input, "еребряная") and string.find(input, "жила") ) then -- silver
				return ORE_SILVER;
			elseif ( string.find(input, "истинного") and string.find(input, "серебра") ) then -- truesilver
				return ORE_TRUESILVER;
			elseif ( string.find(input, "олотая") and string.find(input, "жила") ) then  -- gold
				return ORE_GOLD;
			elseif ( string.find(input, "ифриловые") and string.find(input, "залежи") ) then -- mithril
				return ORE_MITHRIL;
			elseif ( string.find(input, "огатая") and string.find(input, "ториевая") ) then --rich thorium
				return ORE_RTHORIUM;
			elseif ( string.find(input, "черного") and string.find(input, "железа") ) then --darkiron
				return ORE_DARKIRON;
			elseif ( string.find(input, "ориевая") and string.find(input, "жила") ) then  --thorium
				return ORE_THORIUM;
			end

			return Gatherer_FindOreType_default(input);
		end

		function Gatherer_FindTreasureType(input)
			if string.find(input, "Гигантский моллюск") then
				return TREASURE_CLAM;
			elseif string.find(input, "Добротный сундук") or string.find(input, "Сундук") or string.find(input, "сундук") then
				return TREASURE_CHEST;
			elseif string.find(input, "Ящик") or string.find(input, "ящик") then
				return TREASURE_CRATE;
			elseif string.find(input, "Кровь героев") then
				return TREASURE_BLOODHERO;
			elseif string.find(input, "Почва Ун'Горо") or string.find(input, "Куча земли Ун'Горо") then
				return TREASURE_UNGOROSOIL;
			elseif string.find(input, "Побег кровоцвета") then
				return TREASURE_BLOODPETAL;
			elseif string.find(input, "кристалл силы") or string.find(input, "Кристалл силы") then
				return TREASURE_POWERCRYST;
			elseif string.find(input, "Ночной дракон") then
				return TREASURE_NIGHTDRAGON;
			elseif string.find(input, "Гнилой кнутокорень") then
				return TREASURE_WHIPPERROOT;
			elseif string.find(input, "Оскверненный ветроцвет") then
				return TREASURE_WINDBLOSSOM;
			elseif string.find(input, "Оскверненный песнецвет") then
				return TREASURE_SONGFLOWER;
			end

			return Gatherer_FindTreasureType_default(input);
		end
		TYPE_RARE		= "Редкое";

	else
		-- English localized variables (default)
		GATHERER_VERSION_WARNING="New Gatherer Version detected, check zone match.";
		GATHERER_NOTEXT=GATHERER_NOTEXT_DEFAULT

		-- TRADE NAME
		TRADE_HERBALISM="Herbalism"
		OLD_TRADE_HERBALISM="Herbalism"
		TRADE_MINING="Mining"
		TRADE_OPENING="Opening"
		GATHER_HERBALISM="Herb Gathering"

		-- strings for gather line in chat
		HERB_GATHER_STRING="You perform Herb Gathering on"
		ORE_GATHER_STRING="You perform Mining on"
		TREASURE_GATHER_STRING="You perform Opening on"

		-- Length of the string to keep the gather name
		HERB_GATHER_LENGTH=31
		HERB_GATHER_END=-2
		ORE_GATHER_LENGTH=23
		ORE_GATHER_END=-2
		TREASURE_GATHER_LENGTH=24
		TREASURE_GATHER_END=-2

		GATHERER_REQUIRE="Requires"
		GATHERER_NOSKILL="Requires"

		-- ore classes
		ORE_CLASS_VEIN   =ORE_CLASS_VEIN_DEFAULT
		ORE_CLASS_DEPOSIT=ORE_CLASS_DEPOSIT_DEFAULT

		-- ore types
		ORE_COPPER    =ORE_COPPER_DEFAULT
		ORE_TIN       =ORE_TIN_DEFAULT
		ORE_IRON      =ORE_IRON_DEFAULT
		ORE_SILVER    =ORE_SILVER_DEFAULT
		ORE_TRUESILVER=ORE_TRUESILVER_DEFAULT
		ORE_GOLD      =ORE_GOLD_DEFAULT
		ORE_MITHRIL   =ORE_MITHRIL_DEFAULT
		ORE_THORIUM   =ORE_THORIUM_DEFAULT
		ORE_RTHORIUM  =ORE_RTHORIUM_DEFAULT
		ORE_DARKIRON  =ORE_DARKIRON_DEFAULT

		-- herb types
		HERB_ARTHASTEAR        =HERB_ARTHASTEAR_DEFAULT
		HERB_BLACKLOTUS        =HERB_BLACKLOTUS_DEFAULT
		HERB_BLINDWEED         =HERB_BLINDWEED_DEFAULT
		HERB_BRIARTHORN        =HERB_BRIARTHORN_DEFAULT
		HERB_BRUISEWEED        =HERB_BRUISEWEED_DEFAULT
		HERB_DREAMFOIL         =HERB_DREAMFOIL_DEFAULT
		HERB_EARTHROOT         =HERB_EARTHROOT_DEFAULT
		HERB_FADELEAF          =HERB_FADELEAF_DEFAULT
		HERB_FIREBLOOM         =HERB_FIREBLOOM_DEFAULT
		HERB_GHOSTMUSHROOM     =HERB_GHOSTMUSHROOM_DEFAULT
		HERB_GOLDENSANSAM      =HERB_GOLDENSANSAM_DEFAULT
		HERB_GOLDTHORN         =HERB_GOLDTHORN_DEFAULT
		HERB_GRAVEMOSS         =HERB_GRAVEMOSS_DEFAULT
		HERB_GROMSBLOOD        =HERB_GROMSBLOOD_DEFAULT
		HERB_ICECAP            =HERB_ICECAP_DEFAULT
		HERB_KHADGARSWHISKER   =HERB_KHADGARSWHISKER_DEFAULT
		HERB_KINGSBLOOD        =HERB_KINGSBLOOD_DEFAULT
		HERB_LIFEROOT          =HERB_LIFEROOT_DEFAULT
		HERB_MAGEROYAL         =HERB_MAGEROYAL_DEFAULT
		HERB_MOUNTAINSILVERSAGE=HERB_MOUNTAINSILVERSAGE_DEFAULT
		HERB_PEACEBLOOM        =HERB_PEACEBLOOM_DEFAULT
		HERB_PLAGUEBLOOM       =HERB_PLAGUEBLOOM_DEFAULT
		HERB_PURPLELOTUS       =HERB_PURPLELOTUS_DEFAULT
		HERB_SILVERLEAF        =HERB_SILVERLEAF_DEFAULT
		HERB_STRANGLEKELP      =HERB_STRANGLEKELP_DEFAULT
		HERB_SUNGRASS          =HERB_SUNGRASS_DEFAULT
		HERB_SWIFTTHISTLE      =HERB_SWIFTTHISTLE_DEFAULT
		HERB_WILDSTEELBLOOM    =HERB_WILDSTEELBLOOM_DEFAULT
		HERB_WINTERSBITE       =HERB_WINTERSBITE_DEFAULT
		HERB_WILDVINE	       =HERB_WILDVINE_DEFAULT

		-- treasure types
		TREASURE_BOX        	=TREASURE_BOX_DEFAULT
		TREASURE_CHEST      	=TREASURE_CHEST_DEFAULT
		TREASURE_CLAM       	=TREASURE_CLAM_DEFAULT
		TREASURE_CRATE      	=TREASURE_CRATE_DEFAULT
		TREASURE_BARREL     	=TREASURE_BARREL_DEFAULT
		TREASURE_CASK       	=TREASURE_CASK_DEFAULT
		TREASURE_SHELLFISHTRAP	=TREASURE_SHELLFISHTRAP_DEFAULT
		TREASURE_FOOTLOCKER 	= TREASURE_FOOTLOCKER_DEFAULT

		TREASURE_BLOODHERO  	= TREASURE_BLOODHERO_DEFAULT

		TREASURE_UNGOROSOIL 	= TREASURE_UNGOROSOIL_DEFAULT
		TREASURE_UNGOROSOIL_G	= TREASURE_UNGOROSOIL_G_DEFAULT
		TREASURE_BLOODPETAL 	= TREASURE_BLOODPETAL_DEFAULT
		TREASURE_BLOODPETAL_G 	= TREASURE_BLOODPETAL_G_DEFAULT
		TREASURE_POWERCRYST 	= TREASURE_POWERCRYST_DEFAULT

		TREASURE_NIGHTDRAGON 	= TREASURE_NIGHTDRAGON_DEFAULT
		TREASURE_WHIPPERROOT 	= TREASURE_WHIPPERROOT_DEFAULT
		TREASURE_WINDBLOSSOM 	= TREASURE_WINDBLOSSOM_DEFAULT
		TREASURE_SONGFLOWER 	= TREASURE_SONGFLOWER_DEFAULT

		TREASURE_FISHNODE_TRIGGER1	= TREASURE_FISHNODE_TRIGGER1_DEFAULT;
	--	TREASURE_FISHNODE_TRIGGER2	= "Bloated"; -- no longer found in wreckage in 1.11
		TREASURE_FISHNODE_TRIGGER3	= TREASURE_FISHNODE_TRIGGER3_DEFAULT;
		TREASURE_FISHNODE_TRIGGER4	= TREASURE_FISHNODE_TRIGGER4_DEFAULT;
		TREASURE_FISHNODE_TRIGGER5	= TREASURE_FISHNODE_TRIGGER5_DEFAULT;
		TREASURE_FISHNODE_TRIGGER6	= TREASURE_FISHNODE_TRIGGER6_DEFAULT;
		TREASURE_FISHNODE_TRIGGER7	= TREASURE_FISHNODE_TRIGGER7_DEFAULT;

		TREASURE_FISHNODE		= TREASURE_FISHNODE_DEFAULT;
		TREASURE_FISHWRECK		= TREASURE_FISHWRECK_DEFAULT;
		TREASURE_FISHELEM		= TREASURE_FISHELEM_DEFAULT;

		GATHERER_ReceivesLoot		= "You receive loot: (.+)%.";

		TREASURE_REGEX = TREASURE_REGEX_DEFAULT

		Gatherer_FindOreType = Gatherer_FindOreType_default;

		Gatherer_FindTreasureType = Gatherer_FindTreasureType_default;
		-- Common Values, Functions
		TYPE_RARE		= "Rare";
	end
	Gatherer_update_localized_indexes();
end
-- ************************************************************************************************

function Gatherer_ExtractItemFromTooltip()
	local extractedString = GameTooltipTextLeft1:GetText()
	if ( extractedString ) then
		return string.lower(GameTooltipTextLeft1:GetText());
	else
		return "";
	end
end

function Gatherer_FindFishType(fishItem, fishTooltip)
		if ( fishItem  and (strfind(fishItem, TREASURE_FISHNODE_TRIGGER1) ))
		then
			return TREASURE_FISHWRECK;
		-- Fish School
		elseif ( fishTooltip and (strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER4) or
					(TREASURE_FISHNODE_TRIGGER3 and strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER3))))
		then
			return TREASURE_FISHNODE;
		-- Floating Wreckage and Oil Spill
		elseif ( fishTooltip and
				 (strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER5) or
				  strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER6)))
		then
			return TREASURE_FISHWRECK;
		-- Elemental Water
		elseif ( fishTooltip and strfind(fishTooltip, TREASURE_FISHNODE_TRIGGER7) )
		then
			return TREASURE_FISHELEM;
		end
	return Gatherer_FindFishType_default(fishItem, fishTooltip);
end

function Gatherer_FindHerbType(gather)
	local herbType, herbFound = "", false;
	for herbType in Gather_DB_IconIndex[1] do
		if (herbType and gather and herbType == gather) then herbFound = true; break; end
	end

	if ( herbFound ) then
		return gather;
	else
		return nil;
	end
end
