--[[
	Localization stings for Gatherer config UI
	english set by default, localized versions overwrite the variables.
	Revision: $Id: UI_localization.lua 284 2006-09-14 22:56:01Z esamynn $

	ToDo:
		- Missing German strings
		- Missing Chinese strings
]]

	-- Quick Menu
	GATHERER_TEXT_TITLE_BUTTON		= "Gatherer Options";

	GATHERER_TEXT_TOGGLE_MINIMAP	= "Minimap ";
	GATHERER_TEXT_TOGGLE_MAINMAP	= "Worldmap ";
	GATHERER_TEXT_TOGGLE_HERBS   	= "Herbs ";
	GATHERER_TEXT_TOGGLE_MINERALS	= "Ores ";
	GATHERER_TEXT_TOGGLE_TREASURE	= "Treasures ";
	GATHERER_TEXT_TOGGLE_REPORT     = "Report";
	GATHERER_TEXT_TOGGLE_SEARCH		= "Search";

	GATHERER_REPORT_TIP				= "Access Report dialog.";
	GATHERER_SEARCH_TIP				= "Access Search dialog.";
	GATHERER_MENUTITLE_TIP			= "Access Configuration dialog.";
	GATHERER_ZMBUTTON_TIP			= "Access Zone Match dialog.";

	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE      = "Gatherer: Options";
	GATHERER_TAB_MENU_TEXT			= "Quick Menu";

	GATHERER_TEXT_SHOWONMOUSE       = "Show on mouse over";
	GATHERER_TEXT_HIDEONMOUSE       = "Hide on mouse out";
	GATHERER_TEXT_SHOWONCLICK       = "Show on left click";
	GATHERER_TEXT_HIDEONCLICK       = "Hide on left click";
	GATHERER_TEXT_HIDEONBUTTON      = "Hide on button press";
	GATHERER_TEXT_POSITION          = "Position";
	GATHERER_TEXT_RADIUS	        = "Radius";
	GATHERER_TEXT_HIDEICON			= "Hide menu icon";

	GATHERER_SHOWONMOUSE_TIP		= "Show menu on icon mouse over.";
	GATHERER_SHOWONCLICK_TIP		= "Show Menu on icon left-click.";
	GATHERER_HIDEONMOUSE_TIP		= "Hide menu off mouse over.";
	GATHERER_HIDEONCLICK_TIP		= "Hide menu on icon left-click.";
	GATHERER_HIDEONBUTTON_TIP		= "Hide menu on selection.";
	GATHERER_HIDEICON_TIP			= "Hide minimap icon to access menu.";
	GATHERER_TEXT_POSITION_TIP  	= "Adjusts the position of the tracking icon around the border of the minimap.";
	GATHERER_TEXT_RADIUS_TIP  		= "Adjusts the position of the tracking icon from the center of the minimap.";

	GATHERER_TAB_MENU_TEXT_TIP		= "Access QuickMenu Options.";

	-- Globals Options
	GATHERER_TAB_GLOBALS_TEXT		= "Globals";

	GATHERER_TEXT_RAREORE           = "Couple Rare Ore/Herbs";
	GATHERER_TEXT_NO_MINICONDIST	= "No icon under min distance";
	GATHERER_TEXT_MAPMINDER			= "Activate Map Minder";
	GATHERER_TEXT_MAPMINDER_VALUE	= "Map Minder timer";
	GATHERER_TEXT_FADEPERC			= "Fade Percent";
	GATHERER_TEXT_FADEDIST			= "Fade Distance";
	GATHERER_TEXT_THEME				= "Theme: ";
	GATHERER_TEXT_MINIIDIST			= "Minimal icon distance";
	GATHERER_TEXT_NUMBER			= "Mininotes number";
	GATHERER_TEXT_MAXDIST			= "Mininotes distance";
	GATHERER_TEXT_HIDEMININOTES		= "Hide mininotes";
	GATHERER_TEXT_TOGGLEWORLDNOTES	= "Long world note names";
	GATHERER_TEXT_WMICONSIZEEB		= "Worldmap icon size";
	GATHERER_TEXT_WMICONALPHAEB		= "Worldmap icon transparency";
	GATHERER_TEXT_ALPHAUNDER_MINICON= "Transparency under min";

	GATHERER_MAPMINDER_TIP			= "Activate/Deactivate Map Minder.";
	GATHERER_TEXT_MAPMINDER_TIP		= "Adjusts the Map Minder timer.";
	GATHERER_THEME_TIP				= "Set Icon Theme.";
	GATHERER_NOMINIICONDIST_TIP		= "No display of minimap icon under min distance.";
	GATHERER_RAREORE_TIP			= "Show common/rare ore/herbs together.";
	GATHERER_TEXT_FADEPERC_TIP		= "Adjusts icons fade percent." ;
	GATHERER_TEXT_FADEDIST_TIP		= "Adjusts icons fade distance.";
	GATHERER_TEXT_MINIIDIST_TIP		= "Adjusts minimal distance at which item icon appears.";
	GATHERER_TEXT_NUMBER_TIP		= "Adjusts number of mininotes displayed on the minimap.";
	GATHERER_TEXT_MAXDIST_TIP		= "Adjusts maximum distance to consider when looking for mininotes to display on the minimap.";
	GATHERER_HIDEMININOTES_TIP		= "Do not display mininotes on minimap.";
	GATHERER_TOGGLEWORLDNOTES_TIP	= "Toggle between short/long item name in worldmap notes.";
	GATHERER_WMICONSIZEEB_TIP		= "Set Icon size on world map.";
	GATHERER_WMICONALPHAEB_TIP		= "Set Icon transparency on world map.";
	GATHERER_TEXT_ALPHAUNDER_MINICON_TIP = "Set mininote transparency under minimal distance";

	GATHERER_TAB_GLOBALS_TEXT_TIP	= "Access Global Options.";

	-- Filters Options
	GATHERER_TAB_FILTERS_TEXT 		= "Filters";

	GATHERER_TEXT_FILTER_HERBS		= "Herbs: ";
	GATHERER_TEXT_FILTER_ORE		= "Ore: ";
	GATHERER_TEXT_FILTER_TREASURE	= "Treasure: ";
	GATHERER_TEXT_LINKRECORD        = "Filter Record"
	GATHERER_TEXT_WMFILTERS			= "Filters on World Map";
	GATHERER_TEXT_DISABLEWMFIX		= "Enable Show/Hide button";

	GATHERER_HERBSKLEB_TIP			= "Set min Herbalism skill for display.";
	GATHERER_ORESKLEB_TIP			= "Set min Mining skill for display.";
	GATHERER_HERBDDM_TIP			= "Filter shown herbs.";
	GATHERER_OREDDM_TIP				= "Filter shown ores.";
	GATHERER_TREASUREDDM_TIP		= "Filter shown treasures.";
	GATHERER_TEXT_LINKRECORD_TIP	= "Link recording to selected filters.";
	GATHERER_TEXT_WMFILTERS_TIP		= "Toggle items filters on world map.";
	GATHERER_TEXT_DISABLEWMFIX_TIP	= "Enable World Map Show/Hide button to display items";

	GATHERER_TAB_FILTERS_TEXT_TIP	= "Access Filters Options."

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "Zone Rematch";

	GATHERER_TEXT_APPLY_REMATCH		= "Apply Zone Rematch:";
	GATHERER_TEXT_SRCZONE_MISSING	= "Source Zone not selected.";
	GATHERER_TEXT_DESTZONE_MISSING	= "Destination Zone not selected.";
	GATHERER_TEXT_FIXITEMS			= "Fix Item Names";
	GATHERER_TEXT_LASTMATCH			= "Last Match: ";
	GATHERER_TEXT_LASTMATCH_NONE	= "None";
	GATHERER_TEXT_CONFIRM_REMATCH	= "Confirm Zone Rematch (WARNING, this will modify data)";

	GATHERER_ZM_FIXITEM_TIP			= "Fix Items names, localized version only.";
	GATHERER_ZM_SRCDDM_TIP			= "Set Source Map order.";
	GATHERER_ZM_DESTDDM_TIP			= "Set Destination Map order.";

	-- Report Dialog
	GATHERER_TAB_REPORT_TIP			= "Node Report by Zone.";

	GATHERER_REPORT_LOCATION		= "Location:";
	GATHERER_REPORT_COL_TYPE		= "Type";
	GATHERER_REPORT_COL_NAME		= "Gatherable";
	GATHERER_REPORT_COL_PTYPE		= "% Type";
	GATHERER_REPORT_COL_PDENSITY	= "% Density";

	GATHERER_REPORT_SUMMARY			= "Total: # gather for & nodes";

	-- Search Dialog
	GATHERER_TAB_SEARCH_TIP			= "Search for Zone containing specific item.";

	GATHERER_SEARCH_LOCATION		= "Item:";
	GATHERER_SEARCH_COL_CONTINENT	= "Continent";
	GATHERER_SEARCH_COL_ZONE		= "Zone";
	GATHERER_SEARCH_COL_PNODE		= "% Node";
	GATHERER_SEARCH_COL_PDENSITY	= "% Density";

	GATHERER_SEARCH_SUMMARY			= "Found: # nodes in & zones";

	-- World Map
	GATHERER_FILTERDM_TEXT		= "Filters"
	GATHERER_FILTERDM_TIP		= "Modify item filters."

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER		= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU		= "Show/Hide Gatherer Quick Menu";
	BINDING_NAME_GATHERER_BINDING_OPTIONS		= "Show/Hide Gatherer Options";
	BINDING_NAME_GATHERER_BINDING_REPORT		= "Show/Hide Gatherer Report";
	BINDING_NAME_GATHERER_BINDING_SEARCH		= "Show/Hide Gatherer Options";

	-- MyAddons Help Pages
	GathererHelp = {};
	GathererHelp[1] ="|cffff7f3fTable of Contents|r\n\n1- Quick Menu\n2- Minimap\n3- World Map\n4- Options Dialog\n5- Zone Rematch Dialog\n6- Report Dialog\n7- Search Dialog\n8- Node Editor\n";
	GathererHelp[2] ="|cffff7f3fQuick Menu:|r\n\nAllows fast access to basic display filters (minimap, world map, herbs, ores and treasures) as well as access to the statistic dialogs (see help pages on Report and Search).\n\nClicking on the menu title will bring up the configuration dialog.\n";
	GathererHelp[3] ="|cffff7f3fMinimap:|r\n\nThe minimap will display icons for the closest gathers (25 max, according to filters, number of gather to show, max distance to consider, etc.).\n\nMousing over these icons will bring up a tooltip detailing the gatherable name, the number of time a successful gather was performed there and the distance to it from current position (in units and time to get there in a straight line at standard running speed).\n";
	GathererHelp[4] ="|cffff7f3fWorld Map:|r\n\nThe World Map will display icons for all gathered items in the selected zone (400 max, according to selected filters, etc.).\n\nSince having a great number of items to display may cause lag while trying to access the map, by default the items are shown (there is a toggle in the Filters option tab not to display them all the time, it enables a Show Items button on the world map).\n\nThe World Map also allows access to the Node Editor to do some basic manipulation on the Database, by alt-right clicking on a node.\n";
	GathererHelp[5] ="|cffff7f3fOptions Dialog:|r\n\nThe option dialog is divided in 3 tabs: Filters, Globals, Quick Menu\n\n|cffff7f3fFilters Tab|r deals with filters related option (including control for the Show/Hide button on the World Map).\n\n|cffff7f3fGlobals Tab|r handles options related to core Gatherer functionnality (most of these are also availale though command line).\n\n|cffff7f3fQuick Menu Tab|r controls the behaviour of the quick menu from the minimap icon (including icon position and show/hide control).\n";
	GathererHelp[6] ="|cffff7f3fZone Rematch Dialog:|r\n\nThis is mainly a facility for localized WoW clients in which the zone name translations were not complete by the time of the official WoW release.\n\nWhen zone names are changed, zone indexes change too because they are sorted alphabetically.\nThis facility provides transition matrixes to fix these indexes by selecting a Source Zone order (ie. previous one) and a Destination Zone order (ie. current one) identified by the WoW version and prefixed by WoW client language (the fix item checkbox allows item names that have been changed to be fixed).\n\nThis also allows global manipulation of the database, such as changing it's format, this is done with any selected source and destination zone order, for non-localized clients an identify matrix should be used (ie. same source and destination order).\n\n|cffff7f3fDatabase is modified, so keep a backup of your data, just in case.|r\n";
	GathererHelp[7] ="|cffff7f3fReport Dialog:|r\n\nIn this dialog you can display the items you have collected in the various zones (one zone at a time) for a quick overview.\n\nYou can click on the various column headings to sort (and reverse sort) the display according to that column contents.\n\nMost of the columns are self-explanatory, except for the ones detailed below:\n|cffff7f3fType %:|r\n  Percentage of the ressource compared to number of recorded gather of the same type in zone.\n\n|cffff7f3fDensity %:|r\n  Percentage of the ressource compared to number of recorded gather of the same item worldwide.\n";
	GathererHelp[8] ="|cffff7f3fSearch Dialog:|r\n\nIn this dialog you can specify an item and display the various zones in which it has already been gathered.\n\nYou can click on the various column headings to sort (and reverse sort) the display according to that column contents.\n\nMost of the columns are self-explanatory, except for the ones detailed below:\n|cffff7f3fNode %:|r\n  Percentage of the ressource compared to the number of nodes in zone.\n\n|cffff7f3fDensity %:|r\n  Percentage of the ressource compared to total matching nodes worldwide.\n";
	GathererHelp[9] ="|cffff7f3fNode Editor:|r\n\nIn this dialog you (alt-right click on a node in the World Map), you can change the node name, it's icon, toggle it as bugged or delete it.\n\n|cffff7f3fToggle Bugged|r will only work for the current selected node.\n\n|cffff7f3fDelete|r use scope (Node by default to avoid mistakes) and can be extended to Zone, Continent and World scopes.\n\n|cffff7f3fAccept|r will take into account the new node name (remember to hit enter after filling the new name) and/or icon.\nAs for the delete button, this one takes scope into account and can be applied at Node, Zone, Continent and World level.\n";
	GathererHelp.currentPage=1;

	GathererDetails = {}; -- this line MUST NOT be repeated in localization blocks
	GathererDetails["description"] = "Show gathered herbs/ores/treasures locations";
	GathererDetails["releaseDate"] = "August 27, 2006";

