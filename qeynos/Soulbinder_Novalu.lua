function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Greetings " .. e.other:GetCleanName() .. ". When a hero of our world is slain their soul returns to the place it was last bound and the body is reincarnated. As a member of the Order of Eternity it is my duty to [bind your soul] to this location if that is your wish.");
	elseif(e.message:findi("bind my soul")) then
		e.self:Say("Binding your soul. You will return here when you die.");
		e.self:CastSpell(2049,e.other:GetID(),0,1); -- Spell: Bind Affinity
	end
end

function event_spawn(e)
	e.self:SetNPCFactionID(0); --peaceful
end