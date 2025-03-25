local saved_char_id = 0;

function event_discover_item(e)
	eq.debug("item is " .. e.item:Name() .."");
	e.self:Message(15, "" .. e.self:GetCleanName() .. " has discovered " .. e.item:Name() .. "" );
end


function event_connect(e)
	local charID = e.self:CharacterID();
	local charIDBind = tostring(charID).."bind"

	if eq.get_data(charIDBind) == "" then
		e.self:SummonItem(10184);
		eq.set_data(charIDBind, "nexusbound");
		e.self:MovePC(152, 0, 0, -30.90, 0);
	end
end

function event_enter_zone(e)
	local charID = e.self:CharacterID();
	local charIDBind = tostring(charID).."bind"
	if eq.get_data(charIDBind) == "" then
		e.self:SummonItem(10184);
		eq.set_data(charIDBind, "nexusbound");
		e.self:MovePC(152, 0, 0, -30.90, 0);
	end
end

function event_cast_begin(e)
	local charLevel = e.self:GetLevel();
	local charID = e.self:CharacterID();
	local clericResoRecast = eq.get_data(tostring(charID).."clericResoTimer");
	local clericSymbRecast = eq.get_data(tostring(charID).."clericSymbTimer");
	local nexusGateRecast = eq.get_data(tostring(charID).."nexusGateTimer");


	if e.spell == 2759 then --Undead Pact - Necromancer Dire Charm
		if e.target_level >= e.self:GetLevel() then -- Charm target must be lower level than player
			e.self:Duck();
			e.self:Message(15,"Target is too high level. Try casting on something lower level than you.");
		end
	elseif e.spell == 2760 then --Servant of Nature - Druid Dire Charm
		if e.target_level >= e.self:GetLevel() then -- Charm target must be lower level than player
			e.self:Duck();
			e.self:Message(15,"Target is too high level. Try casting on something lower level than you.");
		end
	elseif e.spell == 2761 then --Dominating Gaze - Enchanter Dire Charm
		if e.target_level >= e.self:GetLevel() then -- Charm target must be lower level than player
			e.self:Duck();
			e.self:Message(15,"Target is too high level. Try casting on something lower level than you.");
		end
	elseif e.spell == 2945 then --Nexus Gate
		if nexusGateRecast ~= "" then
			e.self:Message(13, "This spell is currently on a cooldown.");
			e.self:Duck();
		end
	elseif e.spell == 3138 then --Blessing of the Resolute
		if clericResoRecast ~= "" then
			e.self:Message(13, "This spell is currently on a cooldown.");
			e.self:Duck();
		end
	elseif e.spell == 3149 then --Blessing of Symbols
		if clericSymbRecast ~= "" then
			e.self:Message(13, "This spell is currently on a cooldown.");
			e.self:Duck();
		end
	end
end

