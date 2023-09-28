-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000074a8_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and ((hstrlog[2]).matched or (hstrlog[3]).matched) then
  if pehdr.SizeOfImage > 327680 and pehdr.SizeOfImage < 1048576 then
    (mp.changedetectionname)(805306419)
    return mp.INFECTED
  else
    return mp.SUSPICIOUS
  end
end
return mp.CLEAN

