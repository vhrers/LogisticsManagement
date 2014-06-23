--[[
元表 详情请看第十三章
metatable 应该是一个指向表操作的指针，如遇到两个表相加时 会检测metatable中有没有__add函数
]]--



--默认的表中不带metatable
t = {};
print(getmetatable(t))


--设置一个表的metatable值
t1 = {}
setmetatable(t,t1)
assert(getmetatable(t) == t1)

--关系运算
--[[
Set 是一个类
]]--
Set = {}
Set.mt = {}

function Set.new(t)
	local set = {}
	setmetatable(set,Set.mt)
	for _,l in pairs(t) do
		set[l] = true
	end
	return set
end

function Set.union(a,b)
	local res = Set.new{}
	for k in pairs(a) do
		res[k] = true	
	end
	for k in pairs(b) do
		res[k] = true
	end
	return res
end

function Set.intersection(a,b)
	local res = Set.new{}
	for k in pairs(a) do
		res[k] = b[k]
	end
	return res
end

function Set.toString(set)
	local s = "{"
	local sep = " "
	for e in pairs(set) do
		s = s .. sep .. e
	end
	return s .. "}"
end

function Set.print(s)
	print(Set.toString(s))
end


--证明两个的metatable一样
s1 = Set.new{10,20,30,50}
s2 = Set.new{30,1}
print(getmetatable(s1))
print(getmetatable(s2))

--指定+操作
Set.mt.__add = Set.union
s3 = s1 + s2 

Set.print(s3)


print"!_*******************************************************************************_!"
--[[

]]--



--print自动调用tostring函数
print({})
Set.mt.__tostring = Set.toString
s1 = Set.new{10,4,1}
print(s1)


--[[
保护metatable
]]--
Set.mt.__metatable = 'not your bussiness'
s1 = Set.new{1,3,5,7}
print(getmetatable(s1))
--setmetatable(s1,{})


print"!_*******************************************************************************_!"
--[[
表相关的metatable
]]--
print(getmetatable{})
