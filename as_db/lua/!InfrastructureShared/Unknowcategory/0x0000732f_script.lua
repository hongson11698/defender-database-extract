-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000732f_luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("SCPT:HackTool.Win32.POWERGAP.A1")
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0, "link.ps1") ~= nil or (string.find)(l_0_0, "procvas.ps1") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

