-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007913_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount > 0 and (hstrlog[2]).hitcount > 0 and mp.HSTR_WEIGHT == 4 then
  return mp.CLEAN
end
if (hstrlog[3]).hitcount > 0 and (hstrlog[4]).hitcount > 0 and mp.HSTR_WEIGHT == 4 then
  return mp.CLEAN
end
if (hstrlog[1]).hitcount > 0 and (hstrlog[2]).hitcount > 0 and (hstrlog[3]).hitcount > 0 and (hstrlog[4]).hitcount > 0 and mp.HSTR_WEIGHT == 5 then
  return mp.CLEAN
end
return mp.INFECTED

