-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6cb3a20861af\0x00000580_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  local l_0_0 = (this_sigattrlog[1]).utf8p1
  local l_0_1 = {}
  l_0_1[".dll"] = true
  l_0_1[".ocx"] = true
  bm_AddRelatedFileFromCommandLine(l_0_0, l_0_1, nil, 6)
end
do
  return mp.INFECTED
end

