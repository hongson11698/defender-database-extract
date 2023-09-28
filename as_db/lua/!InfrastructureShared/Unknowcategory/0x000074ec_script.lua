-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000074ec_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 == nil or (string.len)(l_0_0) < 1 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((MpCommon.PathToWin32Path)(l_0_0))
local l_0_2 = (sysio.GetFileSize)(l_0_1)
if l_0_2 > 716800 or l_0_2 < 307200 then
  return mp.CLEAN
end
return mp.INFECTED

