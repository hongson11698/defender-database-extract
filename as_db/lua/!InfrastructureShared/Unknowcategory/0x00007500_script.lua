-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007500_luac 

-- params : ...
-- function num : 0
if peattributes.reads_vdll_code and (peattributes.suspicious_image_version or peattributes.uses_access_violation or peattributes.uses_privinstr or peattributes.deep_analysis or peattributes.enable_vmm_grow) and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN

