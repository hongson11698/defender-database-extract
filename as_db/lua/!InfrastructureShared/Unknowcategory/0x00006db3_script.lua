-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006db3_luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 20000000 then
  return mp.CLEAN
end
if not (this_sigattrlog[1]).matched or (this_sigattrlog[1]).utf8p1 == nil then
  return mp.CLEAN
end
local l_0_0 = (this_sigattrlog[1]).utf8p1
;
(bm.trigger_sig)("BMGenericCodeInjector.A", l_0_0)
return mp.CLEAN

