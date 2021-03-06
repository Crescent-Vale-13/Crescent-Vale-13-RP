/datum/trait/speed_slow
	name = "Slowdown"
	desc = "Allows you to move slower on average than baseline."
	cost = -2
	var_changes = list("slowdown" = 0.5)

/datum/trait/speed_slow_plus
	name = "Major Slowdown"
	desc = "Allows you to move MUCH slower on average than baseline."
	cost = -3
	var_changes = list("slowdown" = 1.0)

/datum/trait/weakling
	name = "Weakling"
	desc = "Causes heavy equipment to slow you down more when carried."
	cost = -1
	var_changes = list("item_slowdown_mod" = 1.5)

/datum/trait/weakling_plus
	name = "Major Weakling"
	desc = "Allows you to carry heavy equipment with much more slowdown."
	cost = -2
	var_changes = list("item_slowdown_mod" = 2.0)

/datum/trait/endurance_low
	name = "Low Endurance"
	desc = "Reduces your maximum total hitpoints to 75."
	cost = -2
	var_changes = list("total_health" = 75)

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		H.setMaxHealth(S.total_health)

/datum/trait/endurance_very_low
	name = "Extremely Low Endurance"
	desc = "Reduces your maximum total hitpoints to 50."
	cost = -3 //Teshari HP. This makes the person a lot more suseptable to getting stunned, killed, etc.
	var_changes = list("total_health" = 50)

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		H.setMaxHealth(S.total_health)

/datum/trait/minor_brute_weak
	name = "Minor Brute Weakness"
	desc = "You take 15% more brute damage"
	cost = -1
	var_changes = list("brute_mod" = 1.15)

/datum/trait/brute_weak
	name = "Brute Weakness"
	desc = "You take 25% more brute damage"
	cost = -2
	var_changes = list("brute_mod" = 1.25)

/datum/trait/brute_weak_plus
	name = "Major Brute Weakness"
	desc = "You take 50% more brute damage"
	cost = -3
	var_changes = list("brute_mod" = 1.5)

/datum/trait/minor_burn_weak
	name = "Minor Burn Weakness"
	desc = "You take 15% more burn damage"
	cost = -1
	var_changes = list("burn_mod" = 1.15)

/datum/trait/burn_weak
	name = "Burn Weakness"
	desc = "You take 25% more burn damage"
	cost = -2
	var_changes = list("burn_mod" = 1.25)

/datum/trait/burn_weak_plus
	name = "Major Burn Weakness"
	desc = "You take 50% more burn damage"
	cost = -3
	var_changes = list("burn_mod" = 1.5)

/datum/trait/toxin_weak
	name = "Toxin Weakness"
	desc = "You take 25% more toxin damage"
	cost = -1
	var_changes = list("toxins_mod" = 1.25)

/datum/trait/toxin_weak_plus
	name = "Major Toxin Weaness"
	desc = "You take 50% more toxin damage"
	cost = -2
	var_changes = list("toxins_mod" = 1.5)

/datum/trait/oxy_weak
	name = "Breathe Weakness"
	desc = "You take 25% more breathe damage and require 25% more air (20kpa minimum). Make sure to adjust your emergency EVA tanks."
	cost = -1
	var_changes = list("minimum_breath_pressure" = 20, "oxy_mod" = 1.25)

/datum/trait/rad_weak
	name = "Radiation Weakness"
	desc = "You take 25% more radition damage"
	cost = -1
	var_changes = list("radiation_mod" = 1.25)

/datum/trait/rad_weak_plus
	name = "Major Radiation Weakness"
	desc = "You take 50% more radition damage"
	cost = -2
	var_changes = list("radiation_mod" = 1.50)

/datum/trait/conductive
	name = "Conductive"
	desc = "Increases your susceptibility to electric shocks by 50%"
	cost = -1
	var_changes = list("siemens_coefficient" = 1.5) //This makes you a lot weaker to tasers.

/datum/trait/conductive_plus
	name = "Major Conductive"
	desc = "Increases your susceptibility to electric shocks by 100%"
	cost = -2
	var_changes = list("siemens_coefficient" = 2.0) //This makes you extremely weak to tasers.

/datum/trait/hollow
	name = "Weak Bones/Aluminum Alloy"
	desc = "Your bones and robot limbs are easier to break."
	cost = -2 //I feel like this should be higher, but let's see where it goes

/datum/trait/hollow/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	for(var/obj/item/organ/external/O in H.organs)
		O.min_broken_damage *= 0.75
		O.min_bruised_damage *= 0.75

/datum/trait/hollow_plus
	name = "Hollow Bones/Brittle Alloy"
	desc = "Your bones and robot limbs are significantly easier to break."
	cost = -4 //I feel like this should be higher, but let's see where it goes

/datum/trait/hollow_plus/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	for(var/obj/item/organ/external/O in H.organs)
		O.min_broken_damage *= 0.5
		O.min_bruised_damage *= 0.5

/datum/trait/lightweight
	name = "Lightweight"
	desc = "Your light weight and poor balance make you very susceptible to unhelpful bumping. Think of it like a bowling ball versus a pin."
	cost = -2
	var_changes = list("lightweight" = 1)

/datum/trait/colorblind/mono
	name = "Colorblindness (Monochromancy)"
	desc = "You simply can't see colors at all, period. You are 100% colorblind."
	cost = -1

/datum/trait/colorblind/mono/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.add_modifier(/datum/modifier/trait/colorblind_monochrome)

/datum/trait/colorblind/para_vulp
	name = "Colorblindness (Para Vulp)"
	desc = "You have a severe issue with green colors and have difficulty recognizing them from red colors."
	cost = -1

/datum/trait/colorblind/para_vulp/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.add_modifier(/datum/modifier/trait/colorblind_vulp)

/datum/trait/colorblind/para_taj
	name = "Colorblindness (Para Taj)"
	desc = "You have a minor issue with blue colors and have difficulty recognizing them from red colors."
	cost = -1

/datum/trait/colorblind/para_taj/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.add_modifier(/datum/modifier/trait/colorblind_taj)

/datum/trait/photosensitive
	name = "Photosensitive"
	desc = "You are incredibly vulnerable to bright lights. You are blinded for longer and your skin burns under extreme light."
	cost = -1
	var_changes = list("flash_mod" = 2)
	var_changes = list("flash_burn" = 5)

/datum/trait/hemophilia
	name = "Hemophilia"
	desc = "You bleed twice as fast as normal."
	cost = -1
	var_changes = list("bloodloss_rate" = 2)

