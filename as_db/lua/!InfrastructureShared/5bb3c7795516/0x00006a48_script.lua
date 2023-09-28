-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb3c7795516\0x00006a48_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_1 = {}
  l_0_1[".js"] = true
  bm_AddRelatedFileFromCommandLine(l_0_0, l_0_1, nil, 1)
end
do
  add_parents()
  return mp.INFECTED
end

