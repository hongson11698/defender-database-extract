-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000626c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if (hstrlog[5]).matched and peattributes.no_security == true and l_0_0 >= 303104 and l_0_0 <= 1601536 then
  return mp.INFECTED
end
return mp.CLEAN

