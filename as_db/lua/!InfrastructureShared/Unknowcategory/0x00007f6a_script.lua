-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f6a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if not l_0_0 then
  return mp.CLEAN
end
l_0_0 = (string.lower)((MpCommon.PathToWin32Path)(l_0_0))
if not (sysio.IsFileExists)(l_0_0) then
  return mp.CLEAN
end
local l_0_1 = (sysio.GetFileLastWriteTime)(l_0_0)
if not ((sysio.GetLastResult)()).Success or l_0_1 == 0 then
  return mp.CLEAN
end
l_0_1 = l_0_1 / 10000000 - 11644473600
local l_0_2 = (MpCommon.GetCurrentTimeT)()
if l_0_2 <= l_0_1 then
  return mp.CLEAN
end
do
  local l_0_3 = (l_0_2 - (l_0_1)) / 60
  if not l_0_3 <= 1440 then
    return mp.CLEAN
  end
  if (#l_0_0 >= 9 and (string.sub)(l_0_0, 2, 9) == ":\\users\\") or #l_0_0 >= 15 and (string.sub)(l_0_0, 2, 15) == ":\\programdata\\" then
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- DECOMPILER ERROR: 5 unprocessed JMP targets
end

