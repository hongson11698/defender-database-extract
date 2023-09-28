-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\cc78cee6f\0x0000785d_luac 

-- params : ...
-- function num : 0
if peattributes.packed or ((pehdr.NumberOfSections > 4 and (pesecs[4]).Name == ".bss" and (pesecs[5]).Name == ".idata") or (pesecs[5]).Name ~= ".bss" or (pesecs[6]).Name == ".idata") then
  return mp.INFECTED
end
;
(mp.changedetectionname)(805306391)
return mp.SUSPICIOUS

