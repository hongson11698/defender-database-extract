-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\927802f17\0x0000797c_luac 

-- params : ...
-- function num : 0
if (((((hstrlog[3]).matched and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (mp.getfilesize)() < 400000) and (hstrlog[1]).VA == 0 + pehdr.ImageBase and (hstrlog[2]).matched and 0 + 1 + 1 + 1 + 1 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN
