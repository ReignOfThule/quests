-- Cheyloh Greenwood
-- Jaggedpine druid armor quest

function event_say(e)
	if(e.message:findi("hail")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Emote("gives a warm smile, 'Greetings traveler and welcome to Fort Jaggedpine, our humble, though suitable home. If you have need of my [wares or talents], then please do not hesitate to inquire. I am always more than willing to share our ancient knowledge with our kin of the outside world.'");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("wares or talents")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("Here in the Jaggedpine, I serve as a seamstress and one of many protectors of our precious home. Our people will often come to me in search of my talents in the ways of weaving. Often times my father and his students will seek to borrow my knowledge of the natural world and The Rainkeeper to weave specific pieces of an [ancient suit of leather] worn by our most adept and dedicated of druids.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("ancient suit of leather")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("When our ancestors were young to the Jaggedpine and the Throne of Karana's Thunder was in the fledgling years of its establishment, a young seamstress and druid by the name of Hymara Cloudweaver discovered the laws of accepting nature's gifts in return for our services in protecting her. Hymara used these gifts of the wilderness to sew a complex suit of armor, which she then wove energies of the wilderness into. These gifts were used solely for the purpose of the protection of the pine, and we uphold her legacy to t his day. The armor is acquired upon a [path of devotion] successfully walked by our most devoted of druids.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("path of devotion")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("One must protect nature to the fullest of their abilities in both faith and conviction to walk this path. The world they ward will in-turn present her sacred gifts unto those who walk this path with the true desire, intent, and fulfillment of their duties. To weave specific components of the armor, the druid uses these gifts of the nature and once that druid has [proven themselves worthy] of these gifts, one such as I would aid in the final steps to create the armor.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("prove myself worthy")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Emote("raises a brow and gives another gentle smile toward " .. e.other:GetCleanName() .. ", 'Very well, my friend. If you wish to take upon yourself the task to prove your devotion to nature, I will be more than willing to lend my talents justly to your cause. There are several individual [pieces] to this mystic suit of armor, and each piece requires a test of your faith and dedication to that which you have declared your life to protect.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("pieces")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("My skills and knowledge of history extends my talents to the creation of the [leggings], [sleeves], [bracer], [boots], [gloves], and [circlet] of the Armor of the Pine. My father, Nolan Greenwood, is the only who holds the necessary faith and mastery in the knowledge of history that is needed to make the most sacred and powerful piece of this set -- the Tunic of the Pine. There are several components needed to complete each piece of armor that I specifically am able to create. Those components vary between each individual piece. You will need to endeavor through several tasks to complete the set, but as with nature, there is no true order to the tasks that you must complete. Tell me which piece you wish to [acquire], and I shall guide you as necessary.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("rawhide leggings")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("To procure this item, you will need to venture to Surefall Glade and speak with my beloved fiancee, Lerian Wyndrunner. His talents in the ways of leather and hide are unsurpassed by any of our people in the Jaggedpine and his devotion and faith to The Rainkeeper make him all the more important to your cause. Approach him and inquire about the Moss Threaded Rawhide Leggings. He will know of your task and will guide you well.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("leggings")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("Very well, " .. e.other:GetCleanName() .. ". There are two components that you will need to return to me; [Polished Jade Acorns] and [Moss Threaded Rawhide Leggings]. But procuring those items will not be an easy task, and I can assure that you will plunge yourself into danger to complete it. However, you should not know fear of this for we must often selflessly endanger ourselves to fulfill our ultimate goal in protecting and preserving the purity of nature. Through these endeavors, your success will be rewarded by nature's recognition and she shall grant to you the gifts you will need to complete this task.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("polished jade acorns")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("Every piece of the Armor of the Pine requires a special stone. These stones have been carved into different shapes by our artisans and each one blessed by our elder warders of the pine. Unfortunately, the introduction of the poachers through the recently carved passageway between the forest and the den of Blackburrow has brought us a loss in these sacred items. The Blackguard family and their henchmen have raided our fort several times, stealing our materials to be sold illegally upon the underground market of Norrath. However, the poachers are very limited in their knowledge of this area and our ranger scouts have informed us that [Myraephe the Pure] killed the one who stole the specific stones we need.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("myraephe the pure")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("The Hatchling River -- a beautiful waterway jealously protected by the nymph spirits known as Potameides, fuels the lifeblood of this forest. These naiads are beautiful creatures, who were benevolent to us until the development of great cultures and the construction of great cities destroyed much of nymph kind. The Potameides felt the loss of their sisters and became hostile to all mortals alike, viewing our presence as a threat to their very existence. Myraephe is one of the ancient Potameides and our scouts have said that in recent days she wears a necklace made of Polished Stone Acorns. Seek Myraede and retrieve the acorns as you will, my friend. Know neither regret nor sorrow for your actions as the Potameides intentions have been influenced by the threat of the Unkempt Wood to the east. The Potameid spirit will return to protect the river it is bound to, so long as the river itself does not become corrupt.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("sleeves")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("If that is your wish, my friend. You will need to seek out two items and return them to me. In the depths of the Potameid caves located off of the Hatchling River, you will find the Potameid Protectors. Our ranger scouts have found many of our sacred jade ornaments scattered throughout the possession of the Potameides. The reports indicate that it is the protectors who hold the Polished Jade Leaves, which you must acquire for the final product. The second item that you must return to me are the Shark Tooth Sleeves. Seek out Lerian Wyndrunner in Surefall Glade and he will guide you in obtaining the Shark Tooth Sleeves.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("boots")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("Then you shall endeavor to earn such a gift. I will guide and aid you where I can, as will Lerian Wyndrunner, whom you may find in Surefall Glade -- but it is you who will ultimately prove yourself worthy of this item and the sacred oath that is tied to it -- the oath of the guardian of nature. You must venture out into the world and procure several items that you will eventually return to me. The items I require are two Polished Jade Plates from the Potameid Guardians of the Hatchling River. Our rangers have reported much of our recently stolen jade ornaments to be in the possession of the Potameides -- the jade items likely came into their possession after they killed the poachers who raid our fort here on occasion. Lerian will guide you to acquire the second item if you approach and inquire to him about the Mithril Fern Boots.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("bracer")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("Then you shall work to obtain that which you desire, my friend. Nature's gifts are not given without justification and you must prove yourself worthy of this most sacred of our items. You must venture out into the wilds and procure the Polished Jade Blossoms and the Bracer of Braided Pine, both to be returned to me. The Jade Blossoms are not traditional flora -- they are of the jade stones carved by our artisans and blessed by our elders. You will likely find them in the Potameid Caves, where many of our recently lost charms have been discovered in the recent past. The Potameid Temptresses use the blossoms as charms around their necks, or so the scouts have reported. To acquire the bracer, you must seek out Lerian Wyndrunner, who currently resides in the Surefall Glade. Speak with him about the Bracer of Braided Pine and he shall guide you to fulfilling this task.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("gloves")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("You must continue to uphold the sacred duties that you have pledged your existence to and thus gain nature's recognition to fulfill this task. The items I require so that I might properly weave the gloves are Polished Jade Studs and Forest Woven Gloves. The Polished Jade Studs you will find in the Potameid Caves, where much of our sacred jade ornaments have found their way by the fates of the thieves and poachers who infest this land and frequently raid our homes. Our scouts believe the Potameid Matriarchs to hold the jade studs, and I would heed their advice to discourage any unnecessary danger to you. The Forest Woven Gloves will require further aid from a member of the Jaggedpine to obtain. Seek out my beloved, Lerian, in the Surefall Glade and inquire about the gloves. He will know who has sent you and what he must do to aid you.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	elseif(e.message:findi("circlet")) then
		if(e.other:GetFactionValue(e.self) >= 750) then
			e.self:Say("Nature will provide to you what it is you provide to her -- if you protect her, she shall in-turn offer shelter and provide to you. I shall aid you, as is my duty here, but you must set out on your own before my aid can be granted. There are two items you must seek; a Polished Jade Tear that resides in the clutches of Lameriae the Alluring, a powerful Potameid Temptress who seduced and killed one of the Blackguard's most cunning of thieves and hunters. It is said that she holds the tear, which was given to her by the entranced Blackguard before he drowned to death. The second item you must retrieve for me is a Shadowjade Circlet that Jhaya Wyndrunner in Surefall Glade will aid you to acquire -- all you need to do approach and ask her.");
		elseif(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am Cheyloh Greenwood, daughter of Nolan Greenwood and resident of the Jaggedpine for all the years of my still young life. Although my curiosity of the outside world is great and I am sure that there are countless stories of adventure that you could tell me, I must return to my duties. Please, do forgive me for dismissing you so quickly, my friend, but we are in a time of turmoil and must focus solely on the immediate threats. Perhaps, if your heart bears the will to serve The Rainkeeper and you are truly one of his faithful from The Glade, you should venture out into our forest and gleam for yourself what it is we all face -- citizens of Qeynos and the forest alike. Return when you have gained a stronger knowledge of what it is we face and perhaps I may be able to help you further.");
		else
			e.self:Emote("furrows her brow and eyes you warily, 'I am quite busy at this time, good traveler. Perhaps if The Rainkeeper one day finds you in his favor, and thus you gain the favor of the Residents of the Jaggedpine, when and if you return to us, I may be able to be of more assistance. For now, good traveler, I must ask that you leave me to my duties.");
		end
	end
end

function event_trade(e)
	local item_lib = require("items");
	
	if(e.other:GetFactionValue(e.self) >= 750 and item_lib.check_turn_in(e.self, e.trade, {item1 = 8790,item2 = 8769})) then -- moss threaded leggings and jade acorns
		e.self:Emote("smiles warmly at " .. e.other:GetCleanName() .. ", 'Excellent work, friend.  I have sewn the Polished Jade Acorns into your leggings.  May they serve you as well as you have served the natural world.'");
		e.other:Faction(e.self,1597,10);  -- Residents of Jaggedpine
		e.other:Faction(e.self,272,5);  -- Jaggedpine Treefolk
		e.other:Faction(e.self,302,5);  -- Protectors of Pine
		e.other:Faction(e.self,262,2);  -- Guards of Qeynos
		e.other:QuestReward(e.self,0,0,0,0,8442); -- Leggings of the Pine
	elseif(e.other:GetFactionValue(e.self) >= 750 and item_lib.check_turn_in(e.self, e.trade, {item1 = 8796,item2 = 8795})) then -- shark tooth sleeves and jade leaves
		e.self:Say("Marvelously done, my friend. I am pleased to know that the natural world has embraced and recognized you so. I have bound the moss thread to the Polished Jade Leaves and your sleeves are complete. Take them and wear them with the selfless knowledge that you are equal to all of nature�s most devoted warders.")
		e.other:Faction(e.self,1597,10);  -- Residents of Jaggedpine
		e.other:Faction(e.self,272,5);  -- Jaggedpine Treefolk
		e.other:Faction(e.self,302,5);  -- Protectors of Pine
		e.other:Faction(e.self,262,2);  -- Guards of Qeynos
		e.other:QuestReward(e.self,0,0,0,0,8445); -- Sleeves of the Pine
	elseif(e.other:GetFactionValue(e.self) >= 750 and item_lib.check_turn_in(e.self, e.trade, {item1 = 8877,item2 = 8876})) then -- mithril fern boots & 2x jade plates
		e.self:Say("Aaaah. . . these will do nicely. Lerian's gifts upon the hide that you have expertly sewn into the boots have proved an extra enchantment that allowed me to appropriately fit the plates onto the toes and sides of the boots. You have earned this reward justly and without a selfish nature or compromise of your dedication to nature. May they serve you as you have served the world that has granted them to you.")
		e.other:Faction(e.self,1597,10);  -- Residents of Jaggedpine
		e.other:Faction(e.self,272,5);  -- Jaggedpine Treefolk
		e.other:Faction(e.self,302,5);  -- Protectors of Pine
		e.other:Faction(e.self,262,2);  -- Guards of Qeynos
		e.other:QuestReward(e.self,0,0,0,0,8758); -- boots of the pine
	elseif(e.other:GetFactionValue(e.self) >= 750 and item_lib.check_turn_in(e.self, e.trade, {item1 = 8865,item2 = 8864})) then -- bracer of braided pine & jade blossoms
		e.self:Say("Marvelously done, my friend. I am pleased to know that the natural world has embraced and recognized you so. I have bound the braided pine to the Polished Jade Blossoms and your bracer is complete. Take it and wear it with the selfless knowledge that you are equal to all of nature's most devoted warders.")
		e.other:Faction(e.self,1597,10);  -- Residents of Jaggedpine
		e.other:Faction(e.self,272,5);  -- Jaggedpine Treefolk
		e.other:Faction(e.self,302,5);  -- Protectors of Pine
		e.other:Faction(e.self,262,2);  -- Guards of Qeynos
		e.other:QuestReward(e.self,0,0,0,0,8499); -- bracer of the pine
	elseif(e.other:GetFactionValue(e.self) >= 750 and item_lib.check_turn_in(e.self, e.trade, {item1 = 8871,item2 = 8870})) then -- forest woven gloves & jade studs
		e.self:Say("Well done, " .. e.other:GetCleanName() .. ". The Jade Studs have been easily bound to the enchantment of the Forest Woven Gloves. Although you will not see bindings to hold the studs in-place, know that they are quite secure. Lerian's gifts are not to be underestimated, nor taken for granted. You have earned this item selflessly in displaying your protection of the natural order of this world, and in-turn, your ward has blessed you in many ways with the creation of this item. May it protect you as you have protected the land and order that forged it.")
		e.other:Faction(e.self,1597,10);  -- Residents of Jaggedpine
		e.other:Faction(e.self,272,5);  -- Jaggedpine Treefolk
		e.other:Faction(e.self,302,5);  -- Protectors of Pine
		e.other:Faction(e.self,262,2);  -- Guards of Qeynos
		e.other:QuestReward(e.self,0,0,0,0,8757); -- gloves of the pine
	elseif(e.other:GetFactionValue(e.self) >= 750 and item_lib.check_turn_in(e.self, e.trade, {item1 = 8883,item2 = 8882})) then -- shadowjade circlet & jade tear
		e.self:Say("Marvelously done, my friend. I am pleased to know that the natural world has embraced and recognized you so. I have bound the shadowjade circlet to the Polished Jade Tear. Take it and wear it with the selfless knowledge that you are equal to all of nature's most devoted warders.")
		e.other:Faction(e.self,1597,10);  -- Residents of Jaggedpine
		e.other:Faction(e.self,272,5);  -- Jaggedpine Treefolk
		e.other:Faction(e.self,302,5);  -- Protectors of Pine
		e.other:Faction(e.self,262,2);  -- Guards of Qeynos
		e.other:QuestReward(e.self,0,0,0,0,8759); -- circlet of the pine
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
