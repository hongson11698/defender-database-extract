-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005b37_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 290816 and l_0_0 <= 299008 and (mp.get_mpattribute)("ALF:Trojan:Win32/IcedId.PJ!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

