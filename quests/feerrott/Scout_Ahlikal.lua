function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("It is a pleasure to meet you, but I do not have time to speak. I am waiting on official word from Shar Vahl. If you have been sent to assist me, please show me the Official Seal of the Khati Sha at this time. If you are not such a person, please carry on with your business and leave me to tend to mine.");
	end
end
    
function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 9031})) then
		e.self:Say("Well met, I'm glad that you made it! This jungle is oppressive, with its dank earth and dark canopy. The sooner you dispatch that spirit, the sooner we can both make our way out of this vile place. Move towards the ruins that lie about two hundred feet from here. The spirit will be there. Release it from its current form and return the totem to me. I will wrap it for you, so that you may place it in the container that you should have been given. Take care and be swift!");
		eq.spawn2(47205,0,0,-2857,1133,1,0); -- NPC: The_Spirit_of_Decay  
		eq.unique_spawn(47004,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),0);
		eq.depop_with_timer();	
	end
	item_lib.return_items(e.self, e.other, e.trade);
end