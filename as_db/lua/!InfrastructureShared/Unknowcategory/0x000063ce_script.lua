-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063ce_luac 

-- params : ...
-- function num : 0
if not (hstrlog[2]).matched and not (hstrlog[3]).matched then
  return mp.CLEAN
end
if not (hstrlog[4]).matched and not (hstrlog[5]).matched and not (hstrlog[6]).matched then
  return mp.CLEAN
end
return mp.INFECTED

