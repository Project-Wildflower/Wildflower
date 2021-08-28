/datum/map/exodus
	name          = "Exodus"
	full_name     = "JEF Exodus"
	path          = "exodus"

	station_name  = "JEF Exodus"
	station_short = "Exodus"
	dock_name     = "NAS Crescent"
	boss_name     = "JEF Oversight Board"
	boss_short    = "The Board"
	company_name  = "Joint Exploration Foundation"
	company_short = "JEF"
	system_name   = "Nyx"

	station_levels = list(1,2)
	contact_levels = list(1,2)
	player_levels =  list(1,2)
	admin_levels =   list(3,4)

	overmap_event_areas = 11
	use_overmap = TRUE
	num_exoplanets = 1

	lobby_screens = list(
		'maps/exodus/lobby/exodus.png'
	)

	evac_controller_type = /datum/evacuation_controller/shuttle

//  For /datum/evacuation_controller/shuttle

	shuttle_docked_message = "The public ferry to %dock_name% has docked with the station. It will depart in approximately %ETD%"
	shuttle_leaving_dock   = "The public ferry has left the station. Estimate %ETA% until the ferry docks at %dock_name%."
	shuttle_called_message = "A public ferry to %dock_name% has been scheduled. It will arrive in approximately %ETA%"
	shuttle_recall_message = "The scheduled ferry has been cancelled."

//  For /datum/evacuation_controller/starship

//	shuttle_docked_message = "Attention all hands: Jump preparation complete. The subspace drive is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
//	shuttle_leaving_dock   = "Attention all hands: Jump initiated, exiting subspace in %ETA%."
//	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
//	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

/datum/map/exodus/get_map_info()
	return "Welcome to JEF Installation Exodus, A recommissioned Nanotrasen derelict.<br>It's... Probably not going to kill you. Welcome aboard!"
