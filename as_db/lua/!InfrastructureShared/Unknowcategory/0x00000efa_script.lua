-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000efa_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_AMSI then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_1:find("frtool.exe", 1, true) then
    return mp.INFECTED
  end
  local l_0_2, l_0_3 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
  if l_0_2 and l_0_3 ~= nil then
    local l_0_4 = (string.lower)(l_0_3)
    if (string.find)(l_0_4, "fr_forensic.run.ps1") or (string.find)(l_0_4, "installplazavcdriver-012121.ps1") then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

