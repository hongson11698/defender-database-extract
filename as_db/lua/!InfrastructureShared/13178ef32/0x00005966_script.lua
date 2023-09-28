-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\13178ef32\0x00005966_luac 

-- params : ...
-- function num : 0
if (hstrlog[5]).matched or (hstrlog[6]).matched then
  (mp.changedetectionname)(805306407)
  return mp.INFECTED
end
return mp.INFECTED

