-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFBackdoorWin32SQLReflectiveAssemblyA!SuspAssembly\0x00000fc7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.enum_mpattributesubstring)("SLF:Backdoor:MSIL/SuspSQLAssembly.")
if l_0_0 == nil or #l_0_0 == 0 then
  return mp.CLEAN
end
local l_0_1 = (mp.enum_mpattributesubstring)("Lua:PeOriginalName!")
if l_0_1 == nil or #l_0_1 == 0 then
  return mp.CLEAN
end
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_2 == "sqlservr.exe" then
  local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  if l_0_3 ~= nil then
    for l_0_7,l_0_8 in ipairs(l_0_1) do
      TT_SendBMSigTrigger(l_0_3, "SuspSQLModuleName", l_0_8)
    end
  end
  do
    do
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

