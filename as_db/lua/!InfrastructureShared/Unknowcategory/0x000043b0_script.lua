-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000043b0_luac 

-- params : ...
-- function num : 0
if peattributes.no_security == true and peattributes.ismsil == true then
  return mp.INFECTED
end
return mp.CLEAN
