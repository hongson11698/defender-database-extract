-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006476_luac 

-- params : ...
-- function num : 0
if (pe.isdynamic_va)(pevars.sigaddr) then
  (mp.set_mpattribute)("PEBMPAT:Simda:AntiEmuProcessName")
  ;
  (pe.set_regval)(pe.REG_EAX, 0)
end
return mp.CLEAN

