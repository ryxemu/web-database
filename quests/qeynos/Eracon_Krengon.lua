function event_trade(e)
	local item_lib =require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 12620})) then
		e.self:Say("Tis good that Jinkus sent you with this poster. There has been talk of a Northman fugitive in the city. Take this list back to Jinkus so that our brethren in Halas are aware of the many criminals who have fled Qeynos and are still at large.");
		e.other:QuestReward(e.self,0,0,0,0,12622,500); -- Item: List of Qeynos Most Wanted
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
