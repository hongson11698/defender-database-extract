-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a678ddbc8\0x0000666d_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
if (hstrlog[1]).matched or (hstrlog[2]).matched then
  if mp.HSTR_WEIGHT >= 3 then
    return mp.INFECTED
  end
  if mp.HSTR_WEIGHT >= 2 then
    return mp.LOWFI
  end
end
return mp.CLEAN

