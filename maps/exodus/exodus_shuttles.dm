#define ESCAPE_POD(NUMBER) \
/datum/shuttle/autodock/ferry/escape_pod/pod##NUMBER { \
	shuttle_area = /area/shuttle/escape_pod_##NUMBER; \
	name = "Escape Pod " + #NUMBER; \
	dock_target = "escape_pod_" + #NUMBER; \
	arming_controller = "escape_pod_"+ #NUMBER +"_berth"; \
	waypoint_station = "escape_pod_"+ #NUMBER +"_start"; \
	landmark_transition = "escape_pod_"+ #NUMBER +"_transit"; \
	waypoint_offsite = "escape_pod_"+ #NUMBER +"_out"; \
} \
/obj/effect/shuttle_landmark/escape_pod/start/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_start"; \
	docking_controller = "escape_pod_"+ #NUMBER +"_berth"; \
} \
/obj/effect/shuttle_landmark/escape_pod/transit/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_transit"; \
} \
/obj/effect/shuttle_landmark/escape_pod/out/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_out"; \
} \
/area/shuttle/escape_pod_##NUMBER { \
	name = "Escape Pod " + #NUMBER; \
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT; \
}

ESCAPE_POD(1)
ESCAPE_POD(2)
ESCAPE_POD(3)
ESCAPE_POD(4)

//Station departmental shuttles

// Sci/Explo
/obj/machinery/computer/shuttle_control/explore/research
	name = "research pod control console"
	shuttle_tag = "Research Pod"
/datum/shuttle/autodock/overmap/research
	name = "Research Pod"
	shuttle_area = /area/ship/exodus_pod_research
	logging_home_tag = "nav_exodus_research_pod_dock"
	dock_target = "research_shuttle"
	current_location = "nav_exodus_research_pod_dock"
/area/ship/exodus_pod_research
	name = "Research Pod"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
/obj/effect/overmap/visitable/ship/landable/pod/research
	name = "Exodus Research Pod"
	shuttle = "Research Pod"
/obj/effect/shuttle_landmark/research_pod_dock
	name = "Research Docking Port"
	landmark_tag = "nav_exodus_research_pod_dock"
	docking_controller = "research_dock_airlock"

// Mining
/obj/machinery/computer/shuttle_control/explore/mining
	name = "mining pod control console"
	shuttle_tag = "Mining Pod"
/datum/shuttle/autodock/overmap/mining
	name = "Mining Pod"
	shuttle_area = /area/ship/exodus_pod_mining
	logging_home_tag = "nav_exodus_mining_pod_dock"
	dock_target = "mining_shuttle"
	current_location = "nav_exodus_mining_pod_dock"
/area/ship/exodus_pod_mining
	name = "Mining Pod"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
/obj/effect/overmap/visitable/ship/landable/pod/mining
	name = "Exodus Mining Pod"
	shuttle = "Mining Pod"
/obj/effect/shuttle_landmark/mining_pod_dock
	name = "Mining Docking Port"
	landmark_tag = "nav_exodus_mining_pod_dock"
	docking_controller = "mining_dock_airlock"

// Engineering
/obj/machinery/computer/shuttle_control/explore/engineering
	name = "engineering pod control console"
	shuttle_tag = "Engineering Pod"
/datum/shuttle/autodock/overmap/engineering
	name = "Engineering Pod"
	shuttle_area = /area/ship/exodus_pod_engineering
	logging_home_tag = "nav_exodus_engineering_pod_dock"
	dock_target = "engineering_shuttle"
	current_location = "nav_exodus_engineering_pod_dock"
/area/ship/exodus_pod_engineering
	name = "Engineering Pod"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT
/obj/effect/overmap/visitable/ship/landable/pod/engineering
	name = "Exodus Engineering Pod"
	shuttle = "Engineering Pod"
/obj/effect/shuttle_landmark/engineering_pod_dock
	name = "Engineering Docking Port"
	landmark_tag = "nav_exodus_engineering_pod_dock"
	docking_controller = "engineering_dock_airlock"

//Ninja Shuttle.
/datum/shuttle/autodock/multi/antag/ninja
	destination_tags = list(
		"nav_ninja_deck1",
		"nav_ninja_deck2",
		"nav_ninja_deck3",
		"nav_ninja_deck4",
		"nav_ninja_deck5",
		"nav_ninja_hanger",
		"nav_away_6",
		"nav_derelict_5",
		"nav_cluster_6",
		"nav_ninja_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag"
		)

/obj/effect/shuttle_landmark/ninja/arivals
	name = "Contract target docking port"
	landmark_tag = "nav_ninja_arivals"


//Merchant

/datum/shuttle/autodock/ferry/merchant
	name = "Merchant"
	warmup_time = 10
	shuttle_area = /area/shuttle/merchant/home
	waypoint_station = "nav_merchant_start"
	waypoint_offsite = "nav_merchant_out"
	dock_target = "merchant_ship_dock"

/obj/effect/shuttle_landmark/merchant/start
	name = "Merchant Base"
	landmark_tag = "nav_merchant_start"
	docking_controller = "merchant_station_dock"

