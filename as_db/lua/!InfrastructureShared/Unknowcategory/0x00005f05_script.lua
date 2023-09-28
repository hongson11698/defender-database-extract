-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005f05_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 32768 and l_0_0 <= 720896 and (pesecs[4]).Name == ".text" and (pesecs[1]).Name == ".text" then
  return mp.INFECTED
end
return mp.CLEAN

