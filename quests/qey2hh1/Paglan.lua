function event_spawn(e)
	eq.set_timer(1,1200000);
	e.self:SetRunning(true);
end

function event_timer(e)
	eq.depop();
end

function event_combat(e)
	if(e.joined == true) then
		e.self:Say("The time fer talk is over.  Raise yer guard!!");
		eq.signal(12082,1);
		eq.signal(12154,1); -- NPC: Frostbite
	end
end
