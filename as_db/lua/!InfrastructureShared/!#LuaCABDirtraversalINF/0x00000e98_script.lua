-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaCABDirtraversalINF\0x00000e98_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 1024 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 1178817357 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 29) ~= 1 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 60) ~= 791555584 then
  return mp.CLEAN
end
local l_0_0 = (mp.readheader)(60, 255)
if (string.find)(l_0_0, "%.%.%/.*%.inf", 0) then
  return mp.INFECTED
end
return mp.CLEAN

