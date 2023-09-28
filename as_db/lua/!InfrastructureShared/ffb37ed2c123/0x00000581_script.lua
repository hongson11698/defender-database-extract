-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\ffb37ed2c123\0x00000581_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
  local l_0_0 = (this_sigattrlog[4]).utf8p1
  local l_0_1 = {}
  l_0_1[".dll"] = true
  l_0_1[".ocx"] = true
  bm_AddRelatedFileFromCommandLine(l_0_0, l_0_1, nil, 6)
end
do
  return mp.INFECTED
end

