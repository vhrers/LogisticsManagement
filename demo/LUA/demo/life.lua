--[[
��ͨ��������������
]]--

a = 1
b = a
a = 2
print(a)
print(b)
--��� һ��������Ӱ����һ������




--[[
����ڴ�ռ�
һ�������ɺ� ����������Ǳ�ĵ�ַ
���ƺ� Ҳ�Ǹ��Ʊ�ĵ�ַ
����Ա�����nil �� �����������̱��ͷ�
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
�����ڴ�ռ�
]]--


Acount = {balance = 0}
function Acount.withdraw(v)
	Acount.balance = Acount.balance - v
end

Acount.withdraw(100.00)
a = Acount; Acount = nil --��ʱ������ڴ��Ѿ����ͷ�  ��Ϊ����ķ�������	Acount.balance = Acount.balance - v
a.withdraw(20)
print(Acount.balance)