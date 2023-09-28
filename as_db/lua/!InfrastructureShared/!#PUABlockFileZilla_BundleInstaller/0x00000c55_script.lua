-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#PUABlockFileZilla_BundleInstaller\0x00000c55_luac 

-- params : ...
-- function num : 0
if (mp.UfsGetMetadataBool)("LUAUFS:NSISFileZillaBndlCert", true) == 0 and "LUAUFS:NSISFileZillaBndlCert" then
  return mp.INFECTED
end
return mp.CLEAN

