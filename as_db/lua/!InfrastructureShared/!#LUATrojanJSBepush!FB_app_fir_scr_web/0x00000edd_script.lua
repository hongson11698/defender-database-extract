-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUATrojanJSBepush!FB_app_fir_scr_web\0x00000edd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 == mp.SCANREASON_ONOPEN then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if l_0_1 == "firefox.exe" and (mp.get_mpattribute)("SCRIPT:Trojan:JS/Bepush!FB_Script") then
      (mp.set_mpattribute)("LUA:Trojan:JS/Bepush!FB_app_fir_scr_web")
    end
  end
  return mp.CLEAN
end

