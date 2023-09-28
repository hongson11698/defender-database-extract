-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000055c3_luac 

-- params : ...
-- function num : 0
if peattributes.ismsil and (mp.getfilesize)() > 2000 and (mp.getfilesize)() < 6000 then
  return mp.INFECTED
end
return mp.LOWFI

