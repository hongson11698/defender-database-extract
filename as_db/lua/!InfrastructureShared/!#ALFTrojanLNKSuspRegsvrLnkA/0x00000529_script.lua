-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanLNKSuspRegsvrLnkA\0x00000529_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 == nil or (string.find)(l_0_0:lower(), "\\start menu\\programs\\startup\\", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetLnkInfo)()
do
  if l_0_1 ~= nil and l_0_1.BasePath ~= nil and (string.find)((l_0_1.BasePath):lower(), "\\regsvr32.exe", 1, true) ~= nil and l_0_1.Arguments ~= nil then
    local l_0_2 = (l_0_1.Arguments):lower()
    if (string.find)(l_0_2, ".cpp", 1, true) == nil and (string.find)(l_0_2, ".ocx", 1, true) == nil and (string.find)(l_0_2, "redemption.dll", 1, true) == nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

