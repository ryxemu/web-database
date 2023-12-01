function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 8467})) then
		e.self:Say("Thank you for delivering this. While I have you here, perhaps you can help. We are in dire need of assistance in the moor. All of the reports from our Taruun are indicating the same thing. The area has to be swept clear of the factions that currently inhabit it. The land itself seems defendable, we need someone to gather some soldiers and clear the area.");
		e.self:Say("If you accomplish this mission for us, I will be able to reward you for your actions in this leadership role. You will need only to return this box to me to collect your reward and promotion. It will need to contain a grimling chieftain staff, an owlbear guardian talon, a sonic wolf guardian fang, and your Journeyman's Cloak. Good luck to you, should you elect to accept this challenge.");
		e.other:QuestReward(e.self,0,0,0,0,17133,10000);
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 8475})) then
		e.self:Say("You have proven to be a great leader and excellent soldier. Please accept this cloak as a symbol of your accomplishment. We would be proud to have you as a member of our ranks. You can choose to stay within the ranks of your sect or you can work with us was a member of the Shar Vahl Garrison. If you wish to continue your work as a member of the garrison, please take this form, sign it in triplicate and give it to Captain Darznel. Either way, please stand still, while I offer you our formal salutation.");
		e.self:Shout("Ahem... Citizens of Shar Vahl, Attention! It is my duty and honor as commander of the Shar Vahl Garrison to thank " .. e.other:GetCleanName() .. " for their fine work. Give 'em your complete respect and salute 'em when you see them in passing. We enjoy our freedom, because of brave citizens like " .. e.other:GetCleanName() .. ". Thank you for your time... Carry on!");
		e.other:QuestReward(e.self,{items = {8412,8471}}); -- Item: Dar Khura Garrison Cloak
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 8488})) then
		e.self:Say("You have proven to be a great leader and excellent soldier. Please accept this cloak as a symbol of your accomplishment. We would be proud to have you as a member of our ranks. You can choose to stay within the ranks of your sect or you can work with us was a member of the Shar Vahl Garrison. If you wish to continue your work as a member of the garrison, please take this form, sign it in triplicate and give it to Captain Darznel. Either way, please stand still, while I offer you our formal salutation.");
		e.self:Shout("Ahem... Citizens of Shar Vahl, Attention! It is my duty and honor as commander of the Shar Vahl Garrison to thank " .. e.other:GetCleanName() .. " for their fine work. Give 'em your complete respect and salute 'em when you see them in passing. We enjoy our freedom, because of brave citizens like " .. e.other:GetCleanName() .. ". Thank you for your time... Carry on!");
		e.other:QuestReward(e.self,{items = {8409,8471}}); -- Item: Jharin Garrison Cloak
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 8489})) then
		e.self:Say("You have proven to be a great leader and excellent soldier. Please accept this cloak as a symbol of your accomplishment. We would be proud to have you as a member of our ranks. You can choose to stay within the ranks of your sect or you can work with us was a member of the Shar Vahl Garrison. If you wish to continue your work as a member of the garrison, please take this form, sign it in triplicate and give it to Captain Darznel. Either way, please stand still, while I offer you our formal salutation.");
		e.self:Shout("Ahem... Citizens of Shar Vahl, Attention! It is my duty and honor as commander of the Shar Vahl Garrison to thank " .. e.other:GetCleanName() .. " for their fine work. Give 'em your complete respect and salute 'em when you see them in passing. We enjoy our freedom, because of brave citizens like " .. e.other:GetCleanName() .. ". Thank you for your time... Carry on!");
		e.other:QuestReward(e.self,{items = {8413,8471}}); -- Item: Taruun Garrison Cloak
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 8490})) then
		e.self:Say("You have proven to be a great leader and excellent soldier. Please accept this cloak as a symbol of your accomplishment. We would be proud to have you as a member of our ranks. You can choose to stay within the ranks of your sect or you can work with us was a member of the Shar Vahl Garrison. If you wish to continue your work as a member of the garrison, please take this form, sign it in triplicate and give it to Captain Darznel. Either way, please stand still, while I offer you our formal salutation.");
		e.self:Shout("Ahem... Citizens of Shar Vahl, Attention! It is my duty and honor as commander of the Shar Vahl Garrison to thank " .. e.other:GetCleanName() .. " for their fine work. Give 'em your complete respect and salute 'em when you see them in passing. We enjoy our freedom, because of brave citizens like " .. e.other:GetCleanName() .. ". Thank you for your time... Carry on!");
		e.other:QuestReward(e.self,{items = {8411,8471}}); -- Item: Khala Dun Garrison Cloak
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 8491})) then
		e.self:Say("You have proven to be a great leader and excellent soldier. Please accept this cloak as a symbol of your accomplishment. We would be proud to have you as a member of our ranks. You can choose to stay within the ranks of your sect or you can work with us was a member of the Shar Vahl Garrison. If you wish to continue your work as a member of the garrison, please take this form, sign it in triplicate and give it to Captain Darznel. Either way, please stand still, while I offer you our formal salutation.");
		e.self:Shout("Ahem... Citizens of Shar Vahl, Attention! It is my duty and honor as commander of the Shar Vahl Garrison to thank " .. e.other:GetCleanName() .. " for their fine work. Give 'em your complete respect and salute 'em when you see them in passing. We enjoy our freedom, because of brave citizens like " .. e.other:GetCleanName() .. ". Thank you for your time... Carry on!");
		e.other:QuestReward(e.self,{items = {8410,8471}}); -- Item: Khati Sha Garrison Cloak
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
