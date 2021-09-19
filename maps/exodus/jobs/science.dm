/datum/job/rd
	title = "Chief Science Officer"
	head_position = 1
	department_flag = COM|SCI

	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#ad6bad"
	req_admin_notify = 1
	economic_power = 15
	access = list(
		access_rd,
		access_bridge,
		access_tox,
		access_morgue,
		access_tox_storage,
		access_teleporter,
		access_sec_doors,
		access_heads,
		access_research,
		access_robotics,
		access_xenobiology,
		access_ai_upload,
		access_tech_storage,
		access_RC_announce,
		access_keycard_auth,
		access_tcomsat,
		access_gateway,
		access_xenoarch,
		access_network,
		access_network_admin
	)
	minimal_access = list(access_rd,
		access_bridge,
		access_tox,
		access_morgue,
		access_tox_storage,
		access_teleporter,
		access_sec_doors,
		access_heads,
		access_research,
		access_robotics,
		access_xenobiology,
		access_ai_upload,
		access_tech_storage,
		access_RC_announce,
		access_keycard_auth,
		access_tcomsat,
		access_gateway,
		access_xenoarch,
		access_network,
		access_network_admin
	)
	minimal_player_age = 14
	ideal_character_age = 50

	outfit_type = /decl/hierarchy/outfit/job/science/rd
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_FINANCE  = SKILL_ADEPT,
		SKILL_BOTANY   = SKILL_BASIC,
		SKILL_ANATOMY  = SKILL_BASIC,
		SKILL_DEVICES  = SKILL_BASIC,
		SKILL_SCIENCE  = SKILL_ADEPT)
	max_skill = list(
		SKILL_ANATOMY  = SKILL_MAX,
		SKILL_DEVICES  = SKILL_MAX,
		SKILL_SCIENCE  = SKILL_MAX
	)
	skill_points = 30

/datum/job/scientist
	title = "Scientist"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 4
	supervisors = "the Chief Science Officer"
	selection_color = "#633d63"
	economic_power = 7
	access = list(
		access_robotics,
		access_tox,
		access_tox_storage,
		access_research,
		access_xenobiology,
		access_xenoarch,
		access_hydroponics
	)
	minimal_access = list(
		access_tox,
		access_tox_storage,
		access_research,
		access_xenoarch,
		access_xenobiology,
		access_hydroponics
	)
	alt_titles = list(//Bay has outfits for the first two. Might as well put them there.
		"Xenobiologist" = /decl/hierarchy/outfit/job/science/xenobiologist,
		"Xenobotanist" =  /decl/hierarchy/outfit/job/science/xenobiologist,
		"Xenoarcheologist",
		"Anomalist",
		"Phoron Researcher"
	)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/science/scientist
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_DEVICES  = SKILL_BASIC,
		SKILL_SCIENCE  = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_ANATOMY  = SKILL_MAX,
	    SKILL_DEVICES  = SKILL_MAX,
	    SKILL_SCIENCE  = SKILL_MAX
	)
	skill_points = 20

/decl/hierarchy/outfit/job/science/xenobiologist
	id_types = list(/obj/item/card/id/science)

/datum/job/roboticist
	title = "Roboticist"
	department_flag = SCI
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Science Officer"
	selection_color = "#633d63"
	economic_power = 5
	access = list(
		access_robotics,
		access_tox,
		access_tox_storage,
		access_tech_storage,
		access_morgue,
		access_research
	)
	minimal_access = list(
		access_robotics,
		access_tech_storage,
		access_morgue,
		access_research
	)
	alt_titles = list(
		"Biomechanical Engineer",
		"Mechatronic Engineer")
	minimal_player_age = 3
	outfit_type = /decl/hierarchy/outfit/job/science/roboticist
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_COMPUTER = SKILL_ADEPT,
		SKILL_DEVICES  = SKILL_ADEPT,
		SKILL_EVA      = SKILL_ADEPT,
		SKILL_ANATOMY  = SKILL_ADEPT,
		SKILL_MECH     = HAS_PERK
	)
	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_MAX,
	    SKILL_ELECTRICAL   = SKILL_MAX,
	    SKILL_ATMOS        = SKILL_EXPERT,
	    SKILL_ENGINES      = SKILL_EXPERT,
	    SKILL_DEVICES      = SKILL_MAX,
	    SKILL_MEDICAL      = SKILL_EXPERT,
	    SKILL_ANATOMY      = SKILL_EXPERT
	)
	skill_points = 20

/obj/item/card/id/science
	name = "identification card"
	desc = "A card issued to science staff."
	detail_color = COLOR_PALE_PURPLE_GRAY

/obj/item/card/id/science/head
	name = "identification card"
	desc = "A card which represents knowledge and reasoning."
	extra_details = list("goldstripe")
