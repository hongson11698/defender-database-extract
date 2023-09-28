-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000bc0_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 2000 then
  return mp.CLEAN
end
if (mp.getfilename)() == "C:\\Windows\\System32\\setting.ini" then
  return mp.INFECTED
end
return mp.CLEAN

