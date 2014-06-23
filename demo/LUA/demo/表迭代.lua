
a = {1,2,3,4,{"312","3123","3123",{"asd","dasasd","fd223"}}}

function tarvilTable(ta)
	for k,v in pairs(ta) do
		if(type(v) == 'table') then
			tarvilTable(v)
		else
			print(k.."-->"..v)
		end
	end
end

tarvilTable(a)