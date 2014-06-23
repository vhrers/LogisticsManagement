--[[
Ԫ�� �����뿴��ʮ����
metatable Ӧ����һ��ָ��������ָ�룬���������������ʱ ����metatable����û��__add����
]]--



--Ĭ�ϵı��в���metatable
t = {};
print(getmetatable(t))


--����һ�����metatableֵ
t1 = {}
setmetatable(t,t1)
assert(getmetatable(t) == t1)

--��ϵ����
--[[
Set ��һ����
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


--֤��������metatableһ��
s1 = Set.new{10,20,30,50}
s2 = Set.new{30,1}
print(getmetatable(s1))
print(getmetatable(s2))

--ָ��+����
Set.mt.__add = Set.union
s3 = s1 + s2 

Set.print(s3)


print"!_*******************************************************************************_!"
--[[

]]--



--print�Զ�����tostring����
print({})
Set.mt.__tostring = Set.toString
s1 = Set.new{10,4,1}
print(s1)


--[[
����metatable
]]--
Set.mt.__metatable = 'not your bussiness'
s1 = Set.new{1,3,5,7}
print(getmetatable(s1))
--setmetatable(s1,{})


print"!_*******************************************************************************_!"
--[[
����ص�metatable
]]--
print(getmetatable{})
