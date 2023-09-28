-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d4b34b3bc2e4\0x000008ff_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_1 = {}
  l_0_1[".bat"] = true
  bm_AddRelatedFileFromCommandLine(l_0_0, l_0_1)
end
do
  return mp.INFECTED
end

