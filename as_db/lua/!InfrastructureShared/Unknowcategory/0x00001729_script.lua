-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001729_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2800000 then
  return mp.LOWFI
end
return mp.CLEAN
