-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\21b391a32470\0x00000208_luac 

-- params : ...
-- function num : 0
local l_0_0 = GetRollingQueueKeys("SuspSPAccess")
if l_0_0 ~= nil and type(l_0_0) == "table" then
  local l_0_1 = "["
  for l_0_5,l_0_6 in ipairs(l_0_0) do
    l_0_1 = l_0_1 .. l_0_6 .. "|"
  end
  l_0_1 = l_0_1 .. "]"
  local l_0_7 = l_0_0[#l_0_0]
  ;
  (bm.add_related_string)("spuri_list", l_0_1, bm.RelatedStringBMReport)
  ;
  (bm.add_related_string)("spwebshellpath", l_0_7, bm.RelatedStringBMReport)
  return mp.INFECTED
end
do
  return mp.CLEAN
end

