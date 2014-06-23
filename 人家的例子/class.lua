
-----------------------------------------------------------------
-- class.lua
-- Author     : bobo
-- Version    : 1.0
-- Date       : 2013.03.26
-- Description: base class
-----------------------------------------------------------------

local getmetatable = getmetatable;
local setmetatable = setmetatable;
local rawset = rawset;
local rawget = rawget;
local type = type;
local print = print;
local error = error;
local select = select;
local G = _G;

module "common.class";

local Class = {
	__index = function (self, key, base)
		local mt = getmetatable(self);
		--G.print("Class.__index", key);
		if (mt and mt ~= self)  then
			local tmp = mt[key];
			--[[
			if not tmp then
				--G.print("Class.__index, super", self.__super);
				if self.__super and self.__super ~= mt then
					local value = self.__super[key];
					if type(value) == 'function' then

					end
				end
			end
			]]
			return tmp;
		end
	end,

	__newindex = function (self, key, value)
		if key == '__className' then
			error("__className is read only!");
		end
		rawset(self, key, value);
	end,

	__call = function (self, ...)
		local obj = {};
		setmetatable(obj, self);
		if obj.initialize then
			obj:initialize(...);
		end
		return obj;
	end,
};

setmetatable(Class, Class);

local function __index(self, key, base)
	local _base = getmetatable(base);
	if _base then
		local value = rawget(_base, key);
		if value == nil then
			local __super = rawget(_base, '__super');
			if __super then
				value = rawget(__super, key);
				if value == nil then
					value = __super.__index(self, key, __super);
				end
				return value;
			end
			if _base.__super == Class then
				return nil;
			else
				value = _base.__index(self, key, _base);
			end
			--if value == nil then
			--	value = __index(self, key, base);
			--end
		end
		return value;
	end
end

---
-- 获取对象的类型

function G.instanceof(obj)
	local name = type(obj);
	if name == 'table' then
		local __super = getmetatable(obj);
		return __super or obj;
	end
	return obj;
end

---
-- 获取对象的类型

function G.typeof(obj)
	local name = type(obj);
	if name == 'table' then
		return obj.__className or name;
	end
	return name;
end

---
-- @name class
-- @param obj
-- @param name
-- @param base

return function (...)
	local count = select("#", ...);
	local obj = select(1, ...);
	local typeObj = type(obj);
	if typeObj == 'table' then
		local isWrite = select(2, ...);
		local key = select(3, ...);
		local value = select(4, ...);
		if isWrite then
			return rawset(obj, key, value);
		else
			local base = value or obj;
			return __index(obj, key, base);
		end
	else
		base = select(2, ...);
		name = obj;
		obj = {};
	end

	local typeName = type(name);

	if typeName == "string" then
	elseif typeName == "table" then
		base = name;
		name = 'class';
	end

	local super = base or Class;
	if super then
		if obj.__index == nil then
			obj.__index = super.__index;
		end
		if obj.__newindex == nil then
			obj.__newindex = super.__newindex;
		end
		if obj.__call == nil then
			obj.__call = super.__call;
		end
	end
	obj.__super = super;
	obj.__className = name;

	function obj:create(...)
		local _obj = {};
		setmetatable(_obj, obj);
		
		if _obj.initialize then
			_obj:initialize(...);
		end
		
		return _obj;
	end

	--print(obj, super, Class);
	setmetatable(obj, super);
	return obj;
end
