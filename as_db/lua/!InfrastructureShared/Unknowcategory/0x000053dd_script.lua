-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000053dd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.isvbnative and l_0_0 >= 512000 and l_0_0 <= 716800 then
  return mp.INFECTED
end
return mp.CLEAN

