-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000693_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 == nil then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
if (string.match)(l_0_0, "advfirewall firewall add rule name=.+program=.+\\rundll32%.exe") then
  return mp.INFECTED
end
return mp.CLEAN

