-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000008f6_luac 

-- params : ...
-- function num : 0
if not (this_sigattrlog[2]).matched then
  return mp.CLEAN
end
local l_0_0 = (this_sigattrlog[2]).utf8p2
if l_0_0 == nil then
  return mp.CLEAN
end
if #l_0_0 >= 600 and #l_0_0 <= 2500 then
  return mp.INFECTED
end
return mp.CLEAN

