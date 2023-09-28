-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\51b39887d9e6\0x0000028e_luac 

-- params : ...
-- function num : 0
if IsLegacyOrgMachine() then
  return mp.CLEAN
end
bm_AddRelatedFileFromCommandLine("BM", nil, nil, 6)
return mp.INFECTED

