-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3578ed297\0x00006d97_luac 

-- params : ...
-- function num : 0
if (hstrlog[3]).matched and ((hstrlog[1]).matched or (hstrlog[3]).VA + pehdr.ImageBase > (hstrlog[2]).VA or (hstrlog[2]).VA <= (hstrlog[3]).VA + 200 + pehdr.ImageBase) then
  return mp.INFECTED
end
return mp.CLEAN

