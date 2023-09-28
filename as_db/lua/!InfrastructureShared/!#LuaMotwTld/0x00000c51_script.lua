-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaMotwTld\0x00000c51_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetMOTWHostUrl)()
do
  if l_0_0 ~= nil then
    local l_0_1 = l_0_0:match("https?://.-%.(%a+)/")
    if l_0_1 then
      (mp.set_mpattribute)("Lua:MotwTld_" .. l_0_1)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

