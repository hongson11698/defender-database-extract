-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPsCommandlineContext\0x00000e90_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_AMSI then
    local l_0_1, l_0_2 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME)
    if l_0_1 ~= nil and l_0_2 ~= nil then
      l_0_2 = (string.lower)(l_0_2)
      if (l_0_2:find("\\powershell.exe") or l_0_2:find("\\pwsh.exe")) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME) ~= nil and mp.get_contextdata == nil then
        return mp.INFECTED
      end
    end
  end
  return mp.CLEAN
end

