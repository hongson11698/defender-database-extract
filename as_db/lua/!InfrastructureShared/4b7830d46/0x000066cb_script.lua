-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4b7830d46\0x000066cb_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 3 and (mp.get_mpattribute)("pea_has_msilresources") and (mp.get_mpattribute)("pea_no_security") and (mp.get_mpattribute)("LUA:FileSizeLE40000.A") then
  return mp.INFECTED
end
return mp.LOWFI

