-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanLinuxSamDustA!dha\0x0000066c_luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:SSHPatchSamDustDiff") >= 3 and #(mp.enum_mpattributesubstring)("SCPT:SSHPatchSamDustCode") >= 5 then
  return mp.INFECTED
end
return mp.CLEAN

