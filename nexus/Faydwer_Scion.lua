local saved_char_id = 0;
local saved_group_id = 0;
local porting = false;

function event_say(e)
    --Char and Guild Info
    local char_id = e.other:GetID();
    local charID = e.other:CharacterID();
	local char_name = eq.get_char_name_by_id(charID);
    
    --Ports
    local ports = {"Butcherblock", "Greater Faydark", "Steamfont"}; --Faydwer

	if(e.message:findi("hail")) then
	
		local portLinks = {};

				
		for _, port in ipairs(ports) do
			table.insert(portLinks, eq.say_link(port, true, port))
		end

		local portString = table.concat(portLinks, ", ");

		e.self:Say("Hail "..char_name.."! I can provide travel to the following: " .. portString .. "."); --Split in two due to char limits on say

	--Port Locations
	elseif(e.message:findi("Butcherblock")) then
		saved_char_id = char_id; --Saving char id for port timer
		local saved_group = e.other:GetGroup(); --Saving group id for port
		saved_group_id = saved_group:GetID();
		e.self:Say("Butcherblock coming up!");
		local player = eq.get_entity_list():GetMob(saved_char_id);
		MoveGroup(saved_group, player, player:GetX(),player:GetY(),player:GetZ(), 20, 1984, -2135, 3, 58, 68);
		--player:CastSpell(3093, player:GetID()); --Circle of Butcherblock
	elseif(e.message:findi("Greater Faydark")) then
		saved_char_id = char_id; --Saving char id for port timer
		local saved_group = e.other:GetGroup(); --Saving group id for port
		saved_group_id = saved_group:GetID();
		e.self:Say("Greater Faydark coming up!");
        local player = eq.get_entity_list():GetMob(saved_char_id);
		MoveGroup(saved_group, player, player:GetX(),player:GetY(),player:GetZ(), 20, -441, -2023, 4, 478, 54);
		--player:CastSpell(3097, player:GetID()); --Fay Portal
	elseif(e.message:findi("Steamfont")) then
		saved_char_id = char_id; --Saving char id for port timer
		local saved_group = e.other:GetGroup(); --Saving group id for port
		saved_group_id = saved_group:GetID();
		e.self:Say("Steamfont coming up!");
        local player = eq.get_entity_list():GetMob(saved_char_id);
		MoveGroup(saved_group, player, player:GetX(),player:GetY(),player:GetZ(), 20, 1668, -1779, -104, 437, 56);
		--player:CastSpell(3090, player:GetID()); --Circle of Steamfont
	end
end


function MoveGroup(frozen_group, player, src_x, src_y, src_z, distance, tgt_x, tgt_y, tgt_z, tgt_h, zoneid)
	if ( frozen_group.valid ) then
		local frozen_count = frozen_group:GroupCount();

		for i = 0, frozen_count - 1, 1 do
			local client_v = frozen_group:GetMember(i);

			local player = eq.get_entity_list():GetMob(client_v:CastToClient():CharacterID());

			if (player) then
				if (client_v:CastToClient().valid) then
					-- check the distance and port them up if close enough
					if (client_v:CastToClient():CalculateDistance(src_x, src_y, src_z) <= distance) then
						--local groupmate = eq.get_entity_list():GetMob(client_v:CharacterID());
						client_v:SpellFinished(207, client_v);
						-- port the player up
						client_v:CastToClient():MovePC(zoneid, tgt_x, tgt_y, tgt_z, tgt_h);
					end
				end
			end
		

		end
	else
		player:SpellFinished(207, player);
		player:CastToClient():MovePC(zoneid, tgt_x, tgt_y, tgt_z, tgt_h);
	end
end