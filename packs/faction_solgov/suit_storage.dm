// Suit cyclers and storage
/obj/machinery/suit_cycler/exploration
	name = "Exploration suit cycler"
	model_text = "Exploration"
//	req_access = list(access_explorer)
	available_modifications = list(/decl/item_modifier/space_suit/explorer)
	species = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI)

/obj/machinery/suit_storage_unit/explorer
	name = "Exploration Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/exploration
	helmet = /obj/item/clothing/head/helmet/space/void/exploration
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
//	req_access = list(access_explorer)
	islocked = 1

/obj/machinery/suit_storage_unit/pilot
	name = "Pilot Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/pilot
	helmet = /obj/item/clothing/head/helmet/space/void/pilot
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
//	req_access = list(access_pilot)
	islocked = 1

/obj/machinery/suit_storage_unit/command
	name = "Command Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/command
	helmet = /obj/item/clothing/head/helmet/space/void/command
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	req_access = list(access_bridge, access_keycard_auth)
	islocked = 1