function event_cast(e)
	local charLevel = e.self:GetLevel();
	local charID = e.self:CharacterID();
	local clericResoRecast = eq.get_data(tostring(charID).."clericResoTimer");
	local clericSymbRecast = eq.get_data(tostring(charID).."clericSymbTimer");
	local nexusGateRecast = eq.get_data(tostring(charID).."nexusGateTimer");

	saved_char_id = charID;

	if e.spell == 3137 then --blessing of the wolf
		eq.self_cast(278);
	
	elseif e.spell == 3138 then --blessing of the Resolute
		if clericResoRecast == "" then
			if charLevel < 21 then
				eq.self_cast(89); --Daring
				eq.set_data(tostring(charID).."clericResoTimer", "onCooldown", "10M");
			elseif charLevel < 31 then
				if charLevel > 20 then
					eq.self_cast(244); --Bravery
					eq.set_data(tostring(charID).."clericResoTimer", "onCooldown", "10M");
				end
			elseif charLevel < 41 then
				if charLevel > 30 then
					eq.self_cast(312); --Valor
					eq.set_data(tostring(charID).."clericResoTimer", "onCooldown", "10M");
				end
			elseif charLevel < 51 then
				if charLevel > 40 then
					eq.self_cast(314); --Resolution
					eq.set_data(tostring(charID).."clericResoTimer", "onCooldown", "10M");
				end
			end
		else
			e.self:Message(13, "This spell is currently on a cooldown.");
		end

	elseif e.spell == 3149 then --blessing of symbols
		if clericSymbRecast == "" then
			if charLevel < 21 then
				eq.self_cast(485); --Symbol of Transal
				eq.set_data(tostring(charID).."clericSymbTimer", "onCooldown", "10M");
			elseif charLevel < 31 then
				if charLevel > 20 then
					eq.self_cast(486); --Symbol of Ryltan
					eq.set_data(tostring(charID).."clericSymbTimer", "onCooldown", "10M");
				end
			elseif charLevel < 41 then
				if charLevel > 30 then
					eq.self_cast(487); --Symbol of Pinzarn
					eq.set_data(tostring(charID).."clericSymbTimer", "onCooldown", "10M");
				end
			elseif charLevel < 51 then
				if charLevel > 40 then
					eq.self_cast(488); --Symbol of Naltron
					eq.set_data(tostring(charID).."clericSymbTimer", "onCooldown", "10M");
				end
			end
		else
			e.self:Message(13, "This spell is currently on a cooldown.");
		end
	elseif e.spell == 3139 then --blessing of clarity
		eq.self_cast(174); --Clarity
	elseif e.spell == 3140 then -- Blessing of Sight
		eq.self_cast(80); --See Invis
	elseif e.spell == 3141 then --Blessing of Haste
		if charLevel < 21 then
			eq.self_cast(39); --Quickness
		elseif charLevel < 31 then
			if charLevel > 20 then
				eq.self_cast(170); --Alacrity
			end
		elseif charLevel < 41 then
			if charLevel > 30 then
				eq.self_cast(171); --Celerity
			end
		elseif charLevel < 51 then
			if charLevel > 40 then
				eq.self_cast(172); --Swift like the Wind
			end
		end
	elseif e.spell == 3142 then --Blessing of Stamina
		if charLevel < 21 then
			eq.self_cast(279); --Spirit of Bear
		elseif charLevel < 31 then
			if charLevel > 20 then
				eq.self_cast(149); --Spirit of Ox
			end
		elseif charLevel < 41 then
			if charLevel > 30 then
				eq.self_cast(161); --Health
			end
		elseif charLevel < 51 then
			if charLevel > 40 then
				eq.self_cast(158); --Stamina
			end
		end
	elseif e.spell == 3143 then --Blessing of Strength
		if charLevel < 21 then
			eq.self_cast(147); --Spirit Strength
		elseif charLevel < 31 then
			if charLevel > 20 then
				eq.self_cast(151); --Raging Strength
			end
		elseif charLevel < 41 then
			if charLevel > 30 then
				eq.self_cast(153); --Furious Strength
			end
		elseif charLevel < 51 then
			if charLevel > 40 then
				eq.self_cast(159); --Strength
			end
		end
	elseif e.spell == 3144 then --Blessing of Fire
		eq.self_cast(60); --Resist Fire
	elseif e.spell == 3145 then --Blessing of Cold
		eq.self_cast(61); --Resist Cold
	elseif e.spell == 3146 then --Blessing of Disease
		eq.self_cast(63); --Resist Disease
	elseif e.spell == 3147 then --Blessing of Poison
		eq.self_cast(62); --Resist Poison
	elseif e.spell == 3148 then --Blessing of Magic
		eq.self_cast(64); --Resist Magic
	elseif e.spell == 3211 then --Blessing of Magic
		local random_illusion = math.random(1,9);
		if random_illusion == 1 then
			eq.self_cast(582); --Illusion Human
		elseif random_illusion == 2 then
			eq.self_cast(583); --Illusion Half Elf
		elseif random_illusion == 3 then
			eq.self_cast(586); --Illusion Barbarian
		elseif random_illusion == 4 then
			eq.self_cast(587); --Illusion Erudite
		elseif random_illusion == 5 then
			eq.self_cast(588); --Illusion Wood Elf
		elseif random_illusion == 6 then
			eq.self_cast(589); --Illusion High Elf
		elseif random_illusion == 7 then
			eq.self_cast(590); --Illusion Dark Elf
		elseif random_illusion == 8 then
			eq.self_cast(592); --Illusion Troll
		elseif random_illusion == 9 then
			eq.self_cast(593); --Illusion Ogre
		end
	elseif e.spell == 2945 then --Nexus Gate
		if nexusGateRecast == "" then
			eq.set_data(tostring(charID).."nexusGateTimer", "onCooldown", "30M"); --30 Minute recast
		end	
	end
end



