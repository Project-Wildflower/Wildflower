/datum/species/resomi
	name = SPECIES_RESOMI
	name_plural = "Resomii"
	description = "A race of feathered raptors who developed on a cold world, almost \
	outside of the Goldilocks zone. Extremely fragile, they developed hunting skills \
	that emphasized taking out their prey without themselves getting hit. They are an \
	advanced culture on good terms with Skrellian and Human interests."

	min_age = 15
	max_age = 45
	health_hud_intensity = 3

	blood_color = "#D514F7"
	flesh_color = "#5F7BB0"
	base_color = "#001144"
	tail = "resomitail"
	tail_hair = "feathers"
	reagent_tag = IS_RESOMI

	icobase = 'icons/mob/human_races/species/resomi/body.dmi'
	//deform = 'icons/mob/human_races/species/resomi/body.dmi' //uh oh...
	damage_overlays = 'icons/mob/human_races/species/resomi/damage_overlay.dmi'
	damage_mask = 'icons/mob/human_races/species/resomi/damage_mask.dmi'
	deform = 'icons/mob/human_races/species/resomi/blood_mask.dmi'

	slowdown = -1
	total_health = 50
	brute_mod = 1.35
	burn_mod =  1.35
	metabolism_mod = 2.0
	mob_size = MOB_SMALL
	light_sensitive = 6
	gluttonous = GLUT_TINY
	blood_volume = 280
	hunger_factor = 0.2

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	bump_flag = MONKEY
	swap_flags = MONKEY|SLIME|SIMPLE_ANIMAL
	push_flags = MONKEY|SLIME|SIMPLE_ANIMAL|ALIEN

	cold_level_1 = 180
	cold_level_2 = 130
	cold_level_3 = 70
	heat_level_1 = 320
	heat_level_2 = 370
	heat_level_3 = 600
	heat_discomfort_level = 292
	heat_discomfort_strings = list(
		"Your feathers prickle in the heat.",
		"You feel uncomfortably warm.",
		)
	cold_discomfort_level = 180

	override_limb_types = list(
		BP_L_HAND = /obj/item/organ/external/hand/resomi,
		BP_R_HAND = /obj/item/organ/external/hand/right/resomi,
		BP_L_FOOT = /obj/item/organ/external/foot/resomi,
		BP_R_FOOT =  /obj/item/organ/external/foot/right/resomi
		)

	override_organ_types = list(
		BP_LIVER =    /obj/item/organ/internal/liver/resomi,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys/resomi,
		)

	unarmed_types = list(
		/datum/unarmed_attack/bite/sharp,
		/datum/unarmed_attack/claws,
		/datum/unarmed_attack/stomp/weak
		)

	inherent_verbs = list(/mob/living/carbon/human/proc/sonar_ping)
