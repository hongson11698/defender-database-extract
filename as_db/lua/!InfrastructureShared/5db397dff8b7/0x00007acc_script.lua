-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5db397dff8b7\0x00007acc_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 12000000000 then
  return mp.CLEAN
end
local l_0_0 = nil
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  l_0_0 = (this_sigattrlog[4]).utf8p2
end
if l_0_0 == nil then
  return mp.CLEAN
end
bm_AddRelatedFileFromCommandLine(l_0_0)
;
(bm.add_related_string)("ProcessCreateParam", l_0_0, bm.RelatedStringBMReport)
return mp.INFECTED

