-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUACheckPETimestampRange\0x00000d01_luac 

-- params : ...
-- function num : 0
if pehdr.TimeDateStamp ~= 0 then
  if pehdr.TimeDateStamp > 1532653568 then
    (mp.set_mpattribute)("Lua:TimeStampRange2")
  end
  if pehdr.TimeDateStamp > 1409613824 then
    (mp.set_mpattribute)("Lua:TimeStampRange1")
  end
end
return mp.CLEAN

