-- textUpl
-- A Roblox module for uploading and retrieving text from text hosting services
-- by theLMGN
-- https://github.com/thelmgn/textupl


local module = {}

local hS = game.HttpService


-- Hastebin

local haste = {}

haste.save = function(text)
	local response = hS:PostAsync("https://hastebin.com/documents",tostring(text))
	local j = hS:JSONDecode(response)
	return j["key"]
end

haste.get = function(key)
	local response = hS:GetAsync("https://hastebin.com/documents/" .. hS:UrlEncode(key))
	local j = hS:JSONDecode(response)
	return j["data"]
end

module.haste = function()
	return haste
end

-- /Hastebin


return module
