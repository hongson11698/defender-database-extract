-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d6c_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("InEmail") then
  return mp.CLEAN
end
if mp.HEADERPAGE_SZ < 11 then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 11 then
  return mp.CLEAN
end
local l_0_1 = (mp.readheader)(0, 12)
if l_0_1 == nil then
  return mp.CLEAN
end
do
  if (string.find)(l_0_1, "по\017Ю║\177\026\225\000\000\000", 1, true) ~= nil or (string.find)(l_0_1, "PK\003\004\020\000\006\000", 1, true) ~= nil then
    local l_0_2 = (mp.BMSearchFile)(0, l_0_0, "V\000B\000A\000_\000P\000R\000O\000J\000E\000C\000T\000\144\000")
    if l_0_2 and l_0_2 >= 0 and l_0_2 < l_0_0 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

