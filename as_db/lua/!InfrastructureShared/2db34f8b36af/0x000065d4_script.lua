-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2db34f8b36af\0x000065d4_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
    bm_AddRelatedFileFromCommandLine(l_0_0, nil, nil, 1)
  end
  add_parents()
  return mp.INFECTED
end
