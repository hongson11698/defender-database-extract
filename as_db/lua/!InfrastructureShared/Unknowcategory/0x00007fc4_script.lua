-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007fc4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  if (string.find)(l_0_1, "\\windows\\system32\\", 1, true) and (l_0_1:match("([^\\]+)$") == "fodhelper.exe" or l_0_1:match("([^\\]+)$") == "computerdefaults.exe" or l_0_1:match("([^\\]+)$") == "wsreset.exe" or l_0_1:match("([^\\]+)$") == "changepk.exe" or l_0_1:match("([^\\]+)$") == "slui.exe" or l_0_1:match("([^\\]+)$") == "control.exe") and (MpCommon.GetPersistContextCountNoPath)("UACBypassRegSet.A") > 0 then
    local l_0_2 = (MpCommon.GetPersistContextNoPath)("UACBypassRegSet.A")
    if l_0_2 then
      for l_0_6,l_0_7 in ipairs(l_0_2) do
        if (string.lower)(l_0_7) == (string.lower)(l_0_0.ppid) then
          return mp.INFECTED
        end
      end
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.CLEAN
  return l_0_1
end

