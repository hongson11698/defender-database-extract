-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPSCmstpAmsiA\0x00008092_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_AMSI then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetParentProcInfo)(l_0_0)
if l_0_1 ~= nil then
  local l_0_2 = (string.lower)(l_0_1.image_path)
  local l_0_3 = (string.lower)((mp.GetProcessCommandLine)(l_0_1.ppid))
  if l_0_2 and l_0_3 and (string.find)(l_0_2, "\\system32\\dllhost.exe", 1, true) and (string.find)(l_0_3, "{3e5fc7f9-9a51-4367-9063-a120244fbec7}", 1, true) then
    return mp.INFECTED
  end
  local l_0_4 = (mp.GetParentProcInfo)(l_0_1.ppid)
  if l_0_4 ~= nil then
    local l_0_5 = (string.lower)(l_0_4.image_path)
    local l_0_6 = (string.lower)((mp.GetProcessCommandLine)(l_0_4.ppid))
    if l_0_5 and l_0_6 and (string.find)(l_0_5, "\\system32\\dllhost.exe", 1, true) and (string.find)(l_0_6, "{3e5fc7f9-9a51-4367-9063-a120244fbec7}", 1, true) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

