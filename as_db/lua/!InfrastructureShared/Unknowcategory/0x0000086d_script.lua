-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000086d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  if (l_0_1:find("\\java.exe") or l_0_1:find("\\javaw.exe")) and (l_0_1:find("manageengine", 1, true) or l_0_1:find("servicedesk", 1, true)) then
    local l_0_2 = (mp.GetScannedPPID)()
    if l_0_2 == "" or l_0_2 == nil then
      return mp.CLEAN
    end
    local l_0_3 = (mp.GetProcessCommandLine)(l_0_2)
    if l_0_3 == nil then
      return mp.CLEAN
    end
    l_0_3 = (string.lower)(l_0_3)
    if (string.find)(l_0_3, "cmd.exe /c", 1, true) then
      return mp.CLEAN
    end
    if (string.find)(l_0_3, "powershell.exe", 1, true) or (string.find)(l_0_3, "powershell_ise.exe", 1, true) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

