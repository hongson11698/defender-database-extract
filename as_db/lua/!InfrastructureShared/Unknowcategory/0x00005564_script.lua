-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005564_luac 

-- params : ...
-- function num : 0
if peattributes.ismsil and peattributes.amd64_image and peattributes.requests_elevation then
  return mp.INFECTED
end
return mp.CLEAN
