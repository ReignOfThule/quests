local CrocUp = 0;

function event_spawn(e)
	croc_spawns();
end

function croc_spawns()
	local RandomCroc = 65134;
	local RandomNumber = 0;
	RandomNumber = math.random(100);
	
	if(RandomNumber <=45) then
		eq.spawn2(RandomCroc,0,0,470,1661,-70,66);
		eq.spawn2(RandomCroc,0,0,462,1653,-70,66);
		CrocUp = 2;
	elseif(RandomNumber > 45 and RandomNumber <= 73) then
		eq.spawn2(RandomCroc,0,0,470,1661,-70,66);
		eq.spawn2(RandomCroc,0,0,462,1653,-70,66);
		eq.spawn2(RandomCroc,0,0,450,1661,-70,66);
		CrocUp = 3;
	elseif(RandomNumber > 73 and RandomNumber <= 80) then
		eq.spawn2(RandomCroc,0,0,470,1661,-70,66);
		CrocUp = 1;
	elseif(RandomNumber > 80 and RandomNumber <= 92) then
		eq.spawn2(65139,0,0,462,1653,-70,66); -- an ancient croc
		CrocUp = 1;
	elseif(RandomNumber > 92) then
		eq.spawn2(444099,0,0,462,1653,-70,66); -- fabled ancient croc
		CrocUp = 1;
	end
end

function event_signal(e)
	CrocUp = CrocUp - 1;
	if(CrocUp == 0) then
		eq.set_timer("spawn timer",487500);
	end
end

function event_timer(e)
	if(e.timer == "spawn timer") then
		croc_spawns();
		eq.stop_timer("spawn timer");
	end
end
