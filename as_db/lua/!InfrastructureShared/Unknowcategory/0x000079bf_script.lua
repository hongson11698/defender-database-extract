-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000079bf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = (string.lower)((mp.GetProcessCommandLine)(l_0_0.ppid))
  if l_0_1 and l_0_2 and (string.find)(l_0_1, "\\system32\\dllhost.exe", 1, true) and (string.find)(l_0_2, "{3e5fc7f9-9a51-4367-9063-a120244fbec7}", 1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

