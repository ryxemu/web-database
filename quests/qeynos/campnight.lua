function event_spawn(e)
	eq.set_timer("stop",5000);
end

function event_timer(e)
	eq.signal(1095,1); -- NPC: Bassanio_Weekin
	eq.signal(1120,1); -- NPC: Gahna_Salbeen
	eq.signal(1115,1); -- NPC: Barthal
	eq.signal(1078,1); -- NPC: Moran_Smith
	eq.signal(1094,1); -- NPC: Solani_Dayadil
	eq.stop_timer("stop");
end