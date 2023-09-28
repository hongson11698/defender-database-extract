-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000b83_luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:JS/Belmont.ZD") >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

