-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6361bffb6\0x000054a4_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_ismsil") and (mp.get_mpattribute)("pea_no_security") then
  return mp.INFECTED
end
return mp.LOWFI

