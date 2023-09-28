-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFHackToolPythonCosmicEnergyA!\0x00000667_luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:CosmicEnergyAPy") >= 3 or #(mp.enum_mpattributesubstring)("SCPT:CosmicEnergyBPy") >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

