function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Why. hello there " .. e.other:GetCleanName() .. " ! We are most excited indeed to see so many scholars from Norrath gathering within our city walls. It is so rare in this time of turmoil that so many beings of diverse and even opposing cultures and philosophies may come together without fear or hate of one another. Aaah. the bliss of balance -- and what an irony it is that all my life I strove for it upon the primal world and it is within the cosmos that I find it. I ramble. forgive me. friend. If you are a druid yourself and seek guidance in the ways of furthering your abilities as a warden of nature. then perhaps my inventory might hold something of use to you. Go on. then. and search as you will. Do not hesitate to purchase anything that catches your eye.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
