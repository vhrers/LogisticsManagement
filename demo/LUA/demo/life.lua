--[[
普通变量的生命周期
]]--

a = 1
b = a
a = 2
print(a)
print(b)
--深拷贝 一个变量不影响另一个变量




--[[
表的内存空间
一个表生成后 变量保存的是表的地址
复制后 也是复制表的地址
如果对变量置nil 后， 不代表表会立刻被释放
]]--

ta = {1,2,3,4}
tb = ta

for k,v in ipairs(ta) do
	print(k.."->"..v)
end

print"!___________________________________!"

for k,v in ipairs(tb) do
	print(k.."->"..v)
end

print(ta)
print(tb)


print("***************************************************")
ta = nil



print"!___________________________________!"

for k,v in ipairs(tb) do
	print(k.."->"..v)
end

print(ta)
print(tb)


--[[
对象内存空间
]]--


Acount = {balance = 0}
function Acount.withdraw(v)
	Acount.balance = Acount.balance - v
end

Acount.withdraw(100.00)
a = Acount; Acount = nil --此时对象的内存已经被释放  因为对象的方法中有	Acount.balance = Acount.balance - v
a.withdraw(20)
print(Acount.balance)