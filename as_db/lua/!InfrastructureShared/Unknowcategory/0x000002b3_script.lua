-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000002b3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p2))
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\windows\\ccm\\systemtemp\\", 1, true) == nil and (string.find)(l_0_0, "\\windows\\ccmcache\\", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN

