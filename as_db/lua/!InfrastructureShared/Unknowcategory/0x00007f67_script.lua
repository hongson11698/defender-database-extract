-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f67_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if not (string.find)(l_0_0, "^c:\\") and not (string.find)(l_0_0, "^\\\\") then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\programa\\", 1, true) or (string.find)(l_0_0, "\\programas\\", 1, true) or (string.find)(l_0_0, "pedeletronico", 1, true) or (string.find)(l_0_0, "gerencial", 1, true) or (string.find)(l_0_0, "det.processador", 1, true) then
  return mp.CLEAN
end
if not (MpCommon.QueryPersistContext)(l_0_0, "ExecutedPENoCert") then
  return mp.CLEAN
end
return mp.INFECTED

