-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007566_luac 

-- params : ...
-- function num : 0
if pevars.epsec == 1 and (pesecs[pevars.epsec]).Name == ".text" and (pesecs[2]).Name == ".data" and (pesecs[3]).Name == ".rsrc" and peattributes.no_decription and peattributes.suspicious_image_version then
  return mp.INFECTED
end
return mp.CLEAN

