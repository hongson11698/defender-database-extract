-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ad7_luac 

-- params : ...
-- function num : 0
if (hstrlog[13]).matched or (hstrlog[14]).matched then
  (mp.changedetectionname)(805306447)
else
  if (hstrlog[15]).matched then
    (mp.changedetectionname)(805306448)
  else
    if (hstrlog[16]).matched then
      (mp.changedetectionname)(805306449)
    else
      if (hstrlog[9]).matched or (hstrlog[10]).matched or (hstrlog[11]).matched or (hstrlog[12]).matched then
        (mp.changedetectionname)(805306432)
      end
    end
  end
end
return mp.INFECTED