/obj/effect/shuttle_landmark/merchant/out
	name = "Exodus north dock"
	landmark_tag = "nav_merchant_out"
	docking_controller = "merchant_shuttle_station_dock"

//Centcom

/datum/shuttle/autodock/ferry/emergency/escape_shuttle
	name = "Escape Shuttle"
	warmup_time = 10
	location = 1
	crack_docking_codes = TRUE
	dock_target = "escape_shuttle"
	shuttle_area = /area/shuttle/escape_shuttle
	waypoint_offsite = "nav_escape_shuttle_start"
	waypoint_station = "nav_escape_shuttle_station"
	landmark_transition = "nav_escape_shuttle_transit"

/obj/effect/shuttle_landmark/escape_shuttle/start
	landmark_tag = "nav_escape_shuttle_start"
	docking_controller = "centcom_escape_dock"

/obj/effect/shuttle_landmark/escape_shuttle/transit
	landmark_tag = "nav_escape_shuttle_transit"

/obj/effect/shuttle_landmark/escape_shuttle/station
	landmark_tag = "nav_escape_shuttle_station"
	docking_controller = "escape_dock"

/datum/shuttle/autodock/ferry/supply/cargo
	name = "Supply Shuttle"
	warmup_time = 10
	location = 1
	crack_docking_codes = TRUE
	dock_target = "supply_shuttle"
	shuttle_area = /area/shuttle/supply_shuttle
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"

/obj/effect/shuttle_landmark/supply/start
	landmark_tag = "nav_cargo_start"
	docking_controller = "cargo_bay_centcom"

/obj/effect/shuttle_landmark/supply/station
	landmark_tag = "nav_cargo_station"
	docking_controller = "cargo_bay"

/datum/shuttle/autodock/ferry/centcom
	name = "Centcom"
	location = 1
	warmup_time = 10
	shuttle_area = /area/shuttle/transport1/centcom
	dock_target = "centcom_shuttle"
	waypoint_offsite = "nav_ferry_start"
	waypoint_station = "nav_ferry_out"

/obj/effect/shuttle_landmark/ferry/start
	name = "Centcom"
	landmark_tag = "nav_ferry_start"
	docking_controller = "centcom_shuttle_bay"

/obj/effect/shuttle_landmark/ferry/out
	name = "Docking Bay"
	landmark_tag = "nav_ferry_out"
	docking_controller = "centcom_shuttle_dock_airlock"

/obj/effect/shuttle_landmark/merc/arivals
	name = "Exodus north dock"
	landmark_tag = "nav_merc_arivals"
	docking_controller = "nuke_shuttle_dock_airlock"

//Admin

/datum/shuttle/autodock/ferry/administration
	name = "Administration"
	warmup_time = 10	//want some warmup time so people can cancel.
	shuttle_area = /area/shuttle/administration/centcom
	dock_target = "admin_shuttle"
	waypoint_station = "nav_admin_start"
	waypoint_offsite = "nav_admin_out"

/obj/effect/shuttle_landmark/admin/start
	name = "Centcom"
	landmark_tag = "nav_admin_start"
	docking_controller = "admin_shuttle"
	base_area = /area/centcom
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/admin/out
	name = "Exodus north dock"
	landmark_tag = "nav_admin_out"
	docking_controller = "admin_shuttle_dock_airlock"

//NT Rescue Shuttle

/datum/shuttle/autodock/multi/antag/rescue
	destination_tags = list(
		"nav_ert_hanger",
		"nav_away_4",
		"nav_derelict_4",
		"nav_cluster_4",
		"nav_ert_dock",
		"nav_ert_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		)

/obj/effect/shuttle_landmark/ert/arivals
	name =  "Exodus arivals south dock"
	landmark_tag = "nav_ert_arivals"

//Skipjack
/datum/shuttle/autodock/multi/antag/skipjack
	destination_tags = list(
		"nav_skipjack_arivals",
		"nav_away_7",
		"nav_derelict_7",
		"nav_cluster_7",
		"nav_skipjack_dock",
		"nav_skipjack_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		)

/obj/effect/shuttle_landmark/skipjack/arivals
	name = "Exodus arivals south dock"
	landmark_tag = "nav_skipjack_arivals"

//SCGMC Assault Pod

/datum/shuttle/autodock/ferry/specops/ert
	name = "Special Operations"
	warmup_time = 10
	shuttle_area = /area/shuttle/specops/centcom
	dock_target = "specops_shuttle_fore"
	waypoint_station = "nav_specops_start"
	waypoint_offsite = "nav_specops_out"

/obj/effect/shuttle_landmark/specops/start
	name = "Centcom"
	landmark_tag = "nav_specops_start"
	docking_controller = "specops_shuttle_port"

/obj/effect/shuttle_landmark/specops/out
	name = "Docking Bay"
	landmark_tag = "nav_specops_out"
	docking_controller = "specops_dock_airlock"

//generic docking ports (Work this shit out if anyone wants to slap their nipples at it)
	//Large

	//Small


//Makes the deck management program use other access types
/datum/nano_module/deck_management
	default_access = list(access_cargo, access_heads)
