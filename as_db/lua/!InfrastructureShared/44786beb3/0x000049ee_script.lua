-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\44786beb3\0x000049ee_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and (hstrlog[2]).matched then
  return mp.INFECTED
end
return mp.CLEAN

