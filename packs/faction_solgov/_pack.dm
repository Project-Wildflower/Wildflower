//Torch safety check to prevent possibly horrible behavioural conflicts.
#ifdef PREVENT_USE_OF_PACK_SOLGOV
	#error "ATTEMPTING TO COMPILE A MAP WITH 'PREVENT_USE_OF_PACK_SOLGOV' DEFINED!!! (Probably the torch, this still shouldn't happen!)"
#endif

/*
 * Modularization of SEV Torch SolGov/Fleet/EC Content
 * Contents are equivalent to Torch
 * as of Bay Master Commit ac3c1e9a17415363582760a336434585ff0d9215
 *
 * Notes:
 * find/replace `maps/torch` with `packs/faction_solgov` for file references.
 * Nonexistent accesses have been commented out, Define them in a map override.
*/

//Single Files
#include "mapping_helpers.dm"
#include "suit_storage.dm"
#include "books.dm"
#include "mecha.dm"
#include "banner.dm"
#include "stamps.dm"

//Support Code
#include "support_changes.dm"

//Clothing
#include "clothing/ec_skillbadges.dm"
#include "clothing/solgov-accessory.dm"
#include "clothing/solgov-armor.dm"
#include "clothing/solgov-feet.dm"
#include "clothing/solgov-hands.dm"
#include "clothing/solgov-head.dm"
#include "clothing/solgov-suit.dm"
#include "clothing/solgov-under.dm"



#ifdef ALLOW_LOADOUT_PACK_SOLGOV
	#warn ALLOW_LOADOUT_PACK_SOLGOV Unimplimented.
#endif
