-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000052ce_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isexe") and (mp.get_mpattribute)("HSTR:Win32/DelphiFile") then
  return mp.INFECTED
end
return mp.CLEAN

