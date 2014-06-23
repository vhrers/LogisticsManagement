--[[
如何更好的定义一个对象
详情看simple_Object
]]--

--方法1 
--不好 原因：在函数内部使用全局变量
--2是类方法 并非真正的对象方法 因为对象方法依赖Acount.balance = Acount.balance - v
--3这种方法违背了对象应该有独立的内存空间 

Acount = {balance = 0}
function Acount.withdraw(v)
	Acount.balance = Acount.balance - v
end

Acount.withdraw(100.00)
a = Acount--; Acount = nil
a.withdraw(20)
print(Acount.balance)


--方法2
--问题 虽然可以使用自己的变量调用类 但是因为无法解决对象独立内存空间的问题
Bcount = {balance = 0}
function Bcount.withdraw(self,v)
	self.balance = self.balance - v
end

b = Bcount
c = Bcount
Bcount = nil
b.withdraw(b,100)
print(b.balance)
print(c.balance)



--方法3
--OK
C = {balance = 0}
function C:new (o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end

function C:set(v)
	self.balance = self.balance + v
end

a = C:new({balance = 0})
a:set(20)
print(a.balance)

b = C:new({balance = 0})
b:set(210)
print(b.balance)