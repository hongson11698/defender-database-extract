-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000010b7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  if (string.len)(l_0_2) == 15 and (string.sub)(l_0_2, -4) == ".exe" and ((string.sub)(l_0_1, -19) == "\\appdata\\local\\temp" or (string.sub)(l_0_1, -20) == "\\local settings\\temp") then
    if (string.match)(l_0_2, "%l%l%l%l%l%l%l%l%l%l%l") == nil and (string.match)(l_0_2, "%u%u%u%u%u%u%u%u%u%u%u") == nil then
      return mp.CLEAN
    end
    local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if l_0_3 == "excel.exe" or l_0_3 == "winword.exe" then
      (mp.set_mpattribute)("Lua:AdnelProcessFilename.A")
    else
      ;
      (mp.set_mpattribute)("Lua:AdnelFilename.A")
    end
  end
end
do
  return mp.CLEAN
end

