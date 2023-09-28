-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000072f3_luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[1]).matched then
  l_0_0 = (this_sigattrlog[1]).utf8p2
end
if l_0_0 ~= "" then
  l_0_0 = (string.lower)(l_0_0)
  if (string.find)(l_0_0, "maccount ", 1, true) and (string.find)(l_0_0, "dc ", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN

