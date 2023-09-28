-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFBackdoorWin32SharePointReflectiveAssemblyA\0x00000468_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattributesubstring)("Lua:PeOriginalName!xoml.") or (mp.get_mpattributesubstring)("Lua:PeFSFileName!xoml.") or (mp.get_mpattributesubstring)("Lua:PeOriginalName!expression_host_") or (mp.get_mpattributesubstring)("Lua:PeFSFileName!expression_host_") then
  return mp.CLEAN
end
local l_0_0 = (mp.enum_mpattributesubstring)("Lua:PeOriginalName!")
if l_0_0 == nil then
  return mp.CLEAN
end
if #l_0_0 == 0 then
  return mp.CLEAN
end
local l_0_1, l_0_2 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
if not l_0_1 or not l_0_2 then
  return mp.CLEAN
end
for l_0_6,l_0_7 in ipairs(l_0_0) do
  if #l_0_7 == 31 and (mp.get_mpattribute)("LUA:PeFileVersion!0.0.0.0") then
    return mp.CLEAN
  else
    if #l_0_7 == 39 and (string.find)(l_0_7, "!app_web_", -21, true) ~= nil then
      return mp.CLEAN
    else
      TT_SendBMSigTrigger(l_0_2, "SuspSPModuleName", l_0_7)
    end
  end
end
return mp.INFECTED

