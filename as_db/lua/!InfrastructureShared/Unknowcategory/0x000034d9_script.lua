-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000034d9_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount > 2 then
  return mp.INFECTED
end
return mp.CLEAN

