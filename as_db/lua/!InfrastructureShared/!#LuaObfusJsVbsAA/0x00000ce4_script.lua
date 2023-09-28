-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaObfusJsVbsAA\0x00000ce4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 300 or l_0_0 > 400000 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.getfilename)())
if l_0_1 == nil or l_0_1:match("%->.+/") or l_0_1:match("%->.-\\") then
  return mp.CLEAN
end
return mp.INFECTED

