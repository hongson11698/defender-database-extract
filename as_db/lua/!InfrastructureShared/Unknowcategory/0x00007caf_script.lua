-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007caf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = (string.lower)((mp.GetProcessCommandLine)(l_0_0.ppid))
  if l_0_1 and l_0_2 and (string.find)(l_0_1, "\\system32\\cmd.exe", 1, true) and (string.find)(l_0_2, " /v /c ", 1, true) and (string.find)(l_0_2, " & set ", 1, true) and (string.find)(l_0_2, "! & !", 1, true) and (string.find)(l_0_2, ":~", 1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

