-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ec4_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((MpCommon.PathToWin32Path)((mp.getfilename)(mp.FILEPATH_QUERY_FULL))):lower()
if l_0_0:find("magnifier", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("cameramessagesapp", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("barcodescanner", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("mobilesms", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("springboard", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("camera", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("filza", 1, true) then
  return mp.CLEAN
end
if l_0_0:find(".deb", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

