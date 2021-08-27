/obj/item/modular_computer/tablet/preset/custom_loadout/cheap/install_default_hardware()
	..()
	processor_unit = new/obj/item/stock_parts/computer/processor_unit/small(src)
	tesla_link = new/obj/item/stock_parts/computer/tesla_link(src)
	hard_drive = new/obj/item/stock_parts/computer/hard_drive/micro(src)
	network_card = new/obj/item/stock_parts/computer/network_card(src)
	battery_module = new/obj/item/stock_parts/computer/battery_module/nano(src)
	battery_module.charge_to_full()

/obj/item/modular_computer/tablet/preset/custom_loadout/advanced/install_default_hardware()
	..()
	processor_unit = new/obj/item/stock_parts/computer/processor_unit/small(src)
	tesla_link = new/obj/item/stock_parts/computer/tesla_link(src)
	hard_drive = new/obj/item/stock_parts/computer/hard_drive/small(src)
	network_card = new/obj/item/stock_parts/computer/network_card/advanced(src)
	nano_printer = new/obj/item/stock_parts/computer/nano_printer(src)
	card_slot = new/obj/item/stock_parts/computer/card_slot(src)
	battery_module = new/obj/item/stock_parts/computer/battery_module(src)
	battery_module.charge_to_full()

/obj/item/modular_computer/tablet/preset/custom_loadout/standard/install_default_hardware()
	..()
	processor_unit = new/obj/item/stock_parts/computer/processor_unit/small(src)
	tesla_link = new/obj/item/stock_parts/computer/tesla_link(src)
	hard_drive = new/obj/item/stock_parts/computer/hard_drive/small(src)
	network_card = new/obj/item/stock_parts/computer/network_card(src)
	battery_module = new/obj/item/stock_parts/computer/battery_module/micro(src)
	battery_module.charge_to_full()

/obj/item/modular_computer/tablet/preset/custom_loadout/install_default_programs()
	..()
	var/mob/living/carbon/human/H = get_holder_of_type(src, /mob)
	if(!istype(H)) return
	install_default_programs_by_job(H)
	var/datum/extension/interactive/ntos/os = get_extension(src, /datum/extension/interactive/ntos)
	if(os)
		os.create_file(new/datum/computer_file/program/wordprocessor())

//Map presets

/obj/item/modular_computer/tablet/lease/preset/command/install_default_hardware()
	..()
	processor_unit = new/obj/item/stock_parts/computer/processor_unit/small(src)
	tesla_link = new/obj/item/stock_parts/computer/tesla_link(src)
	hard_drive = new/obj/item/stock_parts/computer/hard_drive(src)
	network_card = new/obj/item/stock_parts/computer/network_card/advanced(src)
	nano_printer = new/obj/item/stock_parts/computer/nano_printer(src)
	card_slot = new/obj/item/stock_parts/computer/card_slot(src)
	battery_module = new/obj/item/stock_parts/computer/battery_module(src)
	battery_module.charge_to_full()
	scanner = new /obj/item/stock_parts/computer/scanner/paper(src)

/obj/item/modular_computer/tablet/lease/preset/command/install_default_programs()
	..()
	var/datum/extension/interactive/ntos/os = get_extension(src, /datum/extension/interactive/ntos)
	if(os)
		os.create_file(new/datum/computer_file/program/reports())
		os.create_file(new/datum/computer_file/program/camera_monitor())
		os.create_file(new/datum/computer_file/program/email_client())
		os.create_file(new/datum/computer_file/program/records())
		os.create_file(new/datum/computer_file/program/wordprocessor())

//Wildflower Start

/obj/item/modular_computer/tablet/lease/preset/medical
	desc = "A small, portable microcomputer. This one has a white and red stripe, and a serial number stamped into the case."
	icon_state = "tabletmed"
	icon_state_unpowered = "tabletmed"

/obj/item/modular_computer/tablet/lease/preset/medical/install_default_hardware()
	..()
	processor_unit = new/obj/item/stock_parts/computer/processor_unit/small(src)
	tesla_link = new/obj/item/stock_parts/computer/tesla_link(src)
	hard_drive = new/obj/item/stock_parts/computer/hard_drive(src)
	network_card = new/obj/item/stock_parts/computer/network_card(src)
	nano_printer = new/obj/item/stock_parts/computer/nano_printer(src)
	card_slot = new/obj/item/stock_parts/computer/card_slot/broadcaster(src)
	battery_module = new/obj/item/stock_parts/computer/battery_module(src)
	battery_module.charge_to_full()
	scanner = new /obj/item/stock_parts/computer/scanner/medical(src)

/obj/item/modular_computer/tablet/lease/preset/medical/install_default_programs()
	..()
	var/datum/extension/interactive/ntos/os = get_extension(src, /datum/extension/interactive/ntos)
	if(os)
		os.create_file(new/datum/computer_file/program/reports())
		os.create_file(new/datum/computer_file/program/suit_sensors())
		os.create_file(new/datum/computer_file/program/email_client())
		os.create_file(new/datum/computer_file/program/records())
		os.create_file(new/datum/computer_file/program/wordprocessor())

//Wildflower End
