--[[
�򵥵Ķ���
]]--


function create(name, id)
	local obj = { name = name, id = id}
	
	function obj:setName(name)
		self.name = name
	end
	
	function obj:getName()
		return self.name;
	end
	
	function obj:setID(id)
		self.id = id
	end
	
	function obj:getID()
	   return self.id 
	end
	
	return obj;
end


object = create("Sam","001")
print("object's name is:", object:getName(),",and object's id is :", object:getID());
object:setName("jack");
object:setID("002");
print("object's name is:", object:getName(),",and object's id is :", object:getID());


--[[
:��. ���õ�����
��˵:����Ĭ�ϴ�����self�������߱�����c++��Thisָ��һ��
����.������Ҫ�ڲ������ֶ����this ָ��
]]--

girl = {money = 200}
function girl.goToMarket(girl ,someMoney)
	girl.money = girl.money - someMoney
end
girl.goToMarket(girl ,100)
print(girl.money)



boy = {money = 200}
function boy:goToMarket(someMoney)
	self.money = self.money - someMoney
end
boy:goToMarket(100)
print(boy.money)