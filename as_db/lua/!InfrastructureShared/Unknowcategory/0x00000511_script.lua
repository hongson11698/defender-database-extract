-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000511_luac 

-- params : ...
-- function num : 0
if (mp.IOAVGetDownloadUrl)() == nil then
  return mp.CLEAN
end
if (mp.get_mpattribute)("Lua:FlashPlayerHTA") then
  return mp.INFECTED
end
if (mp.get_mpattribute)("Lua:FlashPlayerJSE") then
  return mp.INFECTED
end
return mp.CLEAN

