-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b77892d33\0x0000648b_luac 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 7 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Trojan:Win32/CoinMiner.AF_Lowfi")
return mp.CLEAN

