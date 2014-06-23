---[[test one]]
function create_a_counter()
    local count = 0
    return function()
        count = count + 1
        return count
    end
end

a = create_a_counter();
b = create_a_counter();

print(a());
print(a());

print(b());
print(b());


--[[test two]]
function f1(n)
   local function f2()
      print(n)
   end
   n = n + 10
   return f2
end


g1 = f1(1979)
g1() -- 打印出1989

--[[
不是应该出输出1979吗？
其实我们是执行完f1才得到了f2，并且把它负值给g1，并且由于g1的存在，因此参数的值(n)
的值也被保存了]]--



--test Three
--数据共享
function Create(n)
   local function foo1()
      print(n)
   end
   local function foo2()
      n = n + 10
   end
   return foo1,foo2
end

f1,f2 = Create(1979)
f1() -- 打印1979

f2()
f1() -- 打印1989

f2()
f1() -- 打印1999

