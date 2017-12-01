--[[
Explosive Gaming

This file can be used with permission but this and the credit below must remain in the file.
Contact a member of management on our discord to seek permission to use our code.
Any changes that you may make to the code are yours but that does not make the script yours.
Discord: https://discord.gg/r6dC2uK
]]

--[[
StdLib

This file allow you to only require this one file to return the diffent libarys.
This file will return a function which can be used to access only the part you want.
Pass a table with the names of the objects you want and it will be return in that order
]]

local ExpCore = {}

require '/commands'
ExpCore.Ranking = require '/ranking'
require '/ranks'
ExpCore.Server = require '/server'
ExpCore.Gui = require '/gui'
require '/GuiParts/inputs'
require '/GuiParts/toolbar'
require '/GuiParts/center'
require '/GuiParts/left'
require '/GuiParts/popup'

return function(rtn)
    local to_return = {}
    for _,name  in pairs(rtn) do
        if ExpCore[name] then
            table.insert(to_return,StdExpCoreLib[name])
        end
    end
    return unpack(to_return)
end