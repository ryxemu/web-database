function event_spawn(e)
	eq.set_timer("paw",600000);
end

function event_timer(e)
	e.self:Say("Can you believe that? That guy actually thinks he is going to find the [Paw of Opolla!]! Bwah ha ha ha!");
	eq.signal(1072,1); -- NPC: Micc_Koter
end

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hey, " .. e.other:GetCleanName() .. "!  Do I know you from somewhere?  Highpass?  Nah, you ain't who I thought you were.  If I were you I would just keep my trap shut and buy some drinks.");
	elseif(e.message:findi("kane")) then
		e.self:Say("Commander Kane Bayle is the commander of all the Qeynos Guard.  He is second only to his brother, Antonius Bayle.  His post is in the guard house at the city gates.  Mind you, do not bother him, he has a bit of a temper.");
	elseif(e.message:findi("paw of opolla")) then
		e.self:Say("Heh? Why don't you mind your own business bub?! Buzz off!");
		eq.signal(1072,2); -- NPC: Micc_Koter
	end
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end

function event_signal(e)
	-- e.self:FaceTarget(e.other:GetMobByNpcTypeID(1072));
	e.self:Say("Shut your hole, Micc, you dirty son of a kobold!");
end