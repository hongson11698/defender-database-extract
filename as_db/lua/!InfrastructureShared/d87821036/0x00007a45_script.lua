-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d87821036\0x00007a45_luac 

-- params : ...
-- function num : 0
if (((not (hstrlog[3]).matched or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (mp.getfilesize)() < 1000000) and (hstrlog[1]).VA == 0 + pehdr.ImageBase and (hstrlog[6]).hitcount > 10 and (hstrlog[2]).matched and 0 + 1 + 1 + 1 >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

