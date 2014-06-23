
module "liba"

liba = {}

function liba.version()
    print("1.0.3")
end

function liba.api(data)
    print(data)
end

function liba.call(d)
    libb.echo(d)
end

function liba.a(d)
    return libb.ec(d .. " 1.0.4")
end

return liba
