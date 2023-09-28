-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000a34_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() ~= 8944 then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME) ~= "d0d9c610-827c-44f3-b7d2-539b680a8716" then
  return mp.CLEAN
end
return mp.INFECTED

