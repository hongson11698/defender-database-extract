-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006265_luac 

-- params : ...
-- function num : 0
if (hstrlog[14]).hitcount >= 5 and pehdr.NumberOfSections == 3 and (mp.getfilesize)() < 1048000 then
  return mp.INFECTED
end
return mp.CLEAN

