-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000061ce_luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("HSTR:Trojan:Win32/Colisi")
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
return mp.CLEAN

