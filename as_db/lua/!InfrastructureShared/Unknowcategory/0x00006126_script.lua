-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006126_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 8 and (pesecs[1]).Name == "CODE" and (pesecs[2]).Name == "DATA" then
  return mp.INFECTED
end
return mp.CLEAN

