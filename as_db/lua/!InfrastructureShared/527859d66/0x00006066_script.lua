-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\527859d66\0x00006066_luac 

-- params : ...
-- function num : 0
if ((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or 0 + 1 + 1 + 1 == 3 then
  return mp.INFECTED
end
return mp.CLEAN
