-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000078c8_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 6 and (hstrlog[1]).VA + 98 == (hstrlog[2]).VA and (hstrlog[2]).VA + 162 == (hstrlog[3]).VA and (hstrlog[3]).VA + 160 == (hstrlog[4]).VA and (hstrlog[4]).VA + 160 == (hstrlog[5]).VA and (hstrlog[6]).hitcount > 23 then
  return mp.INFECTED
end
return mp.CLEAN

