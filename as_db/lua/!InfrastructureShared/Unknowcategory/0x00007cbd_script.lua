-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007cbd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0.image_path)
    if (string.find)(l_0_1, "\\windows\\system32\\", 1, true) and (l_0_1:match("([^\\]+)$") == "fodhelper.exe" or l_0_1:match("([^\\]+)$") == "runtimebroker.exe" or l_0_1:match("([^\\]+)$") == "svchost.exe" or l_0_1:match("([^\\]+)$") == "mousocoreworker.exe" or l_0_1:match("([^\\]+)$") == "dllhost.exe" or l_0_1:match("([^\\]+)$") == "computerdefaults.exe") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

