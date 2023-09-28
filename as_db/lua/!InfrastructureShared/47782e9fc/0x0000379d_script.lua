-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\47782e9fc\0x0000379d_luac 

-- params : ...
-- function num : 0
if (hstrlog[3]).hitcount >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

