



a = { 0,2,10,3,4}
b = {"a","b","c","d"}
c = { b=a }

for k,v in pairs(c) do
	for k1,v1 in pairs(v)	do
		print(k1 .. "->" .. v1)
	end
end



