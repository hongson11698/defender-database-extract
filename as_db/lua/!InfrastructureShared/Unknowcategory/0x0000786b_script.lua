-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000786b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "tiworker.exe", 1, true) or (string.find)(l_0_0, "trustedinstaller.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

