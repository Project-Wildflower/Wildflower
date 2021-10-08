/datum/map/exodus
	name          = "Exodus"
	full_name     = "JEF Waystation Exodus"
	path          = "exodus"

	station_name  = "JEF Waystation Exodus"
	station_short = "\improper Exodus"
	dock_name     = "NAS Crescent"
	boss_name     = "JEF Oversight Board"
	boss_short    = "\improper JEF Board"
	company_name  = "Joint Exploration Foundation"
	company_short = "JEF"
	system_name   = "Nyx"

	station_levels = list(1,2)
	contact_levels = list(1,2)
	player_levels =  list(1,2)
	admin_levels =   list(3,4)
	empty_levels  = list(5)

	accessible_z_levels = list("1"=1,"2"=1,"5"=30)

	overmap_size = 35
	overmap_event_areas = 34
	use_overmap = TRUE
	num_exoplanets = 1

	away_site_budget = 5
	min_offmap_players = 12

	lobby_screens = list(
		'maps/exodus/lobby/exodus.png'
	)

	evac_controller_type = /datum/evacuation_controller/shuttle

//  For /datum/evacuation_controller/shuttle

	shuttle_docked_message = "The public ferry to %dock_name% has docked with the station. It will depart in approximately %ETD%"
	shuttle_leaving_dock   = "The public ferry has left the station. Estimate %ETA% until the ferry docks at %dock_name%."
	shuttle_called_message = "A public ferry to %dock_name% has been scheduled. It will arrive in approximately %ETA%"
	shuttle_recall_message = "The scheduled ferry has been cancelled."

/datum/map/exodus/get_map_info()
	return "Welcome to JEF Waystation Exodus, A recommissioned Nanotrasen derelict.<br>It's... Probably not going to kill you. Welcome aboard!"
