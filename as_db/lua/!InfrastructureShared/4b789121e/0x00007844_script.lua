-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4b789121e\0x00007844_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 3000000 and 0 + pehdr.ImageBase <= (hstrlog[1]).VA and (hstrlog[1]).VA <= 1024 + pehdr.ImageBase and 0 + pehdr.ImageBase <= (hstrlog[2]).VA and (hstrlog[2]).VA <= 1024 + pehdr.ImageBase and (hstrlog[3]).matched then
  return mp.INFECTED
end
return mp.CLEAN

