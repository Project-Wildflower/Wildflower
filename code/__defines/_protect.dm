#define PROTECT_PATH(Path)\
##Path/IsProtected(){\
	return TRUE;\
}

/datum/proc/IsProtected()
	return FALSE