if ( GetLocale() == "frFR" ) then
	-- Quick Menu
	GATHERER_TEXT_TITLE_BUTTON		= "Gatherer Options";

	GATHERER_TEXT_TOGGLE_MINIMAP	= "Carte: Minicarte ";
	GATHERER_TEXT_TOGGLE_MAINMAP	= "Carte: Monde ";
	GATHERER_TEXT_TOGGLE_HERBS   	= "R\195\169colte Herbes ";
	GATHERER_TEXT_TOGGLE_MINERALS	= "R\195\169colte Gisements ";
	GATHERER_TEXT_TOGGLE_TREASURE	= "R\195\169colte Tr\195\169sors ";
	GATHERER_TEXT_TOGGLE_REPORT     = "Rapport";
	GATHERER_TEXT_TOGGLE_SEARCH		= "Recherche";

	GATHERER_REPORT_TIP				= "Vers la fenetre de rapport.";
	GATHERER_SEARCH_TIP				= "Vers la fenetre de recherche.";
	GATHERER_MENUTITLE_TIP			= "Vers la fenetre de configuration.";
	GATHERER_ZMBUTTON_TIP			= "Vers la synchronisation de zone.";

	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE      = "Gatherer: Options";
	GATHERER_TAB_MENU_TEXT			= "Menu Rapide"

	GATHERER_TEXT_SHOWONMOUSE       = "Montrer sur passage souris";
	GATHERER_TEXT_HIDEONMOUSE       = "Cacher hors passage souris";
	GATHERER_TEXT_SHOWONCLICK       = "Montrer sur clic gauche";
	GATHERER_TEXT_HIDEONCLICK       = "Cacher sur clic gauche";
	GATHERER_TEXT_HIDEONBUTTON      = "Cacher sur activation bouton";
	GATHERER_TEXT_POSITION          = "Position";
	GATHERER_TEXT_RADIUS	        = "Rayon";
	GATHERER_TEXT_HIDEICON			= "Cacher l'icone de menu";

	GATHERER_TEXT_POSITION_TIP      = "Ajuste la position de l'icone sur le bord de la minicarte.";
	GATHERER_TEXT_RADIUS_TIP        = "Ajuste la position de l'icone par rapport au centre de la minicarte.";
	GATHERER_SHOWONMOUSE_TIP		= "Montrer le menu en passant la souris sur l'icone.";
	GATHERER_SHOWONCLICK_TIP		= "Montrer le menu en faisant un clic gauche sur l'icone.";
	GATHERER_HIDEONMOUSE_TIP		= "Cacher le menu quand la souris n'est plus sur l'icone.";
	GATHERER_HIDEONCLICK_TIP		= "Cacher le menu en faisant un clic gauche sur l'icone.";
	GATHERER_HIDEONBUTTON_TIP		= "Cacher le menu quand on clique sur un de ses \195\169l\195\169ments.";
	GATHERER_HIDEICON_TIP			= "Cacher l'icone d'acc\195\168s au menu.";

	GATHERER_TAB_MENU_TEXT_TIP		= "Acc\195\169der aux options du Menu rapide."

	-- Globals Options
	GATHERER_TAB_GLOBALS_TEXT		= "G\195\169n\195\169ral"

	GATHERER_TEXT_RAREORE      		= "Coupler Minerais/Herbes Rares";
	GATHERER_TEXT_NO_MINICONDIST	= "Pas d'icone sous distance mini";
	GATHERER_TEXT_MAPMINDER			= "Activation Map Minder";
	GATHERER_TEXT_MAPMINDER_VALUE	= "Dur\195\169e Map Minder";
	GATHERER_TEXT_FADEPERC			= "Pourcentage transparence";
	GATHERER_TEXT_FADEDIST			= "Distance transparence";
	GATHERER_TEXT_THEME				= "Th\195\168me: ";
	GATHERER_TEXT_MINIIDIST			= "Distance mini icone";
	GATHERER_TEXT_NUMBER			= "Nombre de notes";
	GATHERER_TEXT_MAXDIST			= "Distance maxi notes";
	GATHERER_TEXT_HIDEMININOTES		= "Cacher les mininotes";
	GATHERER_TEXT_TOGGLEWORLDNOTES	= "Noms longs sur carte du monde";
	GATHERER_TEXT_WMICONSIZEEB		= "Taille icone carte du monde";
	GATHERER_TEXT_WMICONALPHAEB		= "Alpha icone carte du monde";
	GATHERER_TEXT_ALPHAUNDER_MINICON= "Alpha sous distance mini";

	GATHERER_TEXT_MAPMINDER_TIP		= "Ajuste la dur\195\169e du Map Minder.";
	GATHERER_TEXT_FADEPERC_TIP		= "Ajuste le pourcentage de transparence des icones." ;
	GATHERER_TEXT_FADEDIST_TIP		= "Ajuste la distance de transparence des icones.";
	GATHERER_TEXT_MINIIDIST_TIP		= "Ajuste la distance minimale a laquelle l'icone apparait.";
	GATHERER_TEXT_NUMBER_TIP		= "Ajuste le nombre de notes affich\195\169es sur la minicarte.";
	GATHERER_TEXT_MAXDIST_TIP		= "Ajuste la distance maximum pour l'affichage des notes sur la minicarte.";
	GATHERER_MAPMINDER_TIP			= "Activater/D\195\169sactiver Map Minder.";
	GATHERER_THEME_TIP				= "Choisir le th\195\168me d'icone.";
	GATHERER_NOMINIICONDIST_TIP		= "Ne pas afficher les mini-icones en dessous de la distance minimale.";
	GATHERER_RAREORE_TIP			= "Coupler l'affichage des herbes/minerais rares.";
	GATHERER_TOGGLEWORLDNOTES_TIP	= "Basculer entre les noms courts/longs des objets sur la carte du monde.";
	GATHERER_WMICONSIZEEB_TIP		= "Choisir la taille des icones sur la carte du monde.";
	GATHERER_WMICONALPHAEB_TIP		= "Choisir l'alpha des icones sur la carte du monde.";
	GATHERER_HIDEMININOTES_TIP		= "Ne pas afficher les mininotes sur la minicarte.";
	GATHERER_TEXT_ALPHAUNDER_MINICON_TIP = "Choisir l'apha des mininotes en dessous de la distance minimale.";

	GATHERER_TAB_GLOBALS_TEXT_TIP	= "Acc\195\169der aux options g\195\169n\195\169nales."

	-- Filters Options
	GATHERER_TAB_FILTERS_TEXT		= "Filtres"

	GATHERER_TEXT_FILTER_HERBS		= "Herbes: ";
	GATHERER_TEXT_FILTER_ORE		= "Gisements: ";
	GATHERER_TEXT_FILTER_TREASURE	= "Tr\195\169sors: ";
	GATHERER_TEXT_LINKRECORD        = "Saisie Filtr\195\169e"
	GATHERER_TEXT_WMFILTERS			= "Filtres Carte du Monde"
	GATHERER_TEXT_DISABLEWMFIX		= "Active le bouton Show/Hide";

	GATHERER_HERBSKLEB_TIP			= "Comp\195\169tence mini pour l'affichage les herbes.";
	GATHERER_ORESKLEB_TIP			= "Comp\195\169tence mini pour l'affichage des minerais.";
	GATHERER_HERBDDM_TIP			= "Filtrer les herbes affich\195\169es.";
	GATHERER_OREDDM_TIP				= "Filtrer les minerais affich\195\169es.";
	GATHERER_TEXT_LINKRECORD_TIP	= "Conditionne l'enregistrement au contenu du filtre.";
	GATHERER_TREASUREDDM_TIP		= "Filtrer les tr\195\169sors affich\195\169es.";
	GATHERER_TEXT_WMFILTERS_TIP		= "Montre/Cache les filtres d'objets sur la Carte du Monde."
	GATHERER_TEXT_DISABLEWMFIX_TIP	= "Active bouton show/hide sur la carte du monde, \195\160 vos risques.";

	GATHERER_TAB_FILTERS_TEXT_TIP	= "Acc\195\169der aux options des filtres."

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "Zone Rematch";

	GATHERER_TEXT_APPLY_REMATCH		= "Synchronisation des zones:";
	GATHERER_TEXT_SRCZONE_MISSING	= "Zone Source non s\195\169lection\195\169e.";
	GATHERER_TEXT_DESTZONE_MISSING	= "Zone Destination non s\195\169lection\195\169e.";
	GATHERER_TEXT_FIXITEMS			= "Correction du nom des objets";
	GATHERER_TEXT_LASTMATCH			= "Derni\195\168re synchro: ";
	GATHERER_TEXT_LASTMATCH_NONE	= "Aucune";
	GATHERER_TEXT_CONFIRM_REMATCH	= "Confirmation de la resynchronisation des zones (ATTENTION, cela modifie les donn\195\169es).";

	GATHERER_ZM_FIXITEM_TIP			= "Correction des noms d'objets, version localis\195\169e uniquement.";
	GATHERER_ZM_SRCDDM_TIP			= "Choisir l'ordre des Zones d'origine.";
	GATHERER_ZM_DESTDDM_TIP			= "Choisir l'ordre des Zones destination.";

	-- Report Dialog
	GATHERER_TAB_REPORT_TIP			= "Rapport: points de r\195\169colte par Zone.";

	GATHERER_REPORT_LOCATION		= "Localisation:";
	GATHERER_REPORT_COL_TYPE		= "Type";
	GATHERER_REPORT_COL_NAME		= "R\195\169coltable";
	GATHERER_REPORT_COL_PTYPE		= "% Type";
	GATHERER_REPORT_COL_PDENSITY	= "% Densit\195\169";

	GATHERER_REPORT_SUMMARY			= "Total: # r\195\169coltes pour & points";

	-- Search Dialog
	GATHERER_TAB_SEARCH_TIP			= "Cherche les zones contenant un objet sp\195\169cifique.";

	GATHERER_SEARCH_LOCATION		= "Objet:";
	GATHERER_SEARCH_COL_CONTINENT	= "Continent";
	GATHERER_SEARCH_COL_ZONE		= "Zone";
	GATHERER_SEARCH_COL_PNODE		= "% points";
	GATHERER_SEARCH_COL_PDENSITY	= "% Densit\195\169";

	GATHERER_SEARCH_SUMMARY			= "Trouv\195\169s: # points dans & zones";

	-- World Map
	GATHERER_FILTERDM_TEXT		= "Filtres"
	GATHERER_FILTERDM_TIP		= "Modifie les filtres d'objets."

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER		= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU		= "Montrer/Cacher menu Gatherer";
	BINDING_NAME_GATHERER_BINDING_OPTIONS		= "Montrer/Cacher options Gatherer ";
	BINDING_NAME_GATHERER_BINDING_REPORT		= "Montrer/Cacher rapport Gatherer ";
	BINDING_NAME_GATHERER_BINDING_SEARCH		= "Montrer/Cacher recherche Gatherer";

	-- MyAddons Help Pages
	GathererHelp = {};
	GathererHelp[1] ="|cffff7f3fSommaire|r\n\n1- Menu Rapide\n2- Minicarte\n3- Carte du Monde\n4- Options\n5- Zone Match\n6- Rapport\n7- Recherche\n8- Editeur de point\n";
	GathererHelp[2] ="|cffff7f3fMenu Rapide:|r\n\nAcc\195\168s rapide aux filtres basique (minicarte, carte du monde, herbes, minerais et tr\195\169sors) et aux \195\169crans de statistiques (voir pages d'aide sur Rapport et Recherche).\n\nEn cliquant sur le titre du menu, l'\195\169cran de configuration est affich\195\169.\n";
	GathererHelp[3] ="|cffff7f3fMinicarte:|r\n\nLa minicarte affiche des icones pour les r\195\169coltables proches (25 max, selon les filtres, nombre \195\160 montrer, distance maxi \195\160 considerer, etc.).\n\nEn passant la souris dessus une fen\195\170tre est affich\195\169e et donne le nom de l'objet, le nombre de r\195\169coltes effectu\195\169es dessus et sa distance depuis la position actuelle du personnage (en unit\195\169s et temps pour se rendre au point en ligne droite \195\160 vitesse de course normale).\n";
	GathererHelp[4] ="|cffff7f3fCarte du Monde:|r\n\nLa carte du monde affiche les icones de tout ce qui a \195\169t\195\169 r\195\169colt\195\169 dans la zone s\195\169lectionn\195\169e (400 max, selon les filtres choisis, etc.).\n\nUn grand nombre d'objet \195\160 afficher pouvant causer un d\195\169lai de l'affichage de la carte, par d\195\169faut les objets sont montr\195\169s (il y a une bascule dans l'onglet Filtres des options qui permet de ne pas les afficher en permanence, cela active un bouton Show Item sur la carte du monde).\n\nLa Carte du Monde permet aussi l'acc\195\169s \195\160 l'\195\169diteur de point pour effectuer des manipulations basiques sur la base de donn\195\169es, en faisant alt-clic droit sur un point.\n";
	GathererHelp[5] ="|cffff7f3fOptions:|r\n\nLa fen\195\170tre d'options est divis\195\169e en 3 onglets: Filtres, G\195\169n\195\169ral et Menu Rapide.\n\n|cffff7f3fOnglet Filtres|r options relatives aux filtres (y compris le contr\195\180le pour le bouton Show/Hide sur la carte du monde).\n\n|cffff7f3fOnglet G\195\169n\195\169ral|r options relatives aux fonctionnalit\195\169s de base de Gatherer (la pluspart \195\169tant aussi disponibles par ligne de commande).\n\n|cffff7f3fOnglet Menu rapide|r contr\195\180le le comportement du menu rapide du bouton de la minicarte (y compris la position et l'affichage/non-affichage de l'icone).\n";
	GathererHelp[6] ="|cffff7f3fZone Match:|r\n\nCeci est principalement pr\195\169vu pour les clients WoW localis\195\169s dans lesquels les traductions de nom de zones n'\195\169taient pas finis lors de la release officielle de WoW.\n\nQuand les noms de zone sont chang\195\169s, les index changent car elles sont tri\195\169es alphab\195\169tiquement.\nCet utilitaire fournit des matrices de transition pour les corriger en choisissant un ordre Source (ie. le pr\195\169c\195\169dent) et un ordre Destination (ie. l'actuel) identifi\195\169 par la version de WoW et prefix\195\169 par la langue du client (la case correction d'objet permet de corriger les noms d'objets traduits au fil de l'eau).\n\nCeci permet aussi de faire des manipulations globales sur la base, comme changer son format. Cela est fait avec d\195\168s qu'une transition est appliqu\195\169e, les clients non-localis\195\169s doivent utiliser des matrices d'identit\195\169 (ie. m\195\170me source et destination).\n\n|cffff7f3fLa base est modifi\195\169e, donc gardez une sauvegarde de celle-ci, au cas ou.|r\n";
	GathererHelp[7] ="|cffff7f3fRapport:|r\n\nCette fen\195\170tre permet d'afficher les objets r\195\169colt\195\169s dans les diff\195\169rentes zones (une \195\160 la fois) pour avoir une vue d'ensemble rapide.\n\nVous pouvez cliquer sur les titres des colonnes pour trier (et tri inverse) l'affichage selon le contenu de la colonne choisie.\n\nLa pluspart des colonnes sont facilement compr\195\169hensibles, except\195\169 les 2 d\195\169taill\195\169es ci-apr\195\168s:\n|cffff7f3fType %:|r\n  Pourcentage de resource par rapport au nombre de r\195\169colte du m\195\170me type dans la zone.\n\n|cffff7f3fDensit\195\169 %:|r\n  Pourcentage de ressource par rapport au nombre total de r\195\169colte de l'objet dans le monde.\n";
	GathererHelp[8] ="|cffff7f3fRecherche:|r\n\nDans cette fen\195\170tre vous pouvez rechercher un objet particulier et afficher les zones dans lesquelles vous l'avez d\195\169j\195\160 r\195\169colt\195\169.\n\nVous pouvez cliquer sur les titres des colonnes pour trier (et tri inverse) l'affichage selon le contenu de la colonne choisie.\n\nLa pluspart des colonnes sont facilement compr\195\169hensibles, except\195\169 les 2 d\195\169taill\195\169es ci-apr\195\168s:\n|cffff7f3f% points:|r\n  Pourcentage de ressource par rapport au nombre de points de r\195\169colte de la zone.\n\n|cffff7f3f% Densit\195\169:|r\n  Pourcentage de ressource par rapport au nombre total de point de r\195\169colte correspondant dans le monde.\n";
	GathererHelp[9] ="|cffff7f3fEditeur de point:|r\n\nCeci permet (alt-clic droit sur un point de r\195\169colte sur la Carte du Monde) de changer le nom du point, son icone, le marquer comme bugg\195\169 ou de l'effacer.\n\n|cffff7f3fToggle Bugged|r ne fonctionne que pour le point courant.\n\n|cffff7f3fSuppr|r utilise la port\195\169e (Node par d\195\169faut pour reduire les erreurs) et peut \195\170tre \195\169tendu \195\160 Zone, Continent et World.\n\n|cffff7f3fAccepter|r prend en compte le nouveau nom (appuyer sur entr\195\169e pour le valider apr\195\169s l'avoir tap\195\169) et/ou la nouvelle icone du point.\nComme pour le bouton Suppr, la port\195\169e est prise en compte peut \195\170tre appliqu\195\169e aux niveaux Node, Zone, Continent et World.\n";

	GathererDetails["description"] = "Montrer les positions des herbes/minerais/tr\195\169sors r\195\169colt\195\169s.";
	GathererDetails["releaseDate"] = "27 aout 2006";

