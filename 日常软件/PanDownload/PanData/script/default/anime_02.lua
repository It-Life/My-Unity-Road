local curl = require "lcurl.safe"
local json = require "cjson.safe"

script_info = {
	["title"] = "AGE动漫",
	["description"] = "http://donghua.agefans.com/",
	["version"] = "0.0.3",
}

function onInitAnime()
	local data = ""
	local c = curl.easy{
		url = "http://donghua.agefans.com/new_anime_all",
		followlocation = 1,
		timeout = 15,
		proxy = pd.getProxy(),
		writefunction = function(buffer)
			data = data .. buffer
			return #buffer
		end,
	}
	c:perform()
	c:close()
	return parse(data)
end

function onItemClick(item)
	return ACT_SHARELINK, item.url
end

function parse(data)
	local anime_week = {}
	local week = {"星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"}
	local j = json.decode(data)
	if j == nil then
		return anime_week
	end
	local count = 0
	for i, day in ipairs(j) do 
		if type(day) == "table" then
			count = count + 1
			local anime_day = {["title"] = week[count]}
			for a, item in ipairs(day) do 
				local anime_item = {}
				anime_item["url"] = item["url"]
				anime_item["name"] = item["name"]
				anime_item["icon_size"] = "63,88"
				if type(anime_item.url) == "string" and #anime_item.url > 0 then
					anime_item["image"] = "http://donghua.agefans.com/poster/" .. item["id"] .. ".jpg"
					table.insert(anime_day, anime_item)
				end
			end
			table.insert(anime_week, anime_day)
		end
	end
	return anime_week
end