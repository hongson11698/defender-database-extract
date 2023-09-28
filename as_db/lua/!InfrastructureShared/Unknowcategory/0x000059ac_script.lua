-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000059ac_luac 

-- params : ...
-- function num : 0
if not peattributes.amd64_image then
  return mp.CLEAN
end
if not peattributes.enable_vmm_grow then
  (pe.set_peattribute)("enable_vmm_grow", true)
end
return mp.INFECTED