end

if GetLocale() == "ruRU" then
-- Version : Russian ( by Maus ) edit by CFM
	-- Quick Menu
	GATHERER_TEXT_TITLE_BUTTON		= "Настройки Gatherer";

	GATHERER_TEXT_TOGGLE_MINIMAP	= "Мини-карта ";
	GATHERER_TEXT_TOGGLE_MAINMAP	= "Карта мира ";
	GATHERER_TEXT_TOGGLE_HERBS   	= "Растения ";
	GATHERER_TEXT_TOGGLE_MINERALS	= "Руда ";
	GATHERER_TEXT_TOGGLE_TREASURE	= "Сундуки и рыба ";
	GATHERER_TEXT_TOGGLE_REPORT     = "Статистика";
	GATHERER_TEXT_TOGGLE_SEARCH		= "Поиск";

	GATHERER_REPORT_TIP				= "Доступ к диалогу статистики.";
	GATHERER_SEARCH_TIP				= "Доступ к диалогу поиска.";
	GATHERER_MENUTITLE_TIP			= "Доступ к диалогу настроек.";
	GATHERER_ZMBUTTON_TIP			= "Доступ к диалогу наилучшей зоны.";

	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE      = "Gatherer: Настройки";
	GATHERER_TAB_MENU_TEXT			= "Кнопка меню";

	GATHERER_TEXT_SHOWONMOUSE       = "Показывать по мышке";
	GATHERER_TEXT_HIDEONMOUSE       = "Скрывать по мышке";
	GATHERER_TEXT_SHOWONCLICK       = "Показывать по ЛКМ";
	GATHERER_TEXT_HIDEONCLICK       = "Скрывать по ЛКМ";
	GATHERER_TEXT_HIDEONBUTTON      = "Скрывать по нажатию кнопки";
	GATHERER_TEXT_POSITION          = "Позиция";
	GATHERER_TEXT_RADIUS	        = "Радиус";
	GATHERER_TEXT_HIDEICON			= "Скрыть значок меню";

	GATHERER_SHOWONMOUSE_TIP		= "Отображать меню при наведении курсора на кнопку Gatherer.";
	GATHERER_SHOWONCLICK_TIP		= "Отображать меню по ЛКМ.";
	GATHERER_HIDEONMOUSE_TIP		= "Скрывать меню курсором мыши.";
	GATHERER_HIDEONCLICK_TIP		= "Скрывать меню по ЛКМ.";
	GATHERER_HIDEONBUTTON_TIP		= "Скрывать меню после выбора";
	GATHERER_HIDEICON_TIP			= "Скрыть кнопку Gatherer на мини-карте.";
	GATHERER_TEXT_POSITION_TIP  	= "Изменить позицию кнопку приложения относительно рамки.";
	GATHERER_TEXT_RADIUS_TIP  		= "Изменить положение кнопки приложения относительно центра.";

	GATHERER_TAB_MENU_TEXT_TIP		= "Доступ к настройкам быстрого меню.";

	-- Globals Options
	GATHERER_TAB_GLOBALS_TEXT		= "Общие";

	GATHERER_TEXT_RAREORE           = "Связывать редкие Руда/Травы";
	GATHERER_TEXT_NO_MINICONDIST	= "Убирать значок у мин. дистанции";
	GATHERER_TEXT_MAPMINDER			= "Активировать Map Minder";
	GATHERER_TEXT_MAPMINDER_VALUE	= "Map Minder таймер";
	GATHERER_TEXT_FADEPERC			= "Процент затухания";
	GATHERER_TEXT_FADEDIST			= "Расстояние затухания";
	GATHERER_TEXT_THEME				= "Тема: ";
	GATHERER_TEXT_MINIIDIST			= "Минимальное расстояние значка";
	GATHERER_TEXT_NUMBER			= "Число мини-заметок";
	GATHERER_TEXT_MAXDIST			= "Дистанция мини-заметок";
	GATHERER_TEXT_HIDEMININOTES		= "Скрыть мини-заметки";
	GATHERER_TEXT_TOGGLEWORLDNOTES	= "Длина символов в названии заметок";
	GATHERER_TEXT_WMICONSIZEEB		= "Размер значка на карте мира";
	GATHERER_TEXT_WMICONALPHAEB		= "Прозрачность значка";
	GATHERER_TEXT_ALPHAUNDER_MINICON= "Мин. прозрачность";

	GATHERER_MAPMINDER_TIP			= "Вкл/Выкл Map Minder.";
	GATHERER_TEXT_MAPMINDER_TIP		= "Регулировать таймер Map Minder.";
	GATHERER_THEME_TIP				= "Выставить тему иконки.";
	GATHERER_NOMINIICONDIST_TIP		= "Не отображать иконки у мини-карты, когда дистанция до них близка.";
	GATHERER_RAREORE_TIP			= "Показывать редкую руду/травы вместе.";
	GATHERER_TEXT_FADEPERC_TIP		= "Регулировать процент исчезновения иконок." ;
	GATHERER_TEXT_FADEDIST_TIP		= "Регулировать расстояние исчезновения иконок.";
	GATHERER_TEXT_MINIIDIST_TIP		= "Регулировка минимального расстояния для появления иконки.";
	GATHERER_TEXT_NUMBER_TIP		= "Регулировка кол-ва отображаемых мини-записей на мини-карте.";
	GATHERER_TEXT_MAXDIST_TIP		= "Регулировка максимального расстояния, для того чтобы увидеть отображаемые мини-записи на мини-карте.";
	GATHERER_HIDEMININOTES_TIP		= "Не показывать мини-записи на мини-карте.";
	GATHERER_TOGGLEWORLDNOTES_TIP	= "Переключение между короткими и длинными заметками на карте мира.";
	GATHERER_WMICONSIZEEB_TIP		= "Выставить размер иконки на карте мира.";
	GATHERER_WMICONALPHAEB_TIP		= "Выставить прозрачность иконки на карте мира.";
	GATHERER_TEXT_ALPHAUNDER_MINICON_TIP = "Выставить прозрачность мини-записей при минимальном расстоянии.";

	GATHERER_TAB_GLOBALS_TEXT_TIP	= "Доступ к глобальным параметрам.";

	-- Filters Options
	GATHERER_TAB_FILTERS_TEXT 		= "Фильтры";

	GATHERER_TEXT_FILTER_HERBS		= "Травы: ";
	GATHERER_TEXT_FILTER_ORE		= "Руда: ";
	GATHERER_TEXT_FILTER_TREASURE	= "Сундуки: ";
	GATHERER_TEXT_LINKRECORD        = "Добавить фильтр"
	GATHERER_TEXT_WMFILTERS			= "Фильтры на карте мира";
	GATHERER_TEXT_DISABLEWMFIX		= "Кнопка \"Показать\\Скрыть\"";

	GATHERER_HERBSKLEB_TIP			= "Установить минимальный навык для отображения травничества.";
	GATHERER_ORESKLEB_TIP			= "Установить минимальный навык для отображения горного дела.";
	GATHERER_HERBDDM_TIP			= "Фильтр отображения трав.";
	GATHERER_OREDDM_TIP				= "Фильтр отображения руды.";
	GATHERER_TREASUREDDM_TIP		= "Фильтр отображения сокровища.";
	GATHERER_TEXT_LINKRECORD_TIP	= "Ссылка записи на выбранный фильтр.";
	GATHERER_TEXT_WMFILTERS_TIP		= "Переключение элементов фильтра на карте мира.";
	GATHERER_TEXT_DISABLEWMFIX_TIP	= "Вкл/Выкл отображение предметов на карте мира";

	GATHERER_TAB_FILTERS_TEXT_TIP	= "Доступ к параметрам фильтра."

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "Исправление зон";

	GATHERER_TEXT_APPLY_REMATCH		= "Применить исправление зон:";
	GATHERER_TEXT_SRCZONE_MISSING	= "Не выбрана исходная зона.";
	GATHERER_TEXT_DESTZONE_MISSING	= "Назначенная зона не выбрана.";
	GATHERER_TEXT_FIXITEMS			= "Исправить имя предмета";
	GATHERER_TEXT_LASTMATCH			= "Последний предмет: ";
	GATHERER_TEXT_LASTMATCH_NONE	= "Нет";
	GATHERER_TEXT_CONFIRM_REMATCH	= "Подтвердить исправление зон (ВНИМАНИЕ, данные будут изменены)";

	GATHERER_ZM_FIXITEM_TIP			= "Исправит имя предмета, только локализованную версию.";
	GATHERER_ZM_SRCDDM_TIP			= "Установить источник порядка карты.";
	GATHERER_ZM_DESTDDM_TIP			= "Установить назначение порядка карты.";

	-- Report Dialog
	GATHERER_TAB_REPORT_TIP			= "Отчет объектов по зоне.";

	GATHERER_REPORT_LOCATION		= "Местонахождения:";
	GATHERER_REPORT_COL_TYPE		= "Тип";
	GATHERER_REPORT_COL_NAME		= "Собрано";
	GATHERER_REPORT_COL_PTYPE		= "% Типа";
	GATHERER_REPORT_COL_PDENSITY	= "% Кол-ва";

	GATHERER_REPORT_SUMMARY			= "Всего: # собрано с & объектов";

	-- Search Dialog
	GATHERER_TAB_SEARCH_TIP			= "Поиск определенных предметов по локации.";

	GATHERER_SEARCH_LOCATION		= "Предмет:";
	GATHERER_SEARCH_COL_CONTINENT	= "Континент";
	GATHERER_SEARCH_COL_ZONE		= "Зона";
	GATHERER_SEARCH_COL_PNODE		= "% Объект";
	GATHERER_SEARCH_COL_PDENSITY	= "% Кол-во";

	GATHERER_SEARCH_SUMMARY			= "Найдено: # объектов в & зонах";

	-- World Map
	GATHERER_FILTERDM_TEXT		= "Фильтр"
	GATHERER_FILTERDM_TIP		= "Поиск предметов."

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER		= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU		= "Показать/Скрыть Быстрое Меню";
	BINDING_NAME_GATHERER_BINDING_OPTIONS		= "Показать/Скрыть Опции";
	BINDING_NAME_GATHERER_BINDING_REPORT		= "Показать/Скрыть Отчет";
	BINDING_NAME_GATHERER_BINDING_SEARCH		= "Показать/Скрыть Параметры";

	-- MyAddons Help Pages
	GathererHelp = {};
	GathererHelp[1] ="|cffff7f3fСодержание|r\n\n1- Быстрое меню\n2- Мини-карта\n3- Карта мира\n4- Диалог опций\n5- Диалог отчета\n6- Диалог поиска\n7- Редактор объектов\n";
	GathererHelp[2] ="|cffff7f3fБыстрое меню:|r\n\nБыстрый доступ к основным фильтрам (мини-карта, карта мира, травы, руда и сокровища), а так же доступ к статичным диалогам.\n";
	GathererHelp[3] ="|cffff7f3fМини-карта:|r\n\nОтображение ближайших собранных объектов на мини-карте (максимум 25, в зависимости от настроек).\n";
	GathererHelp[4] ="|cffff7f3fКарта мира:|r\n\nОтображение собранных объектов на карте мира (максимум 400 объектов, в зависимости от настроек).\n\nТак же, на карте мира возможен доступ к редактору объекта, нажав Alt+ПКМ на выбранном объекте.\n";
	GathererHelp[5] ="|cffff7f3fДиалог опций:|r\n\nВ диалоге опций, вы можете редактировать отображение объектов, скрывать/показывать, их масштаб и многое другое.\n";
	GathererHelp[6] ="|cffff7f3fДиалог отчета:|r\n\nВ этом диалоге, вы можете отобразить для быстрого просмотра уже собранные объекты, в различных зонах. Так же вы можете отсортировать их.\n";
	GathererHelp[7] ="|cffff7f3fДиалог поиска:|r\n\nВ этом диалоге, вы можете указать необходимый вам объект и просмотреть в каких зонах вы уже его собирали.\n";
	GathererHelp[8] ="|cffff7f3fРедактор объектов:|r\n\nВ этом диалоге вы можете редактировать объект, нажав на нем Alt+ПКМ. Вы можете изменить имя объекта, его иконку и много другое.\n";
	GathererHelp.currentPage=1;

--	GathererDetails = {}; -- this line MUST NOT be repeated in localization blocks
	GathererDetails["description"] = "Показать места собранных трав/руды/сокровищ ";
	GathererDetails["releaseDate"] = "Август 27, 2006";
end

