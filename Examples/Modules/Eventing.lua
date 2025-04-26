client.registerModule("Eventing", "A simple script showcasing Nuvolas powerful eventing")

event.on("KeyInput", function(e)
    -- Ignore key releases (won't print twice)
    if e:isReleased() then return end

    local code = e:getKeyCode()
    local name = e:getKeyName()
    print("Key pressed:", name, "(code:", code .. ")")

    if name:find("z") then
        e:cancel()
        print("Pressing 'z' is not allowed!")
    end

    if e:isCancelled() then
        print("The key event was cancelled by a script or module.")
        return
    end

    if name:find("j") then
        local x = math.random(0, 100)
        local y = math.random(50, 100)
        local z = math.random(0, 100)

        player.setPosition(x, y, z)
        print("Woosh!")
    end
end)