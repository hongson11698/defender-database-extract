-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000800a_luac 

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
local l_0_2, l_0_3 = nil, nil
if (this_sigattrlog[4]).matched and (this_sigattrlog[6]).matched then
  l_0_2 = (string.lower)((this_sigattrlog[4]).utf8p1)
  l_0_3 = (string.lower)((this_sigattrlog[6]).utf8p2)
else
  if (this_sigattrlog[5]).matched and (this_sigattrlog[7]).matched then
    l_0_2 = (string.lower)((this_sigattrlog[5]).utf8p1)
    l_0_3 = (string.lower)((this_sigattrlog[7]).utf8p2)
  end
end
if l_0_2 ~= nil and l_0_3 ~= nil then
  local l_0_4, l_0_5 = l_0_2:match("([^\\]-([^%.]+))$")
  local l_0_6 = l_0_4:sub(1, 2)
  if l_0_0[l_0_5] and l_0_1[l_0_6] then
    l_0_3 = (string.match)(l_0_3, "\\([^\\]+)$")
    if l_0_4 == l_0_3 then
      (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)(l_0_2), 4091961331)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

