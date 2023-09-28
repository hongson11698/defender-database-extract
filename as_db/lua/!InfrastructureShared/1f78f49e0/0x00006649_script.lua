-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1f78f49e0\0x00006649_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and (hstrlog[1]).VA + pehdr.ImageBase <= (hstrlog[2]).VA and (hstrlog[2]).VA <= (hstrlog[1]).VA + 100 + pehdr.ImageBase then
  return mp.INFECTED
end
return mp.CLEAN

