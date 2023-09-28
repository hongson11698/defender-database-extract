-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005531_luac 

-- params : ...
-- function num : 0
if peattributes.x86_image and peattributes.relocs_stripped and peattributes.no_exports then
  return mp.INFECTED
end
return mp.CLEAN

