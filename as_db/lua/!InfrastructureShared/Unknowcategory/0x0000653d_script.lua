-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000653d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 2359296 and l_0_0 <= 2555904 and pehdr.NumberOfSections >= 4 and pehdr.NumberOfSections <= 6 then
  return mp.INFECTED
end
return mp.CLEAN

