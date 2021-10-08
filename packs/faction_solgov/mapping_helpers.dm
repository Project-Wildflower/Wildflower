/obj/random/solgov
	name = "random solgov equipment"
	desc = "This is a random piece of solgov equipment or clothing."
	icon = 'packs/faction_solgov/icons/obj/obj_head_solgov.dmi'
	icon_state = "solsoft"

/obj/random/solgov/spawn_choices()
	return list(/obj/item/clothing/head/solgov/utility/fleet = 4,
				/obj/item/clothing/head/soft/solgov/expedition = 2,
				/obj/item/clothing/head/soft/solgov/fleet = 4,
				/obj/item/clothing/head/helmet/solgov = 1,
				/obj/item/clothing/suit/storage/vest/solgov = 2,
				/obj/item/clothing/under/solgov/utility = 5,
				/obj/item/clothing/under/solgov/utility/fleet = 3,
				/obj/item/clothing/under/solgov/pt/expeditionary = 4,
				/obj/item/clothing/under/solgov/pt/fleet = 4
				)

/obj/random/maintenance/solgov
	name = "random maintenance item"
	desc = "This is a random maintenance item."
	icon = 'icons/obj/items.dmi'
	icon_state = "gift1"

/obj/random/maintenance/solgov/spawn_choices()
	return list(/obj/random/junk = 4,
				/obj/random/trash = 4,
				/obj/random/maintenance/solgov/clean = 5)

/obj/random/maintenance/solgov/clean
	name = "random maintenance item"
	desc = "This is a random maintenance item."
	icon = 'icons/obj/items.dmi'
	icon_state = "gift2"

/obj/random/maintenance/solgov/clean/spawn_choices()
	return list(/obj/random/solgov = 3,
				/obj/random/maintenance/clean = 800)
