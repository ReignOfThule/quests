function event_death_complete(e)
	local sirranName = "sirran";
	sirranName = sirranName .. eq.get_zone_guild_id();
	eq.set_global(sirranName,"6",3,"M20");
	eq.spawn2(71058,0,0,e.self:GetX(), e.self:GetY(), e.self:GetZ(), e.self:GetHeading()); --Sirran the Lunatic
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
