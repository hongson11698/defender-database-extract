-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\55b370eb9265\0x0000787c_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 12000000000 then
  return mp.CLEAN
end
local l_0_0 = nil
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  l_0_0 = (this_sigattrlog[3]).utf8p2
else
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
    l_0_0 = (this_sigattrlog[4]).utf8p2
  end
end
bm_AddRelatedFileFromCommandLine(l_0_0)
return mp.INFECTED

