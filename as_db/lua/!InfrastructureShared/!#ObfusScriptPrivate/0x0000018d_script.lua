-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ObfusScriptPrivate\0x0000018d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((string.match)(l_0_0, "(%.[^%.]+)$"))
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_2 == nil or l_0_2 == "" then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC41: Unhandled construct in 'MakeBoolean' P1

if l_0_2 == "powershell.exe" and l_0_1 ~= ".ps1" then
  return mp.CLEAN
end
if l_0_2 ~= "cscript.exe" and l_0_2 ~= "wscript.exe" then
  return mp.CLEAN
end
if l_0_1 ~= ".js" and l_0_1 ~= ".vbs" then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("MpDisableCaching")
if (mp.get_mpattribute)("ObfuscatedScriptA") then
  (mp.ReportLowfi)((mp.getfilename)(), 322486843)
else
  if (mp.get_mpattribute)("ObfuscatedScriptB") then
    (mp.ReportLowfi)((mp.getfilename)(), 2318504833)
  else
    if (mp.get_mpattribute)("ObfuscatedScriptC") then
      (mp.ReportLowfi)((mp.getfilename)(), 4248216343)
    else
      if (mp.get_mpattribute)("ObfuscatedScriptD") then
        (mp.ReportLowfi)((mp.getfilename)(), 1666332340)
      else
        return mp.CLEAN
      end
    end
  end
end
return mp.INFECTED

