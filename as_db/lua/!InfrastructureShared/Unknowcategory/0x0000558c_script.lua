-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000558c_luac 

-- params : ...
-- function num : 0
if pevars.sigaddr ~= 4198400 then
  return mp.CLEAN
end
;
(pe.set_peattribute)("hstr_exhaustive", true)
return mp.INFECTED

