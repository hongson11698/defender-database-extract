-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUATinyEPsec\0x00000c3f_luac 

-- params : ...
-- function num : 0
if pevars.epsec == 1 and (pesecs[1]).SizeOfRawData == 1024 then
  if peattributes.isdll then
    return mp.CLEAN
  end
  return mp.LOWFI
end
return mp.CLEAN

