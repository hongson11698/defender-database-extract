-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c48_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and (string.lower)((string.sub)((MpCommon.PathToWin32Path)(l_0_0), 2, 11)) == ":\\windows\\" then
  return mp.CLEAN
end
return mp.INFECTED

