-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2db3d3fe093c\0x00000c9b_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = (this_sigattrlog[1]).utf8p2
    bm_AddRelatedFileFromCommandLine(l_0_0, nil, nil, 1)
  end
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
      local l_0_1 = (this_sigattrlog[2]).utf8p2
      bm_AddRelatedFileFromCommandLine(l_0_1, nil, nil, 1)
    end
    return mp.INFECTED
  end
end

