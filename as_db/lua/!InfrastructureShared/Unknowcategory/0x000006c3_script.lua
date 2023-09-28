-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006c3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and (string.find)(l_0_0, "\\svchost.exe", 1, true) and (MpCommon.GetPersistContextCountNoPath)("GenericSystemWinlogon") > 0 then
  return mp.INFECTED
end
return mp.CLEAN

