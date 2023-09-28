-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\fb784ec2d\0x00006638_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 11 and ((hstrlog[1]).matched or (hstrlog[2]).matched) then
  return mp.INFECTED
else
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

