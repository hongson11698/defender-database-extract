-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000007e0_luac 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[1]
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = l_0_0.utf8p2
if not l_0_1 then
  return mp.CLEAN
end
if #l_0_1 < 12 or ((l_0_1:sub(-12)):lower()):find("\\%x%x%x%x%x%x%x.exe") ~= 1 then
  return mp.CLEAN
end
return mp.INFECTED

