var/const/NETWORK_COMMAND = "Command"
var/const/NETWORK_ENGINE  = "Engine"
var/const/NETWORK_ENGINEERING_OUTPOST = "Engineering Outpost"
var/const/NETWORK_PUBLIC_EAST = "Starboard Quarter"
var/const/NETWORK_PUBLIC_WEST = "Port Quarter"

/datum/map/exodus
	// Networks that will show up as options in the camera monitor program
	station_networks = list(
		NETWORK_ROBOTS,
		NETWORK_COMMAND,
		NETWORK_ENGINE,
		NETWORK_ENGINEERING,
		NETWORK_MEDICAL,
		NETWORK_RESEARCH,
		NETWORK_SECURITY,
		NETWORK_PUBLIC_EAST,
		NETWORK_PUBLIC_WEST,
		NETWORK_ALARM_ATMOS,
		NETWORK_ALARM_CAMERA,
		NETWORK_ALARM_FIRE,
		NETWORK_ALARM_MOTION,
		NETWORK_ALARM_POWER,
		NETWORK_THUNDER,
	)

/datum/map/exodus/get_network_access(var/network)
	switch(network)
		if(NETWORK_COMMAND)
			return access_heads
		if(NETWORK_ENGINE, NETWORK_ENGINEERING_OUTPOST)
			return access_engine
	return ..()
//
// Cameras
//

// Networks
/obj/machinery/camera/network/command
	network = list(NETWORK_COMMAND)

/obj/machinery/camera/network/crescent
	network = list(NETWORK_CRESCENT)

/obj/machinery/camera/network/engine
	network = list(NETWORK_ENGINE)

/obj/machinery/camera/network/engineering_outpost
	network = list(NETWORK_ENGINEERING_OUTPOST)

// Motion
/obj/machinery/camera/motion/engineering_outpost
	network = list(NETWORK_ENGINEERING_OUTPOST)

// All Upgrades
/obj/machinery/camera/all/command
	network = list(NETWORK_COMMAND)

// Compile stubs.
/obj/machinery/camera/motion/command
	network = list(NETWORK_COMMAND)

/obj/machinery/camera/network/maintenance
	network = list(NETWORK_ENGINEERING)

/obj/machinery/camera/xray/security
	network = list(NETWORK_SECURITY)

/obj/machinery/camera/network/exodus
	network = list(NETWORK_SECURITY)

/obj/machinery/camera/network/civilian_east
	network = list(NETWORK_PUBLIC_EAST)

/obj/machinery/camera/network/civilian_west
	network = list(NETWORK_PUBLIC_WEST)

/obj/machinery/camera/network/prison
	network = list(NETWORK_SECURITY)

/obj/machinery/camera/xray/medbay
	network = list(NETWORK_SECURITY)

/obj/machinery/camera/xray/research
	network = list(NETWORK_SECURITY)
