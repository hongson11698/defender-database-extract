-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006da5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 16896 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(l_0_0 - 16896, 16896)
if l_0_1:find("qxgxwddm)(if(findfile \"bakdwg.fas\")(load \"bakdwg.fas\")))", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED

