--[[
Lua中的继承机制
原理请看 97页的 13.4
]]---

Window = {}
Window.prototype = {x = 0, y = 0, width = 100, height = 100}
Window.mt = {}

function Window.new(o)
		setmetatable(o,Window.mt)
		return o
end

Window.mt.__index = function(table,key)
	return Window.prototype[key]
end

w = Window.new{x=21,y=2}
print(w.width)
print(w.z)
