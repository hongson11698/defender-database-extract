-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\145b332fc4a74\0x0000017c_luac 

-- params : ...
-- function num : 0
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[15]).matched and (this_sigattrlog[15]).utf8p1 ~= nil then
  l_0_0 = (string.match)((this_sigattrlog[15]).utf8p1, "\\([^\\]+%.exe)")
end
local l_0_2 = (string.lower)((bm.get_imagepath)())
if l_0_2 ~= nil and (string.find)(l_0_2, "program files", 1, true) == nil and (string.find)(l_0_2, "system32", 1, true) == nil then
  l_0_1 = (string.match)(l_0_2, "\\([^\\]+%.exe)")
end
if l_0_1 ~= nil and l_0_0 ~= nil then
  l_0_1 = (string.lower)(l_0_1)
  l_0_0 = (string.lower)(l_0_0)
  if l_0_1 ~= l_0_0 then
    return mp.INFECTED
  end
end
return mp.CLEAN

