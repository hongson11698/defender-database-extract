-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005a84_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security and peattributes.ismsil and l_0_0 <= 2031616 and l_0_0 >= 1835008 then
  return mp.INFECTED
end
return mp.CLEAN

