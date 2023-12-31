function event_say(e)
	if(e.message:findi("crate of pick head")) then
		e.self:Say("I've heard that a dwarf who calls himself Grendig and has not registered with the Coalition of Tradefolk has recently arrived in Freeport and is staying at the Freeport Inn just inside the South Gate. He has brought to Freeport pick heads from his home city of Kaladim. Find Grendig and 'convince' him to 'donate' a crate of pick heads to the Coalition of Tradefolk as tax for peddling his wares in our city.");
	elseif(e.message:findi("bundle of hardwood shaft")) then
		e.self:Say("There is a halfling named Jimble Woodentoe that occasionally visits Freeport to peddle his woodcrafts. He can be found traveling through the Commonlands from the direction of Rivervale. Find Jimble and 'convince' him to donate a bundle of hardwood shafts to the Coalition of Tradefolk as tax for peddling his wares in our city.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 19917})) then
		e.self:Say("Excellent I've been waiting for the Coalition to send me some assistance. I have an associate waiting for some supplies that have not yet been collected. I need you to acquire a [crate of pick heads] and a [bundle of hardwood shafts] and bring them to me so that I may prepare them for delivery to my associate.");
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 19931,item2 = 19929})) then
		e.self:Say("Thanks " .. e.other:GetCleanName() .. ".  Now hand this crate to the fellow behind you.");
		e.other:QuestReward(e.self,0,0,0,0,19930); -- Item: Large Crate of Mining Supplies
		eq.spawn2(10000,0,0,-144,-456,-52,0); -- NPC: Orc_Centurion
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
