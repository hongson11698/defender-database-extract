-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005a6f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.isdll and peattributes.no_security and l_0_0 > 1572864 and l_0_0 < 1638400 then
  return mp.INFECTED
end
return mp.CLEAN

