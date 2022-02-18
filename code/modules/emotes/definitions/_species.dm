/datum/species
	var/list/default_emotes = list()

/mob/living/carbon/update_emotes()
	. = ..(skip_sort=1)
	if(species)
		for(var/emote in species.default_emotes)
			var/decl/emote/emote_datum = decls_repository.get_decl(emote)
			if(emote_datum.check_user(src))
				usable_emotes[emote_datum.key] = emote_datum
	usable_emotes = sortAssoc(usable_emotes)

// Specific defines follow.
/datum/species/slime
	default_emotes = list(
		/decl/emote/visible/bounce,
		/decl/emote/visible/jiggle,
		/decl/emote/visible/lightup,
		/decl/emote/visible/vibrate
		)

/datum/species/unathi
	default_emotes = list(
		/decl/emote/human/swish,
		/decl/emote/human/wag,
		/decl/emote/human/sway,
		/decl/emote/human/qwag,
		/decl/emote/human/fastsway,
		/decl/emote/human/swag,
		/decl/emote/human/stopsway,
		/decl/emote/visible/thump,
		/decl/emote/audible/lizard_bellow,
		/decl/emote/audible/lizard_hiss
		)

/datum/species/unathi/yeosa
	default_emotes = list(
		/decl/emote/human/swish,
		/decl/emote/human/wag,
		/decl/emote/human/sway,
		/decl/emote/human/qwag,
		/decl/emote/human/fastsway,
		/decl/emote/human/swag,
		/decl/emote/human/stopsway,
		/decl/emote/visible/thump,
		/decl/emote/audible/lizard_bellow,
		/decl/emote/audible/lizard_squeal,
		/decl/emote/audible/lizard_hiss
		)

/datum/species/nabber
	default_emotes = list(
		/decl/emote/audible/bug_hiss,
		/decl/emote/audible/bug_buzz,
		/decl/emote/audible/bug_chitter
		)

/datum/species/adherent
	default_emotes = list(
		/decl/emote/audible/adherent_chime,
		/decl/emote/audible/adherent_ding
	)

/datum/species/vox
	default_emotes = list(
		/decl/emote/audible/vox_shriek
	)

/datum/species/vox/armalis/default_emotes = list(
	/decl/emote/audible/vox_shriek,
	/decl/emote/audible/armalis_shriek
)

/datum/species/diona
	default_emotes = list(
		/decl/emote/audible/chirp,
		/decl/emote/audible/multichirp
	)

/mob/living/carbon/human/set_species(var/new_species, var/default_colour = 1)
	UNLINT(. = ..())
	update_emotes()
