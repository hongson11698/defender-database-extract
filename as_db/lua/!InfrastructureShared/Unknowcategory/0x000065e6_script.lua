-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000065e6_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_XML_FILE") and not (mp.get_mpattribute)("SCPT:TrojanDownloader:O97M/Ploty_excl1.A") and not (mp.get_mpattribute)("SCPT:TrojanDownloader:O97M/Ploty_excl2.A") then
  return mp.INFECTED
end
return mp.LOWFI

