-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000594e_luac 

-- params : ...
-- function num : 0
if peattributes.suspicious_image_version and peattributes.hasappendeddata and peattributes.x86_image then
  return mp.INFECTED
end
return mp.CLEAN

