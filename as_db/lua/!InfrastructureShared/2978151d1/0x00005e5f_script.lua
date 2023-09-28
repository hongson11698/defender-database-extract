-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2978151d1\0x00005e5f_luac 

-- params : ...
-- function num : 0
if ((hstrlog[1]).matched and (hstrlog[3]).matched) or (hstrlog[2]).matched and (hstrlog[4]).matched then
  return mp.INFECTED
end
return mp.CLEAN

