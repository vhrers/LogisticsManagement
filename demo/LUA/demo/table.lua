--table



--[[
a = {}
b = {x=1, ["hello,"]="world!"}
print(b["x"])
a.astring = "ni,hao!"
a[1] = 100;
a["a table"] = b;

function foo()
end

function bar()
end
a[foo] = bar
print "----------------------------------------------------";
--枚举a 和 b
--输出key -> value 的对应关系
for k, v in pairs(a) do
	print(k ,"=>",v)
end	
print "----------------------------------------------------";
for k , v in ipairs(b) do
	print(k ,"=>",v)
end
]]--

bb = {a = 1,b = 4,c ={1,2,3,5,6}}
a = bb["c"];
a = {0,0,0,0,0,0};
for k, v in pairs(bb) do
	if type(v) == 'table' then
		for k1,v1 in ipairs(v) do
			print(k1.."->".. v1)
		end
	end
end