-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000661e_luac 

-- params : ...
-- function num : 0
if (pesecs[4]).Name == ".rsrc" and (mp.bitand)((pesecs[4]).Characteristics, 3221487648) == 3221487648 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Win32/Nabucur.01")
return mp.CLEAN

