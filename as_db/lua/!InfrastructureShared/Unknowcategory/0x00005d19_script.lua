-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005d19_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("CMN:HSTR:InstallerFile") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 2500000 or l_0_0 < 4000 then
  return mp.CLEAN
end
return mp.INFECTED

