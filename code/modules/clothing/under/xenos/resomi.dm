/obj/item/clothing/under/resomi
	name = "small grey smock"
	desc = "It looks fitted to nonhuman proportions."
	icon = 'icons/obj/clothing/species/resomi/obj_under_resomi.dmi'
	icon_state = "resomi_grey"
	worn_state = "resomi_grey"
	species_restricted = list(SPECIES_RESOMI)

/obj/item/clothing/under/resomi/white
	name = "small smock"
	icon_state = "resomi_white"
	worn_state = "resomi_white"

/obj/item/clothing/under/resomi/red
	name = "small Security smock"
	icon_state = "resomi_red"
	worn_state = "resomi_red"

/obj/item/clothing/under/resomi/yellow
	name = "small Engineering smock"
	icon_state = "resomi_yellow"
	worn_state = "resomi_yellow"

/obj/item/clothing/under/resomi/medical
	name = "small Medical uniform"
	icon_state = "resomi_medical"
	worn_state = "resomi_medical"

/obj/item/clothing/under/resomi/rainbow
	name = "small rainbow smock"
	icon_state = "resomi_rainbow"
	worn_state = "resomi_rainbow"

/obj/item/clothing/under/resomi/science
	name = "small science uniform"
	icon_state = "resomi_science"
	worn_state = "resomi_science"

/obj/item/clothing/under/resomi/dress
	name = "small dress"
	icon_state = "resomi_dress_cap"
	worn_state = "resomi_dress_cap"

/obj/item/clothing/under/resomi/uniform
	name = "small uniform"
	icon_state = "resomi_captain"
	worn_state = "resomi_captain"

/obj/item/clothing/under/resomi/formal
	name = "small formal uniform"
	icon_state = "resomi_captain_formal"
	worn_state = "resomi_captain_formal"

////CLOAKS////
/obj/item/clothing/suit/cloak/resomi
	name = "small grey cloak"
	icon = 'icons/mob/species/resomi/onmob_suit_cloak_resomi.dmi'
	icon_state = "cloak_bg"
	species_restricted = list(SPECIES_RESOMI)
	sprite_sheets = list(
		SPECIES_RESOMI = 'icons/mob/species/resomi/onmob_suit_cloak_resomi.dmi'
	)

/obj/item/clothing/suit/cloak/resomi/engineering
	name = "small engineering cloak"
	icon_state = "cloak_yg"
	//worn_state = "cloak_yg"

/obj/item/clothing/suit/cloak/resomi/lab
	name = "small lab cloak"
	icon_state = "cloak_wn"

/obj/item/clothing/suit/cloak/resomi/security
	name = "small security cloak"
	icon_state = "cloak_br"

////SHOES////
///CURRENTLY CANNOT WEAR SHOES///

obj/item/clothing/shoes/resomi
	name = "small shoes"
	desc = "looks like they were made for a child"
	icon_state = "brown"
	species_restricted = list(SPECIES_RESOMI)

////SOLGOV/////
////GENERIC////
/obj/item/clothing/under/resomi/solgov
	name = "You shouldnt see this"
	icon = 'icons/mob/species/resomi/onmob_under_resomi.dmi'
	icon_state = "resomi_grey"
	worn_state = "resomi_grey"

/obj/item/clothing/under/resomi/solgov/generic
	name = "resomi smock"
	icon = 'icons/obj/clothing/species/resomi/obj_under_resomi.dmi'
	icon_state = "resomi_grey"
	worn_state = "resomi_grey"

/obj/item/clothing/under/resomi/solgov/generic/crew
	name = "resomi crew jumpsuit"
	icon_state = "blackutility_crew_s"
	worn_state = "blackutility_crew"

/obj/item/clothing/under/resomi/solgov/generic/fleet
	name = "resomi fleet jumpsuit"
	icon_state = "expeditionpt_s"
	worn_state = "expeditionpt"

/obj/item/clothing/under/resomi/solgov/generic/passenger
	name = "resomi utility jumpsuit"
	icon_state = "blackutility_s"
	worn_state = "blackutility"

////CORPORATE////
/obj/item/clothing/under/resomi/solgov/corporate/nt_pilot
	name = "corporate jumpsuit"
	icon_state = "pilot_s"
	worn_state = "pilot"
	sprite_sheets = list(
		SPECIES_RESOMI = 'icons/mob/species/resomi/onmob_under_corporate_fitted_resomi.dmi'
	)

/obj/item/clothing/under/resomi/solgov/corporate/research/science
	name = "resomi scientist jumpsuit"
	icon_state = "resomi_science_s"
	worn_state = "resomi_science"

////ENGINEERING////
/obj/item/clothing/under/resomi/solgov/engineer
	name = "resomi engineer's smock"
	icon_state = "resomi_yellow_s"
	worn_state = "resomi_yellow"
	armor = list(
		ARMOR_RAD_MINOR
	)

/obj/item/clothing/under/resomi/solgov/engineer/chief
	name = "resomi chief engineer's suit"
	icon_state = "chief_fitted_s"
	worn_state = "chief_fitted"

/obj/item/clothing/under/resomi/solgov/engineer/roboticist
	name = "resomi roboticist's smock"

/obj/item/clothing/under/resomi/solgov/engineer/atmospheric_technician
	name = "resomi atmospheric technician's smock"

////MEDICAL////
/obj/item/clothing/under/resomi/solgov/medical_doctor
	name = "resomi medical smock"
	icon_state = "resomi_medical_s"
	worn_state = "resomi_medical"

/obj/item/clothing/under/resomi/solgov/medical_doctor/senior
	name = "resomi senior medical smock"

////SECURITY////
/obj/item/clothing/under/resomi/solgov/security
	name = "resomi security smock"
	icon_state = "security_fitted_s"
	worn_state = "security_fitted"

////MISC////
/obj/item/clothing/under/resomi/solgov/cargo
	name = "oversized pants"
	icon_state = "lightbrown_s"
	worn_state = "lightbrown"