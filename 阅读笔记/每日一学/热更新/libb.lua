
module "libb"
libb = {}

function libb.echo(d)
    print(d)
    print("xx" .. d .. "yy")
end

f = libb.echo("yes")

function libb.ec(d)

    local function he()
        print(d)
        print("OK")
    end
    return he
end

return libb