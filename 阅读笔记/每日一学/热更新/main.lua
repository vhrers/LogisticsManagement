package.path = 'E:/lyn/阅读笔记/每日一学/热更新/?.lua;'

local require = require
require "liba"
require "libb"
print("M> ")

--控制输出
while true do
    line = io.read()
    if line == "q" then
        break
    elseif line == "a" then
        f = liba.a("YES")
    elseif line == "b" then
        f()
        liba.a("NO")()
    elseif line == "reload a" then
        package.loaded["liba"] = nil
        require "liba"
    elseif line == "reload b" then
        package.loaded["libb"] = nil
        require "libb"
    elseif line == "v" then
        liba.version()
    elseif line == "c" then
        liba.call("&&")
    elseif line == "api" then
        liba.api("nono")
    end
end