if ( GetLocale() == "deDE" ) then
	-- Quick Menu
	GATHERER_TEXT_TITLE_BUTTON		= "Gatherer Optionen";

	GATHERER_TEXT_TOGGLE_MINIMAP	= "Minikarte ";
	GATHERER_TEXT_TOGGLE_MAINMAP	= "Weltkarte ";
	GATHERER_TEXT_TOGGLE_HERBS		= "Kr\195\164uter ";
	GATHERER_TEXT_TOGGLE_MINERALS	= "Erze ";
	GATHERER_TEXT_TOGGLE_TREASURE	= "Sch\195\164tze ";
	-- GATHERER_TEXT_TOGGLE_REPORT	= "";
	-- GATHERER_TEXT_TOGGLE_SEARCH	= "";

	-- GATHERER_REPORT_TIP			= "";
	-- GATHERER_SEARCH_TIP			= "";
	GATHERER_MENUTITLE_TIP			= "Zugriff auf Konfigurationen";
	GATHERER_ZMBUTTON_TIP			= "Zugriff auf Zone Match Dialog";

	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE	= "Gatherer: Optionen";
	--GATHERER_TAB_MENU_TEXT	= "";

	GATHERER_TEXT_SHOWONMOUSE	= "Anzeigen bei 'Mouse-over'";
	GATHERER_TEXT_HIDEONMOUSE	= "Verstecken bei 'Mouse-out'";
	GATHERER_TEXT_SHOWONCLICK	= "Anzeigen bei Linksklick";
	GATHERER_TEXT_HIDEONCLICK	= "Verstecken bei Linksklick";
	GATHERER_TEXT_HIDEONBUTTON	= "Verstecken bei Tastendruck";
	GATHERER_TEXT_POSITION		= "Position";
	GATHERER_TEXT_HIDEICON		= "Verstecke Menuicon";

	GATHERER_SHOWONMOUSE_TIP	= "Zeige das Menu beim Mausover \195\188ber das Icon";
	GATHERER_SHOWONCLICK_TIP	= "Zeige das Menu beim Linksklick auf das Icon";
	GATHERER_HIDEONMOUSE_TIP	= "Verstecke das Menu wenn der Mauszeiger nicht mehr auf dem Icon ist";
	GATHERER_HIDEONCLICK_TIP	= "Verstecke das Menu beim Linksklick auf das Icon";
	GATHERER_HIDEONBUTTON_TIP	= "Verstecke das Menu bei Anwahl";
	GATHERER_HIDEICON_TIP		= "Verstecke das Minimapicon zum Menuzugriff";
	GATHERER_TEXT_POSITION_TIP	= "Passt die Position des Trackingicons am Rand der Minikarte an";

	--GATHERER_TAB_MENU_TEXT_TIP	= "";

	-- Globals Options
	--GATHERER_TAB_GLOBALS_TEXT			= "";

	GATHERER_TEXT_RAREORE			= "Ein paar seltene Erze/Kr\195\164uter";
	GATHERER_TEXT_NO_MINICONDIST	= "Kein Icon unter der min.enfern.";
	GATHERER_TEXT_MAPMINDER			= "Map-Minder aktivieren";
	GATHERER_TEXT_MAPMINDER_VALUE	= "Map-Minder-Timer";
	GATHERER_TEXT_FADEPERC			= "Transparenz in Prozent";
	GATHERER_TEXT_FADEDIST			= "Ausblendungsabstand";
	GATHERER_TEXT_THEME				= "Theme: ";
	GATHERER_TEXT_MINIIDIST			= "Minimale Icon-Entfernung";
	GATHERER_TEXT_NUMBER			= "Mininotiz-Anzahl";
	GATHERER_TEXT_MAXDIST			= "Mininotiz-Entfernung";
	GATHERER_TEXT_HIDEMININOTES		= "Verstecke Minimarkierungen";
	GATHERER_TEXT_TOGGLEWORLDNOTES	= "Lange Weltmarkierungsnamen";
	GATHERER_TEXT_WMICONSIZEEB		= "Weltkarten Icongr\195\182\195\159e";
	-- GATHERER_TEXT_WMICONALPHAEB		= "";
	--GATHERER_TEXT_ALPHAUNDER_MINICON= "";

	GATHERER_TEXT_MAPMINDER_TIP		= "Stellt den Map-Minder-Timer ein";
	GATHERER_MAPMINDER_TIP			= "Aktiviere/Deaktiviere Map Minder";
	GATHERER_THEME_TIP				= "Setze Icon Theme";
	GATHERER_NOMINIICONDIST_TIP		= "Keine Anzeige der Minimap-Icons unter der Mindestentfernung";
	GATHERER_RAREORE_TIP			= "Zeige gew\195\182hnliche/seltene Erze/Pflanzen zusammen";
	GATHERER_TEXT_FADEPERC_TIP		= "Stellt die Transparenz in Prozent ein" ;
	GATHERER_TEXT_FADEDIST_TIP		= "Stellt die Entfernung f\195\188r die Ausblendung ein";
	GATHERER_TEXT_MINIIDIST_TIP		= "Stellt die minimale Entfernung der Icons ein in welcher sie erscheinen";
	GATHERER_TEXT_NUMBER_TIP		= "Stellt die Anzahl der angezeigten Mininotizen ein";
	GATHERER_TEXT_MAXDIST_TIP		= "Stellt die maximale Entfernung ein, in welcher nach Mininotizen gesucht wird";
	GATHERER_HIDEMININOTES_TIP		= "Zeige keine Minimapsymbole an";
	GATHERER_TOGGLEWORLDNOTES_TIP	= "Wechsel zwischen kurzen/langen Itemnamen der Weltkartenmarkierungen";
	GATHERER_WMICONSIZEEB_TIP		= "Setze Icongr\195\182\195\159e auf der Weltkarte";
	-- GATHERER_TEXT_WMICONALPHAEB_TIP		= "";
	-- GATHERER_TEXT_ALPHAUNDER_MINICON_TIP = "";

	--GATHERER_TAB_GLOBALS_TEXT_TIP	= "";

 	-- Filters Options
	-- GATHERER_TAB_FILTERS_TEXT		= "";

	GATHERER_TEXT_FILTER_HERBS		= "Kr\195\164uter: ";
	GATHERER_TEXT_FILTER_ORE		= "Erze: ";
	GATHERER_TEXT_FILTER_TREASURE	= "Sch\195\164tze: ";
	-- GATHERER_TEXT_LINKRECORD		= "";
	-- GATHERER_TEXT_WMFILTERS		= "";
	-- GATHERER_TEXT_DISABLEWMFIX	= "";

	GATHERER_HERBSKLEB_TIP			= "Setze min. Kr\195\164uterkundeskill f\195\188r die Anzeige";
	GATHERER_ORESKLEB_TIP			= "Set min. Bergbauskill f\195\188r die Anzeige";
	GATHERER_HERBDDM_TIP			= "Filter anzuzeigende Pflanzen";
	GATHERER_OREDDM_TIP				= "Filter anzuzeigende Erze";
	GATHERER_TREASUREDDM_TIP		= "Filter anzuzeigende Truhen";
	-- GATHERER_TEXT_LINKRECORD_TIP		= "";
	-- GATHERER_TEXT_WMFILTERS_TIP		= "";
	-- GATHERER_DISABLEWMFIX_TIP		= "";

	-- GATHERER_TAB_FILTERS_TEXT_TIP	= "";

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "Zonenabgleich";

	GATHERER_TEXT_APPLY_REMATCH		= "Zonenabgleich durchf\195\188hren:";
	GATHERER_TEXT_SRCZONE_MISSING	= "Quellzone nicht ausgew\195\164hlt.";
	GATHERER_TEXT_DESTZONE_MISSING	= "Zielzone nicht ausgew\195\164hlt.";
	GATHERER_TEXT_FIXITEMS			= "Item-Namen korrigieren";
	GATHERER_TEXT_LASTMATCH			= "Letzer Treffer: ";
	GATHERER_TEXT_LASTMATCH_NONE	= "Keiner";
	GATHERER_TEXT_CONFIRM_REMATCH	= "Zonenabgleich best\195\164tigen (ACHTUNG: Daten werden ge\195\164ndert!)";

	GATHERER_ZM_FIXITEM_TIP			= "Korrigiere Itemnamen, nur lokalisierte Version";
	GATHERER_ZM_SRCDDM_TIP			= "Setze Source Map Reihenfolge";
	GATHERER_ZM_DESTDDM_TIP			= "Setze Destination Map Reihenfolge";

	-- Report Dialog
	-- GATHERER_TAB_REPORT_TIP			= "";

	-- GATHERER_REPORT_LOCATION		= "";
	-- GATHERER_REPORT_COL_TYPE		= "";
	-- GATHERER_REPORT_COL_NAME		= "";
	-- GATHERER_REPORT_COL_PTYPE		= "";
	-- GATHERER_REPORT_COL_PDENSITY	= "";

	-- GATHERER_REPORT_SUMMARY			= "";

	-- Search Dialog
	-- GATHERER_TAB_SEARCH_TIP			= "";

	-- GATHERER_SEARCH_LOCATION			= "";
	-- GATHERER_SEARCH_COL_CONTINENT	= "";
	-- GATHERER_SEARCH_COL_ZONE			= "";
	-- GATHERER_SEARCH_COL_PNODE		= "";
	-- GATHERER_SEARCH_COL_PDENSITY		= "";

	-- GATHERER_SEARCH_SUMMARY			= "";

	-- World Map
	--GATHERER_FILTERDM_TEXT		= ""
	--GATHERER_FILTERDM_TIP		= ""

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER		= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU		= "Gatherer-Men\195\188 An/Aus";
	-- BINDING_NAME_GATHERER_BINDING_OPTIONS	= "";
	-- BINDING_NAME_GATHERER_BINDING_REPORT		= "";
	-- BINDING_NAME_GATHERER_BINDING_SEARCH		= "";
end

