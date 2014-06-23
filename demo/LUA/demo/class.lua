--[[
��θ��õĶ���һ������
���鿴simple_Object
]]--

--����1 
--���� ԭ���ں����ڲ�ʹ��ȫ�ֱ���
--2���෽�� ���������Ķ��󷽷� ��Ϊ���󷽷�����Acount.balance = Acount.balance - v
--3���ַ���Υ���˶���Ӧ���ж������ڴ�ռ� 

Acount = {balance = 0}
function Acount.withdraw(v)
	Acount.balance = Acount.balance - v
end

Acount.withdraw(100.00)
a = Acount--; Acount = nil
a.withdraw(20)
print(Acount.balance)


--����2
--���� ��Ȼ����ʹ���Լ��ı��������� ������Ϊ�޷������������ڴ�ռ������
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



--����3
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