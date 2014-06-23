package.path = 'D:/test/?.lua;'    --搜索lua模块
local require = require
local print = print
local ipairs = ipairs
local pairs = pairs
local type = type
local _LOADED =_LOADED
local package = package
module "a"

function left()
	return "abc"
end

local dc = require("b")
print("dc -------->",dc)
print("package.loaded ---------->",package.loaded["b"])
package.loaded["b"] = nil
dc = require("b")
print("dc -------->",dc)
print("dc.a -------->",dc.a)
print("dc.b -------->",dc.b)