if ( GetLocale() == "esES" ) then
-- Quick Menu
	GATHERER_TEXT_TITLE_BUTTON	= "Opciones de Gatherer";
	
	GATHERER_TEXT_TOGGLE_MINIMAP	= "Minimapa ";
	GATHERER_TEXT_TOGGLE_MAINMAP	= "Mapa del Mundo ";
	GATHERER_TEXT_TOGGLE_HERBS   	= "Hierbas ";
	GATHERER_TEXT_TOGGLE_MINERALS	= "Minerales ";
	GATHERER_TEXT_TOGGLE_TREASURE	= "Tesoros ";
	GATHERER_TEXT_TOGGLE_REPORT     = "Relato";
	GATHERER_TEXT_TOGGLE_SEARCH	= "Buscar";

	GATHERER_REPORT_TIP		= "Acceder diálogo del relato.";
	GATHERER_SEARCH_TIP		= "Acceder diálogo de búsqueda.";
	GATHERER_MENUTITLE_TIP		= "Acceder diálogo de configuración.";
	GATHERER_ZMBUTTON_TIP		= "Acceder diálogo de pareja de zona.";

	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE      = "Gatherer: Opciones";
	GATHERER_TAB_MENU_TEXT		= "Menú Rápido";

	GATHERER_TEXT_SHOWONMOUSE       = "Mostrar en pasar el ratón sobre";
	GATHERER_TEXT_HIDEONMOUSE       = "Esconder sin pasar el ratón sobre";
	GATHERER_TEXT_SHOWONCLICK       = "Mostrar en hacer clic izquierda";
	GATHERER_TEXT_HIDEONCLICK       = "Esconder en hacer clic izquierda";
	GATHERER_TEXT_HIDEONBUTTON      = "Esconder en pulsar botón";
	GATHERER_TEXT_POSITION          = "Posición";
	GATHERER_TEXT_RADIUS	        = "Radio";
	GATHERER_TEXT_HIDEICON		= "Esconder icono de menú";

	GATHERER_SHOWONMOUSE_TIP	= "Mostrar menú en pasar el ratón sobre el ícono.";
	GATHERER_SHOWONCLICK_TIP	= "Mostrar menú en hacer clic izquierda en el ícono.";
	GATHERER_HIDEONMOUSE_TIP	= "Esconder menú sin pasar el ratón sobre el ícono.";
	GATHERER_HIDEONCLICK_TIP	= "Esconder menú en hacer clic izquierda en el ícono.";
	GATHERER_HIDEONBUTTON_TIP	= "Esconder menú en selección.";
	GATHERER_HIDEICON_TIP		= "Esconder ícono de minimapa para acceder el menú.";
	GATHERER_TEXT_POSITION_TIP  	= "Ajustar la posición del ícono de rastreo sobre el borde del minimapa.";
	GATHERER_TEXT_RADIUS_TIP  	= "Ajustar la posición del ícono de rastreo al centro del minimapa.";
	GATHERER_TAB_MENU_TEXT_TIP	= "Acceder opciones del menú rápido.";

	-- Globals Options
	GATHERER_TAB_GLOBALS_TEXT		= "Mundiales";

	GATHERER_TEXT_RAREORE           	= "Emparejar mena/hierbas raros";
	GATHERER_TEXT_NO_MINICONDIST		= "Ningún ícono debajo de distancia mínima";
	GATHERER_TEXT_MAPMINDER			= "Activar Map Minder";
	GATHERER_TEXT_MAPMINDER_VALUE		= "Temporizador Map Minder";
	GATHERER_TEXT_FADEPERC			= "Porcentaje de Desvanecerse";
	GATHERER_TEXT_FADEDIST			= "Distancia de Desvanecerse";
	GATHERER_TEXT_THEME			= "Tema: ";
	GATHERER_TEXT_MINIIDIST			= "Distancia el ícono mínimo";
	GATHERER_TEXT_NUMBER			= "Número de mininotas";
	GATHERER_TEXT_MAXDIST			= "Distancia de mininotas";
	GATHERER_TEXT_HIDEMININOTES		= "Esconder mininotas";
	GATHERER_TEXT_TOGGLEWORLDNOTES		= "Nombres de nota mundial largo";
	GATHERER_TEXT_WMICONSIZEEB		= "Tamaño de ícono de mapa del mundo";
	GATHERER_TEXT_WMICONALPHAEB		= "Transparencia de ícono de mapa del mundo";
	GATHERER_TEXT_ALPHAUNDER_MINICON	= "Transparencia debajo mínimo";

	GATHERER_MAPMINDER_TIP			= "Activar/Desactivar Map Minder.";
	GATHERER_TEXT_MAPMINDER_TIP		= "Ajustar el temporizador Map Minder.";
	GATHERER_THEME_TIP			= "Asignar tema de ícono.";
	GATHERER_NOMINIICONDIST_TIP		= "Sin muestra del ícono del minimapa debajo distancia mínima";	
	GATHERER_RAREORE_TIP			= "Mostrar mena/hierbas comúnes/raros juntos";
	GATHERER_TEXT_FADEPERC_TIP		= "Ajustar porcentaje de desvanecerse del ícono.";
	GATHERER_TEXT_FADEDIST_TIP		= "Ajustar distancia de desvanecerse del ícono.";
	GATHERER_TEXT_MINIIDIST_TIP		= "Ajustar distancia mínima de que aparecer el artículo de ícono.";
	GATHERER_TEXT_NUMBER_TIP		= "Ajustar número de mininotas mostrado en el minimapa.";
	GATHERER_TEXT_MAXDIST_TIP		= "Ajustar distancia máxima cuando buscando mininotas para mostrar en el minimapa.";
	GATHERER_HIDEMININOTES_TIP		= "No mostrar mininotas en el minimapa.";
	GATHERER_TOGGLEWORLDNOTES_TIP		= "Alternar entre nombre del artículo corto/largo en las notas del mapa del mundo";
	GATHERER_WMICONSIZEEB_TIP		= "Asignar tamaño de ícono en el mapa del mundo.";
	GATHERER_WMICONALPHAEB_TIP		= "Asignar transparencia del ícono en el mapa del mundo.";
	GATHERER_TEXT_ALPHAUNDER_MINICON_TIP 	= "Asignar transparencia del mininota debajo distancia mínima.";
	
	GATHERER_TAB_GLOBALS_TEXT_TIP		= "Acceder Opciones Mundiales.";
	
	-- Filters Options
	GATHERER_TAB_FILTERS_TEXT 		= "Filtros";

	GATHERER_TEXT_FILTER_HERBS		= "Hierbas: ";
	GATHERER_TEXT_FILTER_ORE		= "Mena: ";
	GATHERER_TEXT_FILTER_TREASURE		= "Tesoro: ";
	GATHERER_TEXT_LINKRECORD        	= "Anotación de filtro"
	GATHERER_TEXT_WMFILTERS			= "Filtros en el mapa del mundo";
	GATHERER_TEXT_DISABLEWMFIX		= "Activar botón Mostrar/Esconder";

	GATHERER_HERBSKLEB_TIP			= "Asignar habilidad mínima de Botánica para mostrar.";
	GATHERER_ORESKLEB_TIP			= "Asignar hablidad mínima de Minería para mostrar.";
	GATHERER_HERBDDM_TIP			= "Filtrar hierbas ya mostrado.";
	GATHERER_OREDDM_TIP			= "Filtrar menas ya mostrado.";
	GATHERER_TREASUREDDM_TIP		= "Filtrar tesoros ya mostrado.";
	GATHERER_TEXT_LINKRECORD_TIP		= "Vincular recuerdos al filtros seleccionados.";
	GATHERER_TEXT_WMFILTERS_TIP		= "Alternar artículos de filtros en el mapa del mundo.";
	GATHERER_TEXT_DISABLEWMFIX_TIP		= "Activar botón Mostrar/Esconder del mapa del mundo para mostrar artículos";

	GATHERER_TAB_FILTERS_TEXT_TIP		= "Acceder opciones de filtros."

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "Pareja de Zona";

	GATHERER_TEXT_APPLY_REMATCH		= "Applicar pareja de zona:";
	GATHERER_TEXT_SRCZONE_MISSING		= "Fuente de zona no seleccionado.";
	GATHERER_TEXT_DESTZONE_MISSING		= "Destino de zona no seleccionado.";
	GATHERER_TEXT_FIXITEMS			= "Arreglar nombres de artículos";
	GATHERER_TEXT_LASTMATCH			= "Pareja reciente: ";
	GATHERER_TEXT_LASTMATCH_NONE		= "Ninguno";
	GATHERER_TEXT_CONFIRM_REMATCH		= "Confirmar pareja de zona (ADVERTENCIA, modificará los datos)";

	GATHERER_ZM_FIXITEM_TIP			= "Arreglar nombres de artículos, solamente la versión localizada";
	GATHERER_ZM_SRCDDM_TIP			= "Asignar orden de mapa fuente.";
	GATHERER_ZM_DESTDDM_TIP			= "Asignar orden de mapa destino.";

	-- Report Dialog
	GATHERER_TAB_REPORT_TIP			= "Relato de nódulo por zona.";
	
	GATHERER_REPORT_LOCATION		= "Ubicación:";
	GATHERER_REPORT_COL_TYPE		= "Tipo";
	GATHERER_REPORT_COL_NAME		= "Recolectable";
	GATHERER_REPORT_COL_PTYPE		= "% Tipo";
	GATHERER_REPORT_COL_PDENSITY		= "% Densidad";
	
	GATHERER_REPORT_SUMMARY			= "Total: # recolectado y nódulos";

	-- Search Dialog
	GATHERER_TAB_SEARCH_TIP			= "Buscar zona conteniendo artículo específico.";
	
	GATHERER_SEARCH_LOCATION		= "Artículo:";
	GATHERER_SEARCH_COL_CONTINENT		= "Continente";
	GATHERER_SEARCH_COL_ZONE		= "Zona";
	GATHERER_SEARCH_COL_PNODE		= "% Nodúlo";
	GATHERER_SEARCH_COL_PDENSITY		= "% Densidad";

	GATHERER_SEARCH_SUMMARY			= "Encontrado: # nódulos y zonas";
	
	-- World Map
	GATHERER_FILTERDM_TEXT			= "Filtros"
	GATHERER_FILTERDM_TIP			= "Modificar filtros de artículos."

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER		= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU		= "Mostrar/Esconder Gatherer Menú Rápido";
	BINDING_NAME_GATHERER_BINDING_OPTIONS		= "Mostrar/Esconder Gatherer Opciones";
	BINDING_NAME_GATHERER_BINDING_REPORT		= "Mostrar/Esconder Gatherer Relato";
	BINDING_NAME_GATHERER_BINDING_SEARCH		= "Mostrar/Esconder Gatherer Opciones";

	-- MyAddons Help Pages
	GathererHelp = {};
	GathererHelp[1] ="|cffff7f3fTable of Contents|r\n\n1- Quick Menu\n2- Minimap\n3- World Map\n4- Options Dialog\n5- Zone Rematch Dialog\n6- Report Dialog\n7- Search Dialog\n8- Node Editor\n";
	GathererHelp[2] ="|cffff7f3fQuick Menu:|r\n\nAllows fast access to basic display filters (minimap, world map, herbs, ores and treasures) as well as access to the statistic dialogs (see help pages on Report and Search).\n\nClicking on the menu title will bring up the configuration dialog.\n";
	GathererHelp[3] ="|cffff7f3fMinimap:|r\n\nThe minimap will display icons for the closest gathers (25 max, according to filters, number of gather to show, max distance to consider, etc.).\n\nMousing over these icons will bring up a tooltip detailing the gatherable name, the number of time a successful gather was performed there and the distance to it from current position (in units and time to get there in a straight line at standard running speed).\n";
	GathererHelp[4] ="|cffff7f3fWorld Map:|r\n\nThe World Map will display icons for all gathered items in the selected zone (400 max, according to selected filters, etc.).\n\nSince having a great number of items to display may cause lag while trying to access the map, by default the items are shown (there is a toggle in the Filters option tab not to display them all the time, it enables a Show Items button on the world map).\n\nThe World Map also allows access to the Node Editor to do some basic manipulation on the Database, by alt-right clicking on a node.\n";
	GathererHelp[5] ="|cffff7f3fOptions Dialog:|r\n\nThe option dialog is divided in 3 tabs: Filters, Globals, Quick Menu\n\n|cffff7f3fFilters Tab|r deals with filters related option (including control for the Show/Hide button on the World Map).\n\n|cffff7f3fGlobals Tab|r handles options related to core Gatherer functionnality (most of these are also availale though command line).\n\n|cffff7f3fQuick Menu Tab|r controls the behaviour of the quick menu from the minimap icon (including icon position and show/hide control).\n";
	GathererHelp[6] ="|cffff7f3fZone Rematch Dialog:|r\n\nThis is mainly a facility for localized WoW clients in which the zone name translations were not complete by the time of the official WoW release.\n\nWhen zone names are changed, zone indexes change too because they are sorted alphabetically.\nThis facility provides transition matrixes to fix these indexes by selecting a Source Zone order (ie. previous one) and a Destination Zone order (ie. current one) identified by the WoW version and prefixed by WoW client language (the fix item checkbox allows item names that have been changed to be fixed).\n\nThis also allows global manipulation of the database, such as changing it's format, this is done with any selected source and destination zone order, for non-localized clients an identify matrix should be used (ie. same source and destination order).\n\n|cffff7f3fDatabase is modified, so keep a backup of your data, just in case.|r\n";
	GathererHelp[7] ="|cffff7f3fReport Dialog:|r\n\nIn this dialog you can display the items you have collected in the various zones (one zone at a time) for a quick overview.\n\nYou can click on the various column headings to sort (and reverse sort) the display according to that column contents.\n\nMost of the columns are self-explanatory, except for the ones detailed below:\n|cffff7f3fType %:|r\n  Percentage of the ressource compared to number of recorded gather of the same type in zone.\n\n|cffff7f3fDensity %:|r\n  Percentage of the ressource compared to number of recorded gather of the same item worldwide.\n";
	GathererHelp[8] ="|cffff7f3fSearch Dialog:|r\n\nIn this dialog you can specify an item and display the various zones in which it has already been gathered.\n\nYou can click on the various column headings to sort (and reverse sort) the display according to that column contents.\n\nMost of the columns are self-explanatory, except for the ones detailed below:\n|cffff7f3fNode %:|r\n  Percentage of the ressource compared to the number of nodes in zone.\n\n|cffff7f3fDensity %:|r\n  Percentage of the ressource compared to total matching nodes worldwide.\n";
	GathererHelp[9] ="|cffff7f3fNode Editor:|r\n\nIn this dialog you (alt-right click on a node in the World Map), you can change the node name, it's icon, toggle it as bugged or delete it.\n\n|cffff7f3fToggle Bugged|r will only work for the current selected node.\n\n|cffff7f3fDelete|r use scope (Node by default to avoid mistakes) and can be extended to Zone, Continent and World scopes.\n\n|cffff7f3fAccept|r will take into account the new node name (remember to hit enter after filling the new name) and/or icon.\nAs for the delete button, this one takes scope into account and can be applied at Node, Zone, Continent and World level.\n";
	GathererHelp.currentPage=1;

	-- GathererDetails = {}; -- this line MUST NOT be repeated in localization blocks
	GathererDetails["description"] = "Mostrar ubicaciones de hierbas/menas/tesoros recolectados";
	GathererDetails["releaseDate"] = "27 de agosto de 2006";
end

