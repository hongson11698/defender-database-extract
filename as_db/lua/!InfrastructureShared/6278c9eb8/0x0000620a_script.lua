-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6278c9eb8\0x0000620a_luac 

-- params : ...
-- function num : 0
if (((hstrlog[1]).matched and not (hstrlog[2]).matched) or (mp.getfilesize)() < 2000000) and 0 + 1 + 1 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN
