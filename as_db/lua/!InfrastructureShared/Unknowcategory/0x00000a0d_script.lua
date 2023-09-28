-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000a0d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  if (string.find)(l_0_1, "\\windows\\system32\\", 1, true) then
    local l_0_2 = l_0_1:match("([^\\]+)$")
    if l_0_2 == "fodhelper.exe" or l_0_2 == "computerdefaults.exe" or l_0_2 == "wsreset.exe" or l_0_2 == "changepk.exe" or l_0_2 == "control.exe" then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

