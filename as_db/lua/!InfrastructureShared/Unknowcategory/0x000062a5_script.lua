-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000062a5_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 21 and (hstrlog[3]).hitcount + (hstrlog[4]).hitcount + (hstrlog[5]).hitcount + (hstrlog[6]).hitcount >= 5 then
  return mp.INFECTED
end
return mp.LOWFI

