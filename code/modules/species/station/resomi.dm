/datum/species/resomi
	name = SPECIES_RESOMI
	name_plural = "Resomii"
	description = "A race of feathered raptors who developed on a cold world, almost \
	outside of the Goldilocks zone. Extremely fragile, they developed hunting skills \
	that emphasized taking out their prey without themselves getting hit. They are an \
	advanced culture on good terms with Skrellian and Human interests."
	hidden_from_codex = FALSE
	silent_steps = FALSE

	min_age = 15
	max_age = 45
	health_hud_intensity = 3

	blood_color = COLOR_BLOOD_RESOMI
	flesh_color = "#5F7BB0"
	base_color = "#001144"
	tail = "resomitail"
	tail_hair = "feathers"
	reagent_tag = IS_RESOMI
	speech_sounds = list('sound/voice/trill.ogg')
	speech_chance = 20

	icobase = 'icons/mob/human_races/species/resomi/body.dmi'
	deform = 'icons/mob/human_races/species/resomi/body.dmi'
	damage_overlays = 'icons/mob/human_races/species/resomi/damage_overlay.dmi'
	damage_mask = 'icons/mob/human_races/species/resomi/damage_mask.dmi'
	blood_mask = 'icons/mob/human_races/species/resomi/blood_mask.dmi'
	robotic_icons = 'icons/mob/human_races/cyberlimbs/resomi/resomi_main.dmi'

	slowdown = -1
	total_health = 50
	brute_mod = 1.35
	burn_mod =  1.35
	metabolism_mod = 2.0
	mob_size = MOB_SMALL
	strength = STR_HIGH //They are strong for their size (mobility code go brrrrr)
	light_sensitive = 6
	gluttonous = GLUT_TINY
	blood_volume = 280
	hunger_factor = 0.2
	holder_type = /obj/item/holder/human //Scoop

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_COLOR | HAS_EYE_COLOR | FORCED_XENOWEAR | HAS_BASE_SKIN_COLOURS
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
		"Your hands and feet feel hot as your body tries to regulate heat",
		)
	cold_discomfort_level = 180
	cold_discomfort_strings = list(
		"You feel a bit chilly.",
		"You fluff up your feathers against the cold.",
		"You move your arms closer to your body to shield yourself from the cold.",
		"You press your ears against your head to conserve heat",
		"You start to feel the cold on your skin",
		)

	/*inherent_verbs = list(
		/mob/living/carbon/human/proc/sonar_ping
	)*/

	override_limb_types = list(
		BP_L_HAND = /obj/item/organ/external/hand/resomi,
		BP_R_HAND = /obj/item/organ/external/hand/right/resomi,
		BP_L_FOOT = /obj/item/organ/external/foot/resomi,
		BP_R_FOOT =  /obj/item/organ/external/foot/right/resomi,
		BP_GROIN = /obj/item/organ/external/groin/resomi,
		)

	override_organ_types = list(
		BP_LIVER =    /obj/item/organ/internal/liver/resomi,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys/resomi,
		BP_EYES = /obj/item/organ/internal/eyes/resomi
		)

	unarmed_types = list(
		/datum/unarmed_attack/bite/sharp,
		/datum/unarmed_attack/claws,
		/datum/unarmed_attack/stomp/weak,
		)
	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_RESOMI
		)
	)

	descriptors = list(
		/datum/mob_descriptor/height = -3,
		/datum/mob_descriptor/build = -3,
	)

/datum/species/resomi/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_RESOMI
