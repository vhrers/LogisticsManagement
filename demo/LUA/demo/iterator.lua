--[[
demo1 return table's value
]]--

function list_iter(t)
	local i = 0;
	local n = table.getn(t)	
	return function ()
		i = i + 1
		if i < n then return t[i] end
	end
end


myTable = {1,2,3,5,6}
--getTableValue = list_iter(myTable)

for element in list_iter(myTable) do
	print(element)
end

getTableValue = list_iter(myTable)
while true do
	local element = getTableValue()
	if element == nil then break end
	print(element)
end


--[[
demo2 遍历文件中符合的字符串
]]--

function allwords()
	local line = io.read() --get current line
	local pos = 1 --current position in the line
	
	return function ()
		while line do 
		local s, e = string.find(line,"%w+",pos)  --"%w+表示查找的是单词"
			if s then
				pos = e + 1
				return string.sub(line,s,e) 				
			else
				line = io.read()
				pos = 1
			end
		end
	return nil
	end	
end

for word in allwords() do
	print(word)
end