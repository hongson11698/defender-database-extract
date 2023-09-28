-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000cd1_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 then
  l_0_0 = (string.lower)(l_0_0)
  if l_0_0:find("\\appdata\\.+\\thunderbird\\profiles\\") then
    return mp.CLEAN
  end
  if l_0_0:find("\\logging\\.+queue\\.+%.log") then
    return mp.CLEAN
  end
  if l_0_0:find("%.rss$") then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

