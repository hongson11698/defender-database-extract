-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000668d_luac 

-- params : ...
-- function num : 0
if peattributes.suspicious_image_version and peattributes.suspicious_timestamp and peattributes.isdll and (mp.getfilesize)() < 325888 then
  (pe.reemulate)()
  return mp.INFECTED
end
return mp.CLEAN

