-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066d0_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 21 then
  return mp.INFECTED
else
  if (hstrlog[1]).matched or (hstrlog[2]).matched then
    (mp.set_mpattribute)("do_exhaustivehstr_rescan")
    return mp.LOWFI
  end
end
return mp.CLEAN

