function event_death_complete(event)
	-- 15% chance to spawn a thought destroyer on scorn banshee death
	if ( math.random(100) <= 15 ) then
		eq.spawn2(76387, 0, 0, event.self:GetX(), event.self:GetY(), event.self:GetZ(), event.self:GetHeading());
	end
end
