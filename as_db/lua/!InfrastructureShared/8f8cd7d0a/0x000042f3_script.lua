-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\8f8cd7d0a\0x000042f3_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).VA < (hstrlog[2]).VA then
  return mp.INFECTED
end
return mp.CLEAN
