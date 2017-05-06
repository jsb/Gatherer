-- String related routines
--

function Gatherer_split(str, sep)
	-- type: (Text, Text) -> List[Text]
	-- This *wonderful* language has no split function.
	-- And this *wonderful* lua implementation has neither match nor gmatch.
	local sep, fields = sep or ",", {}
	local pattern = string.format("([^%s]+)", sep)
	gsub(str, pattern, function(c) tinsert(fields, c) end)
	return fields
end


function Gatherer_table_to_string(table)
	-- type: (dict) -> Text
	local result_str = ''
	if not table then
		return result_str
	end
	for k, v in table do
		result_str = result_str..tostring(k)..': '..tostring(v)..', '
	end
	return result_str
end


local function hexColor(color)
	-- type: (Color) -> HexColor
	local hexColor = {};
	for _, component in color do
		tinsert(hexColor, format('%x', component))
	end
	return table.concat(hexColor)
end


function Gatherer_coloredText(str, color)
	return '|cff'..hexColor(color)..str..'|r'
end