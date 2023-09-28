-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005ee5_luac 

-- params : ...
-- function num : 0
if peattributes.suspicious_timestamp or peattributes.suspicious_image_version or peattributes.suspicious_linker_version then
  return mp.INFECTED
end
return mp.CLEAN

