-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4878e84b4\0x000079d8_luac 

-- params : ...
-- function num : 0
if (((not (hstrlog[3]).matched or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[1]).VA == 0 + pehdr.ImageBase) and (hstrlog[2]).VA == (mp.getfilesize)() - 7 + pehdr.ImageBase and (mp.getfilesize)() < 100000 and not (0 + 1 + 1 + 1) >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

