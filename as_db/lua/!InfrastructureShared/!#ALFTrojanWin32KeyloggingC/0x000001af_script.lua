-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32KeyloggingC\0x000001af_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0)
    if (string.find)(l_0_1, "\\appdata\\", 1, true) ~= nil or (string.find)(l_0_1, "\\programdata\\", 1, true) ~= nil or (string.find)(l_0_1, "\\progra~1\\", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

