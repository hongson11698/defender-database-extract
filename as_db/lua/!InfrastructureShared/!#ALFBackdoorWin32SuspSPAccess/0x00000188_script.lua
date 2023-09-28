-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFBackdoorWin32SuspSPAccess\0x00000188_luac 

-- params : ...
-- function num : 0
local l_0_1 = nil
local l_0_0 = tostring(headerpage)
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_2 = nil
if not l_0_0:match("([^:]+:)") then
  return mp.CLEAN
end
if #l_0_0:match("([^:]+:)") >= #l_0_0 then
  return mp.CLEAN
end
l_0_2 = ((string.lower)(l_0_0:match("([^:]+:)"))):match("post(/.*.aspx)")
if not l_0_2 then
  return mp.CLEAN
end
local l_0_3 = nil
local l_0_4 = "SuspSPAccess"
local l_0_5 = 3600
AppendToRollingQueue(l_0_4, l_0_2, 1, l_0_5, 10)
return mp.INFECTED

