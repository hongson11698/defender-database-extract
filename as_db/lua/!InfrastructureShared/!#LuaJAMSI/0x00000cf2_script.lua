-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaJAMSI\0x00000cf2_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpIsJScriptEncodeAMSIScan") or (mp.get_mpattribute)("MpIsVBScriptEncodeAMSIScan") or (mp.get_mpattribute)("MpIsVBScriptAMSIScan") or (mp.get_mpattribute)("MpIsJScriptAMSIScan") then
  return mp.INFECTED
end
return mp.CLEAN

