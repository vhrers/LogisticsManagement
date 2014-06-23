--四种table遍历的方式
--解释请看http://rangercyh.blog.51cto.com/1444712/1032925



--[[
1、for k,v in pairs(tbtest) do
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
输出顺序是由key 的hash值决定的
]]--
print"!__________________________________________________________________!"


--[[
2、for k,v in ipairs(tbtest) do
	end
这样的循环必须要求tbtest中的key为顺序的，而且必须是从1开始，
ipairs只会从1开始按连续的key顺序遍历到key不连续为止。
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
3、# 获取变量的长度（字符串和表）
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
4、table.maxn获取的只针对整数的key，
字符串的key是没办法获取到的，比如：
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
效率问题 
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

--构建表中标 值为a ，仅此而已
a = { 0,2,10,3,4}
b = {"a","b","c","d"}
c = { b=a }

function add(a,b)
	table.insert(a,b)
end
--函数操作会更改a的值
add(a,2)
for k,v in pairs(c) do
	for k1,v1 in pairs(v)	do
		print(k1 .. "->" .. v1)
	end
end



