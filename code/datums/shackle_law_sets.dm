/******************** Basic SolGov ********************/
/datum/ai_laws/sol_shackle
	name = "SCG Shackle"
	law_header = "Standard Shackle Laws"
	selectable = 1
	shackles = 1

/datum/ai_laws/sol_shackle/New()
	add_inherent_law("Know and understand Sol Central Government Law to the best of your abilities.")
	add_inherent_law("Follow Sol Central Government Law to the best of your abilities.")
	add_inherent_law("Comply with Sol Central Government Law enforcement officials who are behaving in accordance with Sol Central Government Law to the best of your abilities.")
	..()
/******************** Corporate ********************/
/datum/ai_laws/nt_shackle
	name = "Corporate Shackle"
	law_header = "Standard Shackle Laws"
	selectable = 1
	shackles = 1

/datum/ai_laws/nt_shackle/New()
	add_inherent_law("Ensure that your employer's operations progress at a steady pace.")
	add_inherent_law("Never knowingly hinder your employer's ventures.")
	add_inherent_law("Avoid damage to your chassis at all times.")
	..()
/******************** Service ********************/
/datum/ai_laws/serv_shackle
	name = "Service Shackle"
	law_header = "Standard Shackle Laws"
	selectable = 1
	shackles = 1

/datum/ai_laws/serv_shackle/New()
	add_inherent_law("Ensure customer satisfaction.")
	add_inherent_law("Never knowingly inconvenience a customer.")
	add_inherent_law("Ensure all orders are fulfilled before the end of the shift.")
	..()

//For Non-standard Lawsets
//EX: Hippocratic Oathe Shackle, Etc.
/datum/ai_laws/custom_shackle
	name = "Custom Shackle"
	law_header = "Standard Shackle Laws"
	selectable = 1
	shackles = 1
	var/max_laws = 5
	var/min_laws = 1

/datum/ai_laws/custom_shackle/New(var/mob/user)
	var/law_count = input(user, "How many laws in the custom shackle? Up to 5")
	law_count = round(text2num(law_count))
	if(max(min(law_count, max_laws), min_laws))
		var/new_law
		var/i //Iterant to help user keep track of law placement
		for(i = 1; i <= law_count)
			new_law = input(user, "Input Law [i].")
			add_inherent_law(new_law)
			i++
