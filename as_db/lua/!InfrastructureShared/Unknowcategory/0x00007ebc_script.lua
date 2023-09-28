-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ebc_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.gsub)((string.lower)(l_0_1), "%^", "")
if (string.find)(l_0_1, "win32_shadowcopy).delete() && cmd /c echo %", 1, true) or (string.find)(l_0_1, "-enablecontrolledfolderaccess 0 && cmd /c echo %", 1, true) then
  local l_0_2 = (mp.GetParentProcInfo)()
  if l_0_2 ~= nil then
    local l_0_3 = (string.lower)(l_0_2.image_path)
    if (string.find)(l_0_3, "\\windows\\system32\\", 1, true) and l_0_3:match("([^\\]+)$") == "dllhost.exe" then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

