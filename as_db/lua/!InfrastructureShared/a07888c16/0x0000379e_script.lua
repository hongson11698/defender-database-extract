-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a07888c16\0x0000379e_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("FOP:Rijndael") then
  return mp.SUSPICIOUS
end
return mp.CLEAN

