-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a0789b5a2\0x00005963_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 5 then
  return mp.INFECTED
else
  if (hstrlog[1]).matched then
    return mp.LOWFI
  end
end
return mp.CLEAN

