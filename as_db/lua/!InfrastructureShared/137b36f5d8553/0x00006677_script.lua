-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\137b36f5d8553\0x00006677_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -11) == "svchost.exe" then
  return mp.CLEAN
end
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
return mp.INFECTED

