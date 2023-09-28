-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\49b301c4a43a\0x000002a0_luac 

-- params : ...
-- function num : 0
if IsLegacyOrgMachine() then
  return mp.CLEAN
end
AddResearchData("BM", true)
bm_AddRelatedFileFromCommandLine("BM")
return mp.INFECTED

