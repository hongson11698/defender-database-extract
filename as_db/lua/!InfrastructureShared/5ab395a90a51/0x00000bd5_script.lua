-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5ab395a90a51\0x00000bd5_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  bm_AddRelatedFileFromCommandLine((this_sigattrlog[1]).utf8p2, nil, nil, 1)
end
return mp.INFECTED

