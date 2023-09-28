-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaJsObfusD\0x0000123b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1 = (string.sub)(l_0_0, -4)
if l_0_1 == ".exe" or l_0_1 == ".tmp" or (string.sub)(l_0_0, -5) == ".html" or l_0_1 == ".hta" or l_0_0:find("availabilitytest", 1, true) or l_0_0:find("mxescr", 1, true) then
  return mp.CLEAN
end
if l_0_0 ~= nil then
  if l_0_0:match("%->.+/") or l_0_0:match("%->.+\\") or l_0_0:match("%->.+%->") then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC256: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC256: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC256: Unhandled construct in 'MakeBoolean' P3

  if (((((((((((((((((((((((not (mp.get_mpattributesubstring)("SCPT:JS/Obfus") and not (mp.get_mpattributesubstring)("SCPT:TrojanDownloader:JS") and not (mp.get_mpattributesubstring)("SCPT:Trojan:JS/Obfuse") and not (mp.get_mpattributesubstring)("SCPT:TrojanDropper:JS/Obfuse")) or (mp.get_mpattributesubstring)("SCPT:Jenxcus")) and not (mp.get_mpattributesubstring)("VBS/Obfus")) or not (mp.get_mpattributesubstring)("SCPT:Kira")) and not (mp.get_mpattributesubstring)("SCPT:JS/HtmlSmuggling")) or (mp.get_mpattributesubstring)("SCPT:Obfusc")) and not (mp.get_mpattributesubstring)("SCPT:SimpleAsciiObfuscator")) or (mp.get_mpattributesubstring)("SWF/Obfuscator")) and (mp.get_mpattributesubstring)("SCPT:charcode.A")) or (mp.get_mpattributesubstring)("SCRIPT:StringFromCharCode.A")) and not (mp.get_mpattributesubstring)("VBS/Obfuscator")) or (mp.get_mpattributesubstring)("SCPT:JS/parseInt")) and not (mp.get_mpattributesubstring)("SCPT:JS/PushShift")) or (mp.get_mpattributesubstring)("SCPT:Obfuscator.LongVariableName.A")) and not (mp.get_mpattributesubstring)("TrojanDownloader:JS/Donvibs")) or (mp.get_mpattributesubstring)("TrojanDownloader:JS/Donvibs.EH!atb01")) and not (mp.get_mpattributesubstring)("SCPT:JS/Base64Func.A")) or not (mp.get_mpattributesubstring)("SCRIPT:TrojanDownloader:JS/Nemucod")) and not (mp.get_mpattributesubstring)("SCPT:JS/Gootkit")) or not (mp.get_mpattributesubstring)("TrojanDownloader:HTML/Obfuse")) and not (mp.get_mpattributesubstring)("TrojanDownloader:JS/Obfuse")) or not (mp.get_mpattributesubstring)("Scpt:Trojan:JS/GootLoader")) and not (mp.get_mpattributesubstring)("SCPT:TrojanDownloader:O97M/Qakbot")) or 0 + 1 + 2 + 1 + 1 + 2 + 2 + 1 + 2 + 2 + 2 + 2 + 2 + 1 + 1 + 1 + 2 >= 5 then
    return mp.INFECTED
  end
end
return mp.CLEAN

