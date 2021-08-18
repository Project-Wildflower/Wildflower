/datum/map/exodus
	allowed_jobs = list(
		/datum/job/captain,
		/datum/job/hop,
		/datum/job/chaplain,
		/datum/job/bartender,
		/datum/job/chef,
		/datum/job/hydro,
		/datum/job/qm,
		/datum/job/cargo_tech,
		/datum/job/mining,
		/datum/job/janitor,
		/datum/job/librarian,
		/datum/job/lawyer,
		/datum/job/chief_engineer,
		/datum/job/engineer,
		/datum/job/cmo,
		/datum/job/doctor,
		/datum/job/chemist,
		/datum/job/psychiatrist,
		/datum/job/rd,
		/datum/job/scientist,
		/datum/job/roboticist,
		/datum/job/hos,
		/datum/job/detective,
		/datum/job/warden,
		/datum/job/officer,
		/datum/job/cyborg,
		/datum/job/ai
	)

	species_to_job_whitelist = list(
		/datum/species/adherent = list(
			/datum/job/ai,
			/datum/job/cyborg,
			/datum/job/assistant,
			/datum/job/janitor,
			/datum/job/chef,
			/datum/job/bartender,
			/datum/job/cargo_tech,
			/datum/job/engineer,
			/datum/job/roboticist,
			/datum/job/chemist,
			/datum/job/scientist,
			/datum/job/mining
		),
		/datum/species/machine = list(
			/datum/job/ai,
			/datum/job/cyborg,
			/datum/job/assistant,
			/datum/job/janitor,
			/datum/job/chef,
			/datum/job/bartender,
			/datum/job/cargo_tech,
			/datum/job/engineer,
			/datum/job/roboticist,
			/datum/job/chemist,
			/datum/job/scientist,
			/datum/job/mining
		),
		/datum/species/nabber = list(
			/datum/job/ai,
			/datum/job/cyborg,
			/datum/job/assistant,
			/datum/job/janitor,
			/datum/job/chef,
			/datum/job/bartender,
			/datum/job/cargo_tech,
			/datum/job/roboticist,
			/datum/job/chemist
		)
	)

#define HUMAN_ONLY_JOBS /datum/job/captain, /datum/job/hop, /datum/job/hos
	species_to_job_blacklist = list(
		/datum/species/unathi = list(
			HUMAN_ONLY_JOBS
		)/*,
		/datum/species/tajaran = list(
			HUMAN_ONLY_JOBS
		)*/
	)

#undef HUMAN_ONLY_JOBS
