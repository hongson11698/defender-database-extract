-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007bca_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0.exe = ""
l_0_0.cmd = ""
l_0_0.bat = ""
l_0_0.com = ""
l_0_0.pif = ""
l_0_0.scr = ""
local l_0_1 = {}
l_0_1.ms = ""
l_0_1.cc = ""
local l_0_2 = nil
if (this_sigattrlog[1]).matched then
  l_0_2 = (string.lower)((this_sigattrlog[1]).utf8p1)
else
  if (this_sigattrlog[2]).matched then
    l_0_2 = (string.lower)((this_sigattrlog[2]).utf8p1)
  end
end
do
  if l_0_2 ~= nil then
    local l_0_3 = l_0_2:match("([^\\]-([^%.]+))$")
    if l_0_0[l_0_2] and l_0_1[l_0_3:sub(1, 2)] then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

