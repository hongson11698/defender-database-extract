-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006393_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p2
if l_0_0 then
  local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
  if l_0_1 then
    for l_0_5,l_0_6 in ipairs(l_0_1) do
      (bm.add_related_file)(l_0_6)
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.INFECTED
  return l_0_1
end

