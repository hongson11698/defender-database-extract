-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00004329_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount - 1 == (hstrlog[2]).hitcount then
  return mp.INFECTED
end
return mp.CLEAN

