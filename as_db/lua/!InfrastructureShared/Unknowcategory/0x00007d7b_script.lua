-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d7b_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("LUA:FileSizeLE40000.A") and (mp.get_mpattribute)("Lua:FileSizeGEC350") and (mp.get_mpattribute)("BM_DropperObfuscatorUR") and (mp.get_mpattribute)("MpHasExpensiveLoop") and (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") and (mp.get_mpattribute)("LUA:OverlaySize_0xd30_to_0xd40") and pehdr.TimeDateStamp ~= 0 then
    local l_0_0 = (MpCommon.GetCurrentTimeT)()
    if pehdr.TimeDateStamp < l_0_0 and l_0_0 - pehdr.TimeDateStamp <= 2592000 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

