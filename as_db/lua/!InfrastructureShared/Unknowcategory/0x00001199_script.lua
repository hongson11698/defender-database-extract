-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001199_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = {}
  l_0_1["msdcsc.exe"] = true
  l_0_1["mdcsc.exe"] = true
  l_0_1["msdcs.exe"] = true
  l_0_1["msdc.exe"] = true
  l_0_1["IMDCSC.exe"] = true
  l_0_1["IMJDC.exe"] = true
  l_0_1["facecall.exe"] = true
  l_0_1["svcost.exe"] = true
  l_0_1["svhost.exe"] = true
  l_0_1["sv_chost.exe"] = true
  l_0_1["svhostss.exe"] = true
  l_0_1["Profoma Invoice.exe"] = true
  l_0_1["Profoma_Invoice.exe"] = true
  l_0_1["monthlyreport.exe"] = true
  l_0_1["ttpayment.scr"] = true
  l_0_1["crypted server.exe"] = true
  l_0_1["DCModule.exe"] = true
  l_0_1["lssass.exe"] = true
  l_0_1["DarkCommet.exe"] = true
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_1[l_0_2] then
    if (string.match)(l_0_3, "\\.-documents\\.+") or (string.match)(l_0_3, "\\start menu\\.+") or (string.match)(l_0_3, "\\programdata") or (string.match)(l_0_3, "\\administrator\\application data") or (string.match)(l_0_3, "\\appdata\\local") or (string.match)(l_0_3, "\\appdata\\roaming") or (string.match)(l_0_3, "\\desktop\\.+") or (string.match)(l_0_3, "\\windows\\system32\\.+") or (string.match)(l_0_3, "\\local settings\\application data") or (string.match)(l_0_3, "\\local settings\\temp") then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end
do
  return mp.CLEAN
end

