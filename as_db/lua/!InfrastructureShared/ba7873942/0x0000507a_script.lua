-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\ba7873942\0x0000507a_luac 

-- params : ...
-- function num : 0
if (hstrlog[9]).matched or mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
return mp.LOWFI

