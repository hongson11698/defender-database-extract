-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000656a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 20480 then
  return mp.CLEAN
end
local l_0_1 = (mp.readheader)(0, 16)
if (string.find)(l_0_1, "\000\001\000\000\000\255\255\255\255\001\000\000\000\000\000\000", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
