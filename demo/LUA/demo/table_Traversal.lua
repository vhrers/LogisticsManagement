--����table�����ķ�ʽ
--�����뿴http://rangercyh.blog.51cto.com/1444712/1032925



--[[
1��for k,v in pairs(tbtest) do
end
]]--

tbtest = {[1] = 1,
		  [2] = 2,
		  [3] = 3,
		  [4] = 4,
		}
for key , value in pairs(tbtest)  do
	print(key,"=>",tbtest[key]	)
end
--[[
���˳������key ��hashֵ������
]]--
print"!__________________________________________________________________!"


--[[
2��for k,v in ipairs(tbtest) do
	end
������ѭ������Ҫ��tbtest�е�keyΪ˳��ģ����ұ����Ǵ�1��ʼ��
ipairsֻ���1��ʼ��������key˳�������key������Ϊֹ��
]]--

tbtest = {[1] = 1,
		  [2] = 2,
		  [3] = 3,
		  [5] = 5,
		 }		
		
for key , value in ipairs(tbtest)  do
	print(key,"=>",value	)
end	
print"!**********************************************************************!"

tbtest = {
		  [2] = 2,
		  [3] = 3,
		  [5] = 5,
		 }		
		
for key , value in ipairs(tbtest)  do
	print(key,"=>",value	)
end	

print"!__________________________________________________________________!"


--[[
3��# ��ȡ�����ĳ��ȣ��ַ����ͱ�
]]--

tbtest = {[1] = 1,
		  [2] = 2,
		  [3] = 3,		
		 }
print(#tbtest)

tbtest = {[1] = 1,
		  [2] = 2,
		  [6] = 3,		
	 }
print(#tbtest)

tbtest = {["a"] = 1,
		  [2] = 2,
		  [6] = 3,		
	 }
print(#tbtest)


print"!______________________#################################____________________________________________!"
--[[
4��table.maxn��ȡ��ֻ���������key��
�ַ�����key��û�취��ȡ���ģ����磺
]]--

tbtest = {  
    [1] = 1,  
    [2] = 2,  
    [3] = 3,  
}  
print(table.maxn(tbtest)) 

tbtest = {  
    [6] = 6,  
    [1] = 1,  
    [2] = 2,  
}  
print(table.maxn(tbtest)) 

tbtest = {  
    ["a"] = 1,  
    [2] = 2,  
    [3] = 3,  
}  
print(table.maxn(tbtest)) 

tbtest = {  
    ["a"] = 1,  
    ["b"] = 2,  
    ["c"] = 3,  
}  
print(table.maxn(tbtest))  
print(#(tbtest))

print"!__________________________________________________________________!"
--[[
Ч������ 
]]--

tbtest = {  
    [1] = 1,  
    [100] = 2,  
}  
local count = 0  
for i=1, table.maxn(tbtest) do  
    count = count + 1  
    print(tbtest[i])  
end  
print(count) 



print "!---------------------------------------------------------------------"

--�������б� ֵΪa �����˶���
a = { 0,2,10,3,4}
b = {"a","b","c","d"}
c = { b=a }

function add(a,b)
	table.insert(a,b)
end
--�������������a��ֵ
add(a,2)
for k,v in pairs(c) do
	for k1,v1 in pairs(v)	do
		print(k1 .. "->" .. v1)
	end
end



