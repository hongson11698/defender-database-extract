-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000053fe_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 2097152 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("ALF:Trojan:Win32/GenMal.A")
return mp.CLEAN

