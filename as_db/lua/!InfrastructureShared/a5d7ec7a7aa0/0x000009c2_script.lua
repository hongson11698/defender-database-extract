-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a5d7ec7a7aa0\0x000009c2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(l_0_0.image_path)
if l_0_1:find("\\git", 1, true) ~= nil then
  return mp.CLEAN
end
if l_0_1:match("([^\\]+)$") ~= "bash.exe" then
  return mp.CLEAN
end
if CmdReportParent(566642330) then
  return mp.INFECTED
end
return mp.CLEAN

