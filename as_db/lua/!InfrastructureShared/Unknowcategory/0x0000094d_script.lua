-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000094d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
local l_0_1 = (MpCommon.QueryPersistContext)(l_0_0, "NewPECreatedNoCert")
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (sysio.GetFileLastWriteTime)(l_0_0)
if ((sysio.GetLastResult)()).Success and l_0_2 ~= 0 then
  l_0_2 = l_0_2 / 10000000 - 11644473600
  local l_0_3 = (MpCommon.GetCurrentTimeT)()
  if l_0_3 < l_0_2 or l_0_3 - (l_0_2) > 600 then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

