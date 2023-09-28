-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\11361febe\0x000076a7_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 113 then
  return mp.INFECTED
else
  if (hstrlog[5]).matched or (hstrlog[6]).matched or (hstrlog[7]).matched or (hstrlog[8]).matched or (hstrlog[9]).matched then
    (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  end
end
return mp.CLEAN

