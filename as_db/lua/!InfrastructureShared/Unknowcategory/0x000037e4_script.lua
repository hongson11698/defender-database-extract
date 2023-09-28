-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000037e4_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() >= 130560 and (mp.getfilesize)() <= 136192 then
  return mp.INFECTED
end
return mp.CLEAN