if ( GetLocale() == "koKR" ) then
	-- Quick Menu
	GATHERER_TEXT_TITLE_BUTTON		= "Gatherer 옵션";
	
	GATHERER_TEXT_TOGGLE_MINIMAP	= "미니맵 ";
	GATHERER_TEXT_TOGGLE_MAINMAP	= "월드맵 ";
	GATHERER_TEXT_TOGGLE_HERBS   	= "약초 ";
	GATHERER_TEXT_TOGGLE_MINERALS	= "광석 ";
	GATHERER_TEXT_TOGGLE_TREASURE	= "보물함 ";
	GATHERER_TEXT_TOGGLE_REPORT     = "보고서";
	GATHERER_TEXT_TOGGLE_SEARCH		= "검색";

	GATHERER_REPORT_TIP				= "대화 보고서창 열기";
	GATHERER_SEARCH_TIP				= "대화 검색창 열기";
	GATHERER_MENUTITLE_TIP			= "Gatherer 옵션구성 창 열기";
	GATHERER_ZMBUTTON_TIP			= "지역 매치창 열기";

	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE      = "Gatherer: 옵션설정";
	GATHERER_TAB_MENU_TEXT			= "퀵 메뉴";

	GATHERER_TEXT_SHOWONMOUSE       = "마우스 오버시 보기";
	GATHERER_TEXT_HIDEONMOUSE       = "마우스 아웃시 숨기기";
	GATHERER_TEXT_SHOWONCLICK       = "좌클릭시 보이기";
	GATHERER_TEXT_HIDEONCLICK       = "좌클릭시 숨기기";
	GATHERER_TEXT_HIDEONBUTTON      = "버튼 누룰때 숨기기";
	GATHERER_TEXT_POSITION          = "위치";
	GATHERER_TEXT_RADIUS	        = "반지름";
	GATHERER_TEXT_HIDEICON			= "메뉴 아이콘 숨기기";

	GATHERER_SHOWONMOUSE_TIP		= "아이콘을 마우스오버하여 메뉴 표시";
	GATHERER_SHOWONCLICK_TIP		= "아이콘을 좌클릭하여 메뉴 표시";
	GATHERER_HIDEONMOUSE_TIP		= "마우스 오버하여 메뉴를 숨김";
	GATHERER_HIDEONCLICK_TIP		= "아이콘 좌클릭하여 메뉴 숨김";
	GATHERER_HIDEONBUTTON_TIP		= "선택하여 메뉴 숨김";
	GATHERER_HIDEICON_TIP			= "메뉴 오픈시 미니맵 아이콘 숨김";
	GATHERER_TEXT_POSITION_TIP  	= "미니 맵 테두리 주위의 추적 아이콘 위치를 조정합니다.";
	GATHERER_TEXT_RADIUS_TIP  		= "미니 맵의 중앙에서 추적 아이콘의 위치를 조정합니다.";

	GATHERER_TAB_MENU_TEXT_TIP		= "퀵메뉴 설정옵션 열";

	-- Globals Options
	GATHERER_TAB_GLOBALS_TEXT		= "전체 옵션설정";

	GATHERER_TEXT_RAREORE           = "두가지 희귀 광석/약초";
	GATHERER_TEXT_NO_MINICONDIST	= "최소 거리 미만의 아이콘 없음";
	GATHERER_TEXT_MAPMINDER			= "맵 마인더 활성화";
	GATHERER_TEXT_MAPMINDER_VALUE	= "맵 마인더 타이머";
	GATHERER_TEXT_FADEPERC			= "투명도 백분율";
	GATHERER_TEXT_FADEDIST			= "거리 투명도";
	GATHERER_TEXT_THEME				= "테마: ";
	GATHERER_TEXT_MINIIDIST			= "최소 아이콘 거리";
	GATHERER_TEXT_NUMBER			= "미니노트 번호";
	GATHERER_TEXT_MAXDIST			= "미니노트 거리";
	GATHERER_TEXT_HIDEMININOTES		= "미니노트 숨기기";
	GATHERER_TEXT_TOGGLEWORLDNOTES	= "긴 글 노트네임";
	GATHERER_TEXT_WMICONSIZEEB		= "세계지도 아이콘 크기";
	GATHERER_TEXT_WMICONALPHAEB		= "세계지도 아이콘 투명도";
	GATHERER_TEXT_ALPHAUNDER_MINICON= "분당 투명도";

	GATHERER_MAPMINDER_TIP			= "맵마인더 활성화/비활성화";
	GATHERER_TEXT_MAPMINDER_TIP		= "맵마인더 타이머 조정";
	GATHERER_THEME_TIP				= "아이콘 테마 설정";
	GATHERER_NOMINIICONDIST_TIP		= "최소거리에 미니맵 아이콘 표시되지 않음";	
	GATHERER_RAREORE_TIP			= "일반/희귀한 광석/약초를 함께 표시";
	GATHERER_TEXT_FADEPERC_TIP		= "아이콘 투명도 퍼센트 조정" ;
	GATHERER_TEXT_FADEDIST_TIP		= "아이콘 투명도 거리 조정";
	GATHERER_TEXT_MINIIDIST_TIP		= "항목 아이콘이 나타나는 최소 거리 조정.";
	GATHERER_TEXT_NUMBER_TIP		= "미니맵에 표시되는 미니노트 수를 조정합니다";
	GATHERER_TEXT_MAXDIST_TIP		= "미니맵에 표시 할 미니노트를 찾을 때 고려할 최대 거리를 조정";
	GATHERER_HIDEMININOTES_TIP		= "미니맵에 미니맵노트를 표시하지 마십시오.";
	GATHERER_TOGGLEWORLDNOTES_TIP	= "세계지도 메모의 짧고/긴 항목 이름 간 전환";
	GATHERER_WMICONSIZEEB_TIP		= "세계지도에 아이콘 크기 설정";
	GATHERER_WMICONALPHAEB_TIP		= "세계지도에서 아이콘 투명도 설정";
	GATHERER_TEXT_ALPHAUNDER_MINICON_TIP = "최소 거리에서 미니 노트 투명도 설정";
	
	GATHERER_TAB_GLOBALS_TEXT_TIP	= "전체 옵션설정 활성화";
	
	-- Filters Options
	GATHERER_TAB_FILTERS_TEXT 		= "필터";

	GATHERER_TEXT_FILTER_HERBS		= "약초: ";
	GATHERER_TEXT_FILTER_ORE		= "광석: ";
	GATHERER_TEXT_FILTER_TREASURE	= "보물: ";
	GATHERER_TEXT_LINKRECORD        = "필터 레코드"
	GATHERER_TEXT_WMFILTERS			= "세계지도에 필터";
	GATHERER_TEXT_DISABLEWMFIX		= "표시/숨기기 버튼 사용";

	GATHERER_HERBSKLEB_TIP			= "디스플레이를 위한 최소 약초채집기술 설정";
	GATHERER_ORESKLEB_TIP			= "디스플레이를 위한 최소 채광 기술 설정";
	GATHERER_HERBDDM_TIP			= "약초를 보여 주는 필터";
	GATHERER_OREDDM_TIP				= "광석을 보여 주는 필터";
	GATHERER_TREASUREDDM_TIP		= "보물을 보여 주는 필터";
	GATHERER_TEXT_LINKRECORD_TIP	= "선택한 필터에 기록을 연결합니다.";
	GATHERER_TEXT_WMFILTERS_TIP		= "월드맵에서 항목 필터를 전환합니다.";
	GATHERER_TEXT_DISABLEWMFIX_TIP	= "항목을 표시하려면 월드맵에서 보기/숨기기 버튼을 활성화합니다.";

	GATHERER_TAB_FILTERS_TEXT_TIP	= "활성화 필터 옵션"

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "지역 재검색";

	GATHERER_TEXT_APPLY_REMATCH		= "지역 재검색 적용:";
	GATHERER_TEXT_SRCZONE_MISSING	= "소스 지역이 선택되지 않았습니다.";
	GATHERER_TEXT_DESTZONE_MISSING	= "대상 영역이 선택되지 않았습니다.";
	GATHERER_TEXT_FIXITEMS			= "항목 이름 수정";
	GATHERER_TEXT_LASTMATCH			= "마지막 매치: ";
	GATHERER_TEXT_LASTMATCH_NONE	= "없음";
	GATHERER_TEXT_CONFIRM_REMATCH	= "지역 재검색 확인 (경고- 데이터 수정 예정).";

	GATHERER_ZM_FIXITEM_TIP			= "수정된 항목 이름,현지화 된 버전만 가능";
	GATHERER_ZM_SRCDDM_TIP			= "소스 맵 순서 설정";
	GATHERER_ZM_DESTDDM_TIP			= "대상 맵 순서를 설정하십시오.";

	-- Report Dialog
	GATHERER_TAB_REPORT_TIP			= "지역별 지점 보고서";
	
	GATHERER_REPORT_LOCATION		= "위치:";
	GATHERER_REPORT_COL_TYPE		= "유형";
	GATHERER_REPORT_COL_NAME		= "수집";
	GATHERER_REPORT_COL_PTYPE		= "% 유형";
	GATHERER_REPORT_COL_PDENSITY	= "% 밀도";
	
	GATHERER_REPORT_SUMMARY			= "총계: # 수집하다 & 지점";

	-- Search Dialog
	GATHERER_TAB_SEARCH_TIP			= "특정 항목이 포함된 지역 검색";
	
	GATHERER_SEARCH_LOCATION		= "항목:";
	GATHERER_SEARCH_COL_CONTINENT	= "대륙";
	GATHERER_SEARCH_COL_ZONE		= "지역";
	GATHERER_SEARCH_COL_PNODE		= "% 지점";
	GATHERER_SEARCH_COL_PDENSITY	= "% 밀도";

	GATHERER_SEARCH_SUMMARY			= "총계: # 수집하다 & 지역";
	
	-- World Map
	GATHERER_FILTERDM_TEXT		= "필터"
	GATHERER_FILTERDM_TIP		= "항목 필터 수정"

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER		= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU		= "Gatherer 퀵메뉴 보기/감추기";
	BINDING_NAME_GATHERER_BINDING_OPTIONS		= "Gatherer 옵션설정 보기/감추기";
	BINDING_NAME_GATHERER_BINDING_REPORT		= "Gatherer 리포트 보기/감추기";
	BINDING_NAME_GATHERER_BINDING_SEARCH		= "Gatherer 검색 보기/감추기";

	-- MyAddons Help Pages
	GathererHelp = {};
	GathererHelp[1] ="|cffff7f3f목차|r\n\n1- 퀵 메뉴\n2- 미니맵\n3- 월드맵\n4- 설정옵션 상자\n5- 지역 재검색 대화상자\n6- 보고서 대화 상자\n7- 검색 대화 상자\n8- 지점 편집기\n";
	GathererHelp[2] ="|cffff7f3f퀵 메뉴:|r\n\n기본 디스플레이 필터 (미니맵, 세계지도, 채집, 광석, 보물)뿐만 아니라 통계 대화 상자 (보고서 및 검색의 도움말 페이지 참조)에 대한 빠른 액세스를 허용합니다.\n\n메뉴 제목을 클릭하면 구성 대화 상자가 나타납니다.\n";
	GathererHelp[3] ="|cffff7f3f미니맵:|r\n\n미니 맵은 가장 가까운 Gatherer (25개 최대, 필터, 보여줄 횟수, 고려해야 할 최대 거리 등)에 대한 아이콘을 표시합니다.\n\n이 아이콘 위에 마우스를 가져 가면 집계 이름, 성공한 수집 횟수 및 현재 위치에서의 거리 (표준 실행시 직선으로 표시되는 단위 및 시간)에 대한 툴팁이 나타납니다.\n";
	GathererHelp[4] ="|cffff7f3fWorld Map:|r\n\nThe World Map will display icons for all gathered items in the selected zone (400 max, according to selected filters, etc.).\n\nSince having a great number of items to display may cause lag while trying to access the map, by default the items are shown (there is a toggle in the Filters option tab not to display them all the time, it enables a Show Items button on the world map).\n\nThe World Map also allows access to the Node Editor to do some basic manipulation on the Database, by alt-right clicking on a node.\n";
	GathererHelp[5] ="|cffff7f3fOptions Dialog:|r\n\nThe option dialog is divided in 3 tabs: Filters, Globals, Quick Menu\n\n|cffff7f3fFilters Tab|r deals with filters related option (including control for the Show/Hide button on the World Map).\n\n|cffff7f3fGlobals Tab|r handles options related to core Gatherer functionnality (most of these are also availale though command line).\n\n|cffff7f3fQuick Menu Tab|r controls the behaviour of the quick menu from the minimap icon (including icon position and show/hide control).\n";
	GathererHelp[6] ="|cffff7f3fZone Rematch Dialog:|r\n\nThis is mainly a facility for localized WoW clients in which the zone name translations were not complete by the time of the official WoW release.\n\nWhen zone names are changed, zone indexes change too because they are sorted alphabetically.\nThis facility provides transition matrixes to fix these indexes by selecting a Source Zone order (ie. previous one) and a Destination Zone order (ie. current one) identified by the WoW version and prefixed by WoW client language (the fix item checkbox allows item names that have been changed to be fixed).\n\nThis also allows global manipulation of the database, such as changing it's format, this is done with any selected source and destination zone order, for non-localized clients an identify matrix should be used (ie. same source and destination order).\n\n|cffff7f3fDatabase is modified, so keep a backup of your data, just in case.|r\n";
	GathererHelp[7] ="|cffff7f3fReport Dialog:|r\n\nIn this dialog you can display the items you have collected in the various zones (one zone at a time) for a quick overview.\n\nYou can click on the various column headings to sort (and reverse sort) the display according to that column contents.\n\nMost of the columns are self-explanatory, except for the ones detailed below:\n|cffff7f3fType %:|r\n  Percentage of the ressource compared to number of recorded gather of the same type in zone.\n\n|cffff7f3fDensity %:|r\n  Percentage of the ressource compared to number of recorded gather of the same item worldwide.\n";
	GathererHelp[8] ="|cffff7f3fSearch Dialog:|r\n\nIn this dialog you can specify an item and display the various zones in which it has already been gathered.\n\nYou can click on the various column headings to sort (and reverse sort) the display according to that column contents.\n\nMost of the columns are self-explanatory, except for the ones detailed below:\n|cffff7f3fNode %:|r\n  Percentage of the ressource compared to the number of nodes in zone.\n\n|cffff7f3fDensity %:|r\n  Percentage of the ressource compared to total matching nodes worldwide.\n";
	GathererHelp[9] ="|cffff7f3fNode Editor:|r\n\nIn this dialog you (alt-right click on a node in the World Map), you can change the node name, it's icon, toggle it as bugged or delete it.\n\n|cffff7f3fToggle Bugged|r will only work for the current selected node.\n\n|cffff7f3fDelete|r use scope (Node by default to avoid mistakes) and can be extended to Zone, Continent and World scopes.\n\n|cffff7f3fAccept|r will take into account the new node name (remember to hit enter after filling the new name) and/or icon.\nAs for the delete button, this one takes scope into account and can be applied at Node, Zone, Continent and World level.\n";
	GathererHelp.currentPage=1;

	GathererDetails = {}; -- this line MUST NOT be repeated in localization blocks
	GathererDetails["description"] = "수집된 채집/광석/보물 위치 표시";
	GathererDetails["releaseDate"] = "2006년 8월 27일";
end

