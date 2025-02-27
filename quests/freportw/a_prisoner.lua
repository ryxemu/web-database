function event_spawn(e)
	eq.set_timer("goog",150000);
end

function event_timer(e)
	e.self:Say(eq.ChooseRandom("unngh!!.. Biggle and boo.. Goggle froo..","ahhhh!!.. Tiggle bumble coo.. Bog n' Goo.."));
end

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Aaaarghhh!!.. Buggl n gump.. Figgle and fump..");
	elseif(e.message:findi("ariska") or e.message:findi("zimel")) then
		e.self:Emote("stares deeply into your eyes.. Very eerie!!");
	elseif(e.message:findi("soulfire")) then
		e.self:Say("nnnnn...  Gickle... Grunk... Shoo...  Bog n' Goo!  Freezing! Thirst!  Hunger too!");	
	end
end

function event_trade(e)
	local item_lib = require("items");
	local text = "Bog n Goo.. Blanket too!!"

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 12196,item2 = 16581,item3 = 13498},1,text)) then -- Bunker Cell, Bog Juice, Edible Goo
		e.self:Say("Hide, hide, safe, cee.. lerk has the clue.. Must travel.. Travel.. Travel.. Tunaria's corridor..");
		e.other:Faction(e.self,229,1); -- Faction: Coalition of Tradefolk
		e.other:Faction(e.self,281,1); -- Faction: Knights of Truth
		e.other:Faction(e.self,291,1); -- Faction: Merchants of Qeynos
		e.other:Faction(e.self,336,1); -- Faction: Coalition of Tradefolk Underground
		e.other:QuestReward(e.self,0,0,0,0,12143); -- H. K. 102
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

--END of FILE Zone:freportw -- a_prisoner
