-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066e5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 135000 and l_0_0 < 150000 and pehdr.NumberOfSections >= 6 and (pesecs[3]).Name == ".zfq" and (pesecs[4]).Name == ".flq" then
  return mp.INFECTED
end
return mp.CLEAN