-- localized by biAji
if ( GetLocale() == "zhCN" ) then

	GATHERER_TEXT_TITLE_BUTTON		= "Gatherer\233\128\137\233\161\185";

	GATHERER_TEXT_TOGGLE_MINIMAP	= "\232\191\183\228\189\160\229\156\176\229\155\190";
	GATHERER_TEXT_TOGGLE_MAINMAP	= "\228\184\150\231\149\140\229\156\176\229\155\190";
	GATHERER_TEXT_TOGGLE_HERBS   	= "\232\141\137\232\141\175";
	GATHERER_TEXT_TOGGLE_MINERALS	= "\231\159\191\231\137\169";
	GATHERER_TEXT_TOGGLE_TREASURE	= "\229\174\157\231\174\177";
	GATHERER_TEXT_TOGGLE_REPORT     = "\230\138\165\229\145\138";
	GATHERER_TEXT_TOGGLE_SEARCH		= "\230\144\156\231\180\162";

	GATHERER_REPORT_TIP				= "\230\137\147\229\188\128\230\138\165\229\145\138\229\175\185\232\175\157\230\161\134";
	GATHERER_SEARCH_TIP				= "\230\137\147\229\188\128\230\144\156\231\180\162\229\175\185\232\175\157\230\161\134";
	GATHERER_MENUTITLE_TIP			= "\230\137\147\229\188\128\233\133\141\231\189\174\229\175\185\232\175\157\230\161\134";
	GATHERER_ZMBUTTON_TIP			= "\230\137\147\229\188\128Zone Match\175\185\232\175\157\230\161\134";

	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE      = "Gatherer: \233\128\137\233\161\185";
	GATHERER_TAB_MENU_TEXT			= "\229\191\171\233\128\159\232\143\156\229\141\149";

	GATHERER_TEXT_SHOWONMOUSE       = "\233\188\160\230\160\135\231\167\187\232\191\135\230\151\182\230\152\190\231\164\186";
	GATHERER_TEXT_HIDEONMOUSE       = "\233\188\160\230\160\135\231\167\187\229\135\186\230\151\182\233\154\144\232\151\143";
	GATHERER_TEXT_SHOWONCLICK       = "\229\183\166\233\148\174\231\130\185\229\135\187\230\152\190\231\164\186";
	GATHERER_TEXT_HIDEONCLICK       = "\229\183\166\233\148\174\231\130\185\229\135\187\233\154\144\232\151\143";
	GATHERER_TEXT_HIDEONBUTTON      = "\230\140\137\233\148\174\233\154\144\232\151\143";
	GATHERER_TEXT_POSITION          = "\228\189\141\231\189\174";
	GATHERER_TEXT_RADIUS	        = "\229\141\138\229\190\132";
	GATHERER_TEXT_HIDEICON          = "\233\154\144\232\151\143\232\143\156\229\141\149\229\155\190\230\160\135";

	GATHERER_SHOWONMOUSE_TIP		="\233\188\160\230\160\135\231\167\187\232\191\135\229\155\190\230\160\135\230\151\182\230\152\190\231\164\186\232\143\156\229\141\149";
	GATHERER_SHOWONCLICK_TIP		="\233\188\160\230\160\135\229\183\166\233\148\174\231\130\185\229\135\187\229\155\190\230\160\135\230\151\182\230\152\190\231\164\186\232\143\156\229\141\149";
	GATHERER_HIDEONMOUSE_TIP		="\233\188\160\230\160\135\231\167\187\232\191\135\230\151\182\233\154\144\232\151\143\232\143\156\229\141\149";
	GATHERER_HIDEONCLICK_TIP		="\229\183\166\233\148\174\231\130\185\229\135\187\229\155\190\230\160\135\230\151\182\233\154\144\232\151\143\232\143\156\229\141\149";
	GATHERER_HIDEONBUTTON_TIP		= "\233\128\137\228\184\173\230\151\182\233\154\144\232\151\143\232\143\156\229\141\149\227\128\130";
	GATHERER_HIDEICON_TIP			= "\233\154\144\232\151\143\232\191\183\228\189\160\229\156\176\229\155\190\230\151\129\231\154\132\229\155\190\230\160\135\227\128\130";
	GATHERER_TEXT_POSITION_TIP      = "\232\176\131\230\149\180\229\155\190\230\160\135\229\156\168\232\191\183\228\189\160\229\156\176\229\155\190\232\190\185\231\188\152\231\154\132\228\189\141\231\189\174";
	GATHERER_TEXT_RADIUS_TIP  		= "\232\176\131\230\149\180\232\183\159\232\184\170\229\155\190\230\160\135\232\183\157\231\166\187\232\191\183\228\189\160\229\156\176\229\155\190\228\184\173\229\191\131\231\154\132\228\189\141\231\189\174\227\128\130";

	GATHERER_TAB_MENU_TEXT_TIP		= "\229\191\171\233\128\159\232\143\156\229\141\149\233\128\137\233\161\185";

	-- Globals Options
	GATHERER_TAB_GLOBALS_TEXT		= "\229\133\168\229\177\128\233\128\137\233\161\185";


	GATHERER_TEXT_RAREORE           = "\231\168\128\230\156\137\231\159\191\231\137\169\\232\141\137\232\141\175";
	GATHERER_TEXT_NO_MINICONDIST	= "\230\156\128\229\176\143\232\183\157\231\166\187\229\134\133\228\184\141\230\152\190\231\164\186\229\155\190\230\160\135\227\128\130";
	GATHERER_TEXT_MAPMINDER			= "\230\191\128\230\180\187\229\156\176\229\155\190\231\155\145\232\167\134";
	GATHERER_TEXT_MAPMINDER_VALUE	= "\229\156\176\229\155\190\231\155\145\232\167\134\230\151\182\233\151\180";
	GATHERER_TEXT_FADEPERC			= "\233\128\143\230\152\142\229\186\166";
	GATHERER_TEXT_FADEDIST			= "\233\128\143\230\152\142\232\183\157\231\166\187";
	GATHERER_TEXT_THEME				= "\228\184\187\233\162\152\239\188\154";
	GATHERER_TEXT_MINIIDIST			= "\232\191\183\228\189\160\229\155\190\230\160\135\230\152\190\231\164\186\232\183\157\231\166\187";
	GATHERER_TEXT_NUMBER			= "\232\191\183\228\189\160\230\143\144\231\164\186\230\149\176\233\135\143";
	--GATHERER_TEXT_MAXDIST			= "";
	GATHERER_TEXT_HIDEMININOTES		= "\233\154\144\232\151\143\232\191\183\228\189\160\230\143\144\231\164\186";
	--GATHERER_TEXT_TOGGLEWORLDNOTES	= "";
	GATHERER_TEXT_WMICONSIZEEB      = "\228\184\150\231\149\140\229\156\176\229\155\190\229\155\190\230\160\135\229\164\167\229\176\143";
	GATHERER_TEXT_WMICONALPHAEB		= "\228\184\150\231\149\140\229\156\176\229\155\190\229\155\190\230\160\135\233\128\143\230\152\142\229\186\166";
	--GATHERER_TEXT_ALPHAUNDER_MINICON= "";

	--GATHERER_MAPMINDER_TIP			= "";
	--GATHERER_TEXT_MAPMINDER_TIP		= "";
	GATHERER_THEME_TIP				= "\232\174\190\231\189\174\229\155\190\230\160\135\228\184\187\233\162\152";

	GATHERER_NOMINIICONDIST_TIP		= "\230\156\128\229\176\143\232\183\157\231\166\187\229\134\133\228\186\142\232\191\183\228\189\160\229\156\176\229\155\190\228\184\138\228\184\141\230\152\190\231\164\186\229\155\190\230\160\135\227\128\130";
	GATHERER_RAREORE_TIP			= "\229\144\140\230\151\182\230\152\190\231\164\186\230\153\174\233\128\154\47\231\168\128\230\156\137\231\154\132\231\159\191\231\137\169\47\232\141\137\232\141\175\227\128\130";
	GATHERER_TEXT_FADEPERC_TIP		= "\232\176\131\230\149\180\229\155\190\230\160\135\230\182\136\233\154\144\231\153\190\229\136\134\230\175\148" ;
	GATHERER_TEXT_FADEDIST_TIP		= "\232\176\131\230\149\180\229\155\190\230\160\135\230\182\136\233\154\144\232\183\157\231\166\187\227\128\130";
	GATHERER_TEXT_MINIIDIST_TIP		= "\232\176\131\230\149\180\229\155\190\230\160\135\230\152\190\231\164\186\231\154\132\230\156\128\229\176\143\232\183\157\231\166\187\227\128\130";
	GATHERER_TEXT_NUMBER_TIP		= "\232\176\131\230\149\180\232\191\183\228\189\160\229\156\176\229\155\190\228\184\138\230\179\168\233\135\138\230\152\190\231\164\186\231\154\132\230\149\176\231\155\174\227\128\130";

	--GATHERER_TEXT_MAXDIST_TIP		= "";
	GATHERER_HIDEMININOTES_TIP      = "\228\184\141\229\156\168\232\191\183\228\189\160\229\156\176\229\155\190\228\184\138\230\152\190\231\164\186\230\143\144\231\164\186";
	GATHERER_TOGGLEWORLDNOTES_TIP   = "\229\136\135\230\141\162\228\184\150\231\149\140\229\156\176\229\155\190\228\184\138\231\137\169\229\147\129\229\144\141\231\167\176\231\154\132\233\149\191\231\159\173";
	GATHERER_WMICONSIZEEB_TIP       = "\232\174\190\231\189\174\228\184\150\231\149\140\229\156\176\229\155\190\228\184\138\231\154\132\229\155\190\230\160\135\229\164\167\229\176\143";

	GATHERER_WMICONALPHAEB_TIP		= "\232\174\190\231\189\174\228\184\150\231\149\140\229\156\176\229\155\190\229\155\190\230\160\135\233\128\143\230\152\142\229\186\166";
	--GATHERER_TEXT_ALPHAUNDER_MINICON_TIP = "";

	GATHERER_TAB_GLOBALS_TEXT_TIP	= "\230\137\147\229\188\128\229\133\168\229\177\128\233\128\137\233\161\185";

	-- Filters Options
	GATHERER_TAB_FILTERS_TEXT 		= "\232\191\135\230\187\164\230\157\161\228\187\182";

	GATHERER_TEXT_FILTER_HERBS		= "\232\141\137\232\141\175\239\188\154";
	GATHERER_TEXT_FILTER_ORE		= "\231\159\191\231\137\169\239\188\154";
	GATHERER_TEXT_FILTER_TREASURE	= "\229\174\157\231\174\177\239\188\154";
	GATHERER_TEXT_LINKRECORD        = "\232\191\135\230\187\164\232\174\176\229\189\149"
	GATHERER_TEXT_WMFILTERS			= "\228\184\150\231\149\140\229\156\176\229\155\190\232\191\135\230\187\164\229\153\168";
	GATHERER_TEXT_DISABLEWMFIX		= "\229\144\175\231\148\168\230\152\190\231\164\186\47\233\154\144\232\151\143\230\140\137\233\146\174";

	GATHERER_HERBSKLEB_TIP			= "\232\174\190\231\189\174\230\152\190\231\164\186\233\135\135\233\155\134\232\141\137\232\141\175\233\156\128\232\166\129\231\154\132\230\156\128\228\189\142\230\138\128\232\131\189";
	GATHERER_ORESKLEB_TIP			= "\232\174\190\231\189\174\230\152\190\231\164\186\233\135\135\231\159\191\233\156\128\232\166\129\231\154\132\230\156\128\228\189\142\230\138\128\232\131\189";
	GATHERER_HERBDDM_TIP			= "\232\191\135\230\187\164\230\152\190\231\164\186\231\154\132\232\141\137\232\141\175";
	GATHERER_OREDDM_TIP				= "\232\191\135\230\187\164\230\152\190\231\164\186\231\154\132\231\159\191";
	GATHERER_TREASUREDDM_TIP		= "\232\191\135\230\187\164\230\152\190\231\164\186\231\154\132\229\174\157\231\174\177";
	--GATHERER_TEXT_LINKRECORD_TIP	= "";
	--GATHERER_TEXT_WMFILTERS_TIP		= "";
	--GATHERER_TEXT_DISABLEWMFIX_TIP	= "";

	GATHERER_TAB_FILTERS_TEXT_TIP	= "\230\137\147\229\188\128\232\191\135\230\187\164\233\128\137\233\161\185"

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "\229\156\176\229\140\186\233\135\141\229\140\185\233\133\141";

	--GATHERER_TEXT_APPLY_REMATCH		= "";
	--GATHERER_TEXT_SRCZONE_MISSING	= "";
	--GATHERER_TEXT_DESTZONE_MISSING	= "";
	--GATHERER_TEXT_FIXITEMS			= "";
	--GATHERER_TEXT_LASTMATCH			= "";
	--GATHERER_TEXT_LASTMATCH_NONE	= "";
	--GATHERER_TEXT_CONFIRM_REMATCH	= "";

	--GATHERER_ZM_FIXITEM_TIP			= "";
	--GATHERER_ZM_SRCDDM_TIP			= "";
	--GATHERER_ZM_DESTDDM_TIP			= "";

	-- Report Dialog
	GATHERER_TAB_REPORT_TIP			= "\230\140\135\229\174\154\233\161\185\231\155\174\231\154\132\229\156\176\229\140\186\229\136\134\229\184\131\230\138\165\229\145\138\227\128\130";

	GATHERER_REPORT_LOCATION		= "\228\189\141\231\189\174\239\188\154";
	GATHERER_REPORT_COL_TYPE		= "\231\167\141\231\177\187";
	GATHERER_REPORT_COL_NAME		= "\229\143\175\233\135\135\233\155\134\231\154\132";
	GATHERER_REPORT_COL_PTYPE		= "% \231\167\141\231\177\187";
	GATHERER_REPORT_COL_PDENSITY	= "% \229\175\134\229\186\166";

	GATHERER_REPORT_SUMMARY			= "\229\144\136\232\174\161\239\188\154&\232\138\130\231\130\185\233\135\135\233\155\134#\230\172\161";

	-- Search Dialog
	GATHERER_TAB_SEARCH_TIP			= "\230\159\165\230\137\190\230\140\135\229\174\154\233\161\185\231\155\174\231\154\132\229\156\176\229\140\186\229\136\134\229\184\131\227\128\130";

	GATHERER_SEARCH_LOCATION		= "\233\161\185\231\155\174\239\188\154";
	GATHERER_SEARCH_COL_CONTINENT	= "\229\164\167\233\153\134";
	GATHERER_SEARCH_COL_ZONE		= "\229\156\176\229\140\186";
	GATHERER_SEARCH_COL_PNODE		= "% \232\138\130\231\130\185";

	GATHERER_SEARCH_COL_PDENSITY	= "% \229\175\134\229\186\166";

	GATHERER_SEARCH_SUMMARY			= "\229\143\145\231\142\176\239\188\154\229\156\168&\229\156\176\229\140\186\229\143\145\231\142\176#\232\138\130\231\130\185";

	-- World Map
	GATHERER_FILTERDM_TEXT		= "\232\191\135\230\187\164\229\153\168"
	GATHERER_FILTERDM_TIP		= "\228\191\174\230\148\185\231\137\169\229\147\129\232\191\135\230\187\164\229\153\168\227\128\130"

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER		= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU		= "\230\152\190\231\164\186\47\233\154\144\232\151\143Gatherer\229\191\171\233\128\159\232\143\156\229\141\149";
	BINDING_NAME_GATHERER_BINDING_OPTIONS		= "\230\152\190\231\164\186\47\233\154\144\232\151\143Gatherer\233\128\137\233\161\185";
	BINDING_NAME_GATHERER_BINDING_REPORT		= "\230\152\190\231\164\186\47\233\154\144\232\151\143Gatherer\230\138\165\229\145\138";
	BINDING_NAME_GATHERER_BINDING_SEARCH		= "\230\152\190\231\164\186\47\233\154\144\232\151\143Gatherer\233\128\137\233\161\185";

	-- MyAddons Help Pages
	GathererHelp = {};
	GathererHelp[1] ="|cffff7f3f\231\155\174\229\189\149|r\n\n1- \229\191\171\230\141\183\232\143\156\229\141\149\n2- \232\191\183\228\189\160\229\156\176\229\155\190\n3- \228\184\150\231\149\140\229\156\176\229\155\190\n4- \233\128\137\233\161\185\229\175\185\232\175\157\230\161\134\n5- Zone Rematch Dialog\n6- \230\138\165\229\145\138\229\175\185\232\175\157\230\161\134\n7- \230\144\156\231\180\162\229\175\185\232\175\157\230\161\134\n8- \232\138\130\231\130\185\231\188\150\232\190\145\229\153\168\n";
	GathererHelp[2] ="|cffff7f3f\229\191\171\230\141\183\232\143\156\229\141\149:|r\n\n\230\143\144\228\190\155\228\186\134\229\191\171\233\128\159\232\176\131\230\149\180\229\159\186\230\156\172\230\152\190\231\164\186\232\191\135\230\187\164\239\188\136\232\191\183\228\189\160\229\156\176\229\155\190\227\128\129\228\184\150\231\149\140\229\156\176\229\155\190\227\128\129\232\141\137\232\141\175\227\128\129\231\159\191\231\137\169\228\187\165\229\143\138\232\180\162\229\174\157\239\188\137\228\187\165\229\143\138\231\187\159\232\174\161\229\175\185\232\175\157\230\161\134\239\188\136\232\175\183\230\159\165\231\156\139\230\138\165\229\145\138\229\143\138\230\144\156\231\180\162\229\138\159\232\131\189\231\154\132\231\155\184\229\133\179\229\184\174\229\138\169\233\161\181\233\157\162\239\188\137\231\154\132\229\138\159\232\131\189\227\128\130\n\n\231\130\185\229\135\187\232\143\156\229\141\149\230\160\135\233\162\152\229\188\185\229\135\186\233\133\141\231\189\174\229\175\185\232\175\157\230\161\134\227\128\130\n";
	GathererHelp[3] ="|cffff7f3f\232\191\183\228\189\160\229\156\176\229\155\190:|r\n\n\232\191\183\228\189\160\229\156\176\229\155\190\229\176\134\230\152\190\231\164\186\230\156\128\232\191\145\231\154\132\233\135\135\233\155\134\229\155\190\230\160\135\239\188\136\230\160\185\230\141\174\232\191\135\230\187\164\230\157\161\228\187\182\227\128\129\230\152\190\231\164\186\233\135\135\233\155\134\230\149\176\231\155\174\227\128\129\230\156\128\229\164\167\232\183\157\231\166\187\231\173\137\233\133\141\231\189\174\239\188\140\230\156\128\229\164\154\230\152\190\231\164\186\50\53\228\184\170\239\188\137\227\128\130\n\n\233\188\160\230\160\135\231\167\187\232\191\135\232\191\153\228\186\155\229\155\190\230\160\135\230\151\182\239\188\140\229\176\134\230\152\190\231\164\186\230\173\164\233\135\135\233\155\134\233\161\185\231\155\174\231\154\132\229\144\141\231\167\176\227\128\129\230\136\144\229\138\159\233\135\135\233\155\134\230\172\161\230\149\176\228\187\165\229\143\138\228\184\142\229\189\147\229\137\141\230\137\128\229\164\132\228\189\141\231\189\174\231\154\132\232\183\157\231\166\187\239\188\136\231\155\180\231\186\191\230\138\181\232\190\190\231\154\132\232\183\157\231\166\187\228\187\165\229\143\138\229\184\184\232\167\132\232\183\145\230\173\165\233\128\159\229\186\166\230\138\152\231\174\151\231\154\132\230\151\182\233\151\180\239\188\137\227\128\130\n";
	GathererHelp[4] ="|cffff7f3f\228\184\150\231\149\140\229\156\176\229\155\190:|r\n\n\228\184\150\231\149\140\229\156\176\229\155\190\229\143\175\228\187\165\230\152\190\231\164\186\230\137\128\233\128\137\229\156\176\229\140\186\231\154\132\230\137\128\230\156\137\233\135\135\233\155\134\233\161\185\231\155\174\239\188\136\230\160\185\230\141\174\233\128\137\230\139\169\231\154\132\232\191\135\230\187\164\230\157\161\228\187\182\231\173\137\239\188\140\230\156\128\229\164\154\230\152\190\231\164\186\52\48\48\228\184\170\239\188\137\227\128\130\n\n\229\155\160\228\184\186\230\152\190\231\164\186\229\164\167\233\135\143\231\154\132\233\135\135\233\155\134\233\161\185\231\155\174\228\188\154\229\156\168\230\137\147\229\188\128\229\156\176\229\155\190\230\151\182\228\186\167\231\148\159\229\187\182\230\151\182\239\188\140\230\137\128\228\187\165\233\187\152\232\174\164\230\131\133\229\134\181\228\184\139\232\191\153\228\186\155\233\161\185\231\155\174\230\152\175\233\154\144\232\151\143\231\154\132\227\128\130\228\189\160\229\143\175\228\187\165\231\130\185\229\135\187\228\184\150\231\149\140\229\156\176\229\155\190\229\183\166\228\184\139\232\167\146\231\154\132\226\128\156Show Item\226\128\157\230\140\137\233\146\174\230\157\165\230\152\190\231\164\186\228\187\150\228\187\172\239\188\136\232\191\135\230\187\164\233\128\137\233\161\185\228\184\173\230\156\137\228\184\128\233\161\185\229\143\175\228\187\165\230\137\147\229\188\128\232\191\153\228\184\170\233\153\144\229\136\182\239\188\140\228\189\134\228\189\160\232\166\129\229\175\185\232\135\170\229\183\177\231\154\132\232\161\140\229\138\168\232\180\159\232\180\163\239\188\137\227\128\130\n\nNB: \232\191\153\228\184\170\230\150\185\230\179\149\230\178\161\230\179\149\233\152\187\230\173\162\229\187\182\232\191\159\239\188\140\229\174\131\229\143\170\230\152\175\229\143\175\228\187\165\233\129\191\229\133\141\228\189\160\230\137\147\229\188\128\229\156\176\229\155\190\231\154\132\230\151\182\229\128\153\228\186\167\231\148\159\229\187\182\230\151\182\239\188\140\229\189\147\228\189\160\230\140\137\228\184\139\230\152\190\231\164\186\231\154\132\230\140\137\233\146\174\231\154\132\230\151\182\229\128\153\239\188\140\229\187\182\230\151\182\232\191\152\230\152\175\228\184\128\230\160\183\229\173\152\229\156\168\231\154\132\227\128\130\n\n\229\189\147\228\189\160\97\108\116\45\233\188\160\230\160\135\229\143\179\233\148\174\231\130\185\229\135\187\228\184\128\228\184\170\228\184\150\231\149\140\229\156\176\229\155\190\228\184\138\231\154\132\233\161\185\231\155\174\230\151\182\239\188\140\228\185\159\228\188\154\232\176\131\229\135\186\232\138\130\231\130\185\231\188\150\232\190\145\229\153\168\227\128\130\228\189\160\229\143\175\228\187\165\231\148\168\229\174\131\230\157\165\229\175\185\230\149\176\230\141\174\229\186\147\229\129\154\228\184\128\228\186\155\229\159\186\230\156\172\231\154\132\231\188\150\232\190\145\227\128\130\n";
	GathererHelp[5] ="|cffff7f3f\233\128\137\233\161\185\229\175\185\232\175\157\230\161\134:|r\n\n\233\128\137\233\161\185\229\175\185\232\175\157\230\161\134\229\136\134\228\184\186\228\184\137\228\184\170\230\160\135\231\173\190\239\188\154\232\191\135\230\187\164\227\128\129\229\133\168\229\177\128\233\128\137\233\161\185\227\128\129\229\191\171\230\141\183\232\143\156\229\141\149\n\n|cffff7f3f\232\191\135\230\187\164\230\160\135\231\173\190|r \229\140\133\229\144\171\232\191\135\230\187\164\231\155\184\229\133\179\233\128\137\233\161\185\239\188\136\229\140\133\229\144\171\228\184\150\231\149\140\229\156\176\229\155\190\231\154\132\230\152\190\231\164\186\47\233\154\144\232\151\143\230\140\137\233\146\174\231\154\132\230\142\167\229\136\182\239\188\137\227\128\130\n\n|cffff7f3f\229\133\168\229\177\128\233\128\137\233\161\185\232\143\156\229\141\149|r \229\140\133\229\144\171Gatherer\230\160\184\229\191\131\229\138\159\232\131\189\231\155\184\229\133\179\231\154\132\233\128\137\233\161\185\239\188\136\231\187\157\229\164\167\233\131\168\229\136\134\233\128\137\233\161\185\229\144\140\230\160\183\229\143\175\228\187\165\233\128\154\232\191\135\229\145\189\228\187\164\232\161\140\229\174\158\231\142\176\239\188\137\227\128\130\n\n|cffff7f3f\229\191\171\230\141\183\232\143\156\229\141\149\230\160\135\231\173\190|r \230\142\167\229\136\182\232\191\183\228\189\160\229\156\176\229\155\190\229\155\190\230\160\135\229\188\185\229\135\186\231\154\132\229\191\171\230\141\183\232\143\156\229\141\149\231\154\132\232\161\140\228\184\186\239\188\136\229\140\133\230\139\172\229\155\190\230\160\135\231\154\132\228\189\141\231\189\174\229\143\138\230\152\190\231\164\186\228\184\142\229\144\166\239\188\137\227\128\130\n";
	GathererHelp[6] ="|cffff7f3f\229\156\176\229\140\186\233\135\141\229\140\185\233\133\141\229\175\185\232\175\157\230\161\134\239\188\154|r\n\n\230\173\164\229\138\159\232\131\189\228\184\187\232\166\129\231\148\168\228\186\142\228\184\128\228\186\155\230\156\172\229\156\176\229\140\150\229\156\168\229\174\152\230\150\185\230\142\168\229\135\186\229\174\162\230\136\183\231\171\175\230\151\182\230\178\161\230\156\137\229\174\140\229\133\168\229\174\140\230\136\144\231\154\132\229\143\145\229\184\131\231\137\136\230\156\172\227\128\130\n\n\229\189\147\229\156\176\229\140\186\229\144\141\229\173\151\229\143\152\229\140\150\230\151\182\239\188\140\231\148\177\228\186\142\229\156\176\229\140\186\231\155\174\229\189\149\230\152\175\231\148\177\229\144\141\231\167\176\231\154\132\229\173\151\230\175\141\233\161\186\229\186\143\229\134\179\229\174\154\231\154\132\239\188\140\230\137\128\228\187\165\229\144\140\230\160\183\228\188\154\228\186\167\231\148\159\229\143\152\229\140\150\227\128\130\n\232\191\153\228\184\128\230\156\186\229\136\182\230\143\144\228\190\155\228\186\134\228\184\128\228\184\170\232\189\172\230\141\162\232\161\168\239\188\140\230\160\185\230\141\174\87\79\87\231\154\132\231\137\136\230\156\172\229\143\138\229\174\162\230\136\183\231\171\175\232\175\173\232\168\128\239\188\136\228\191\174\230\173\163\233\161\185\231\155\174\229\139\190\233\128\137\230\161\134\229\133\129\232\174\184\229\144\140\230\151\182\228\191\174\230\173\163\228\191\174\230\148\185\232\191\135\231\154\132\233\161\185\231\155\174\229\144\141\231\167\176\239\188\137\239\188\140\233\135\135\231\148\168\233\128\137\230\139\169\228\184\128\228\184\170\230\186\144\229\140\186\229\159\159\233\161\186\229\186\143\239\188\136\230\175\148\229\166\130\228\184\138\228\184\128\228\184\170\239\188\137\228\184\142\228\184\128\228\184\170\231\155\174\231\154\132\229\140\186\229\159\159\233\161\186\229\186\143\239\188\136\229\189\147\229\137\141\233\161\186\229\186\143\239\188\137\230\157\165\228\191\174\230\173\163\232\191\153\228\184\170\231\155\174\229\189\149\227\128\130\n\nThis also allows global manipulation of the database, such as changing it's format, this is done with any selected source and destination zone order, for non-localized clients an identify matrix should be used (ie. same source and destination order).\n\n|cffff7f3fDatabase is modified, so keep a backup of your data, just in case.|r\n";
	GathererHelp[7] ="|cffff7f3f\230\138\165\229\145\138\229\175\185\232\175\157\230\161\134:|r\n\n\229\156\168\232\191\153\228\184\170\229\175\185\232\175\157\230\161\134\228\184\173\239\188\140\228\189\160\229\143\175\228\187\165\230\159\165\231\156\139\228\189\160\229\156\168\229\144\132\228\184\170\229\156\176\229\140\186\239\188\136\230\175\143\230\172\161\229\143\170\232\131\189\230\159\165\231\156\139\228\184\128\228\184\170\239\188\137\231\154\132\233\135\135\233\155\134\231\187\147\230\158\156\227\128\130\n\n\228\189\160\229\143\175\228\187\165\231\130\185\229\135\187\228\184\141\229\144\140\231\154\132\230\160\135\229\164\180\230\160\185\230\141\174\229\136\151\229\134\133\229\174\185\232\191\155\232\161\140\230\142\146\229\186\143\239\188\136\228\185\159\229\143\175\228\187\165\233\128\134\229\144\145\239\188\137\227\128\130\n\n\229\190\136\229\164\154\230\160\135\229\164\180\229\183\178\231\187\143\229\143\175\228\187\165\232\175\180\230\152\142\233\151\174\233\162\152\228\186\134\239\188\140\228\184\139\233\157\162\231\154\132\233\161\185\231\155\174\231\168\141\229\129\154\232\167\163\233\135\138\239\188\154\n|cffff7f3f\231\167\141\231\177\187 %:|r\n  \229\156\168\229\144\140\228\184\128\229\156\176\229\140\186\229\144\140\231\177\187\233\135\135\233\155\134\232\181\132\230\186\144\228\184\173\229\141\160\231\154\132\230\149\176\233\135\143\231\154\132\231\153\190\229\136\134\230\175\148\227\128\130\n\n|cffff7f3f\229\175\134\229\186\166 %:|r\n  \229\144\140\228\184\128\233\135\135\233\155\134\233\161\185\231\155\174\229\141\160\228\184\150\231\149\140\232\140\131\229\155\180\229\134\133\230\173\164\233\161\185\231\155\174\231\154\132\231\153\190\229\136\134\230\175\148\227\128\130\n";
	GathererHelp[8] ="|cffff7f3f\230\144\156\231\180\162\229\175\185\232\175\157\230\161\134:|r\n\n\229\156\168\230\173\164\229\175\185\232\175\157\230\161\134\228\184\173\239\188\140\228\189\160\229\143\175\228\187\165\230\140\135\229\174\154\228\184\128\228\184\170\233\135\135\233\155\134\229\175\185\232\177\161\229\185\182\230\152\190\231\164\186\229\156\168\228\184\141\229\144\140\229\156\176\229\140\186\228\189\160\229\175\185\230\173\164\233\161\185\231\155\174\231\154\132\233\135\135\233\155\134\232\174\176\229\189\149\227\128\130\n\n\228\189\160\229\143\175\228\187\165\231\130\185\229\135\187\230\160\135\229\164\180\230\157\165\230\160\185\230\141\174\229\136\151\229\134\133\229\174\185\229\175\185\229\136\151\232\191\155\232\161\140\230\142\146\229\186\143\239\188\136\230\136\150\233\128\134\229\186\143\239\188\137\227\128\130\n\n\229\164\167\233\131\168\229\136\134\230\160\135\229\164\180\229\144\141\231\167\176\229\183\178\231\187\143\232\182\179\229\164\159\232\175\180\230\152\142\229\133\182\229\134\133\229\174\185\239\188\140\233\153\164\228\186\134\228\184\139\229\136\151\232\191\153\228\186\155\239\188\154\n|cffff7f3f\232\138\130\231\130\185 %:|r\n  \230\140\135\229\174\154\232\181\132\230\186\144\229\141\160\233\128\137\229\174\154\229\156\176\229\140\186\230\137\128\230\156\137\232\181\132\230\186\144\231\154\132\231\153\190\229\136\134\230\175\148\227\128\130\n\n|cffff7f3f\229\175\134\229\186\166 %:|r\n  \230\140\135\229\174\154\232\181\132\230\186\144\229\141\160\228\184\150\231\149\140\230\128\187\232\181\132\230\186\144\233\135\143\231\154\132\231\153\190\229\136\134\230\175\148\227\128\130\n";
	GathererHelp[9] ="|cffff7f3f\232\138\130\231\130\185\231\188\150\232\190\145\229\153\168:|r\n\n\229\156\168\230\173\164\229\175\185\232\175\157\230\161\134\228\184\173\239\188\140\228\189\160\229\143\175\228\187\165\239\188\136\229\143\179\233\148\174\231\130\185\229\135\187\228\184\150\231\149\140\229\156\176\229\155\190\228\184\138\231\154\132\232\138\130\231\130\185\239\188\137\230\148\185\229\143\152\232\138\130\231\130\185\231\154\132\229\144\141\231\167\176\239\188\140\229\174\131\231\154\132\229\155\190\230\160\135\227\128\129\230\160\135\232\174\176\229\133\182\228\184\186\233\148\153\232\175\175\228\186\167\231\148\159\231\154\132\230\136\150\230\152\175\229\136\160\233\153\164\229\174\131\227\128\130\n\n|cffff7f3f\230\160\135\232\174\176\233\148\153\232\175\175|r \228\187\133\228\189\156\231\148\168\228\186\142\233\128\137\229\174\154\231\154\132\232\138\130\231\130\185\227\128\130\n\n|cffff7f3f\229\136\160\233\153\164|r \228\189\191\231\148\168\232\140\131\229\155\180\239\188\136\233\187\152\232\174\164\228\184\186\232\138\130\231\130\185\239\188\140\228\187\165\233\129\191\229\133\141\232\175\175\230\147\141\228\189\156\239\188\137\229\143\175\228\187\165\230\137\169\229\177\149\228\184\186\229\156\176\229\140\186\227\128\129\229\164\167\233\153\134\228\187\165\229\143\138\228\184\150\231\149\140\232\140\131\229\155\180\227\128\130\n\n|cffff7f3f\230\142\165\229\143\151|r \228\189\191\231\148\168\230\150\176\231\154\132\232\138\130\231\130\185\229\144\141\231\167\176\239\188\136\229\134\153\229\165\189\230\150\176\229\144\141\229\173\151\229\144\142\239\188\140\232\174\176\229\190\151\230\140\137\231\161\174\232\174\164\239\188\137\229\146\140\47\230\136\150\229\155\190\230\160\135\227\128\130\n\228\184\142\229\136\160\233\153\164\230\140\137\233\146\174\228\184\128\230\160\183\239\188\140\232\191\153\228\184\170\230\147\141\228\189\156\228\185\159\230\156\137\232\138\130\231\130\185\227\128\129\229\156\176\229\140\186\227\128\129\229\164\167\233\153\134\228\185\131\232\135\179\228\184\150\231\149\140\231\154\132\232\140\131\229\155\180\233\128\137\233\161\185\227\128\130\n";

	GathererDetails["description"] = "\230\152\190\231\164\186\233\135\135\233\155\134\232\191\135\229\190\151\232\141\137\232\141\175\227\128\129\231\159\191\231\137\169\227\128\129\229\174\157\231\174\177\231\154\132\228\189\141\231\189\174";
end

