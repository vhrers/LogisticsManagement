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
g1() -- ��ӡ��1989

--[[
����Ӧ�ó����1979��
��ʵ������ִ����f1�ŵõ���f2�����Ұ�����ֵ��g1����������g1�Ĵ��ڣ���˲�����ֵ(n)
��ֵҲ��������]]--



--test Three
--���ݹ���
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
f1() -- ��ӡ1979

f2()
f1() -- ��ӡ1989

f2()
f1() -- ��ӡ1999

