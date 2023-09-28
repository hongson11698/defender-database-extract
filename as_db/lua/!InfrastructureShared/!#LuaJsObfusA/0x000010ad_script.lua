-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaJsObfusA\0x000010ad_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 ~= nil then
  local l_0_1 = (string.sub)(l_0_0, -3)
  local l_0_2 = (string.sub)(l_0_0, -4)
  if (l_0_1 == ".js" or l_0_2 == ".jse" or l_0_2 == ".vbs" or l_0_2 == ".vbe" or l_0_2 == ".wsf") and ((mp.get_mpattributesubstring)("JS/Obfus") or (mp.get_mpattributesubstring)("SCPT:Jenxcus") or (mp.get_mpattributesubstring)("VBS/Obfus") or (mp.get_mpattributesubstring)("SCPT:Kira") or (mp.get_mpattributesubstring)("SCPT:Obfusc") or (mp.get_mpattributesubstring)("SCPT:SimpleAsciiObfuscator") or (mp.get_mpattributesubstring)("JS/Obfuscator") or (mp.get_mpattributesubstring)("SWF/Obfuscator") or (mp.get_mpattributesubstring)("SCPT:charcode.A") or (mp.get_mpattributesubstring)("ObfusHead") or (mp.get_mpattributesubstring)("SCRIPT:StringFromCharCode.A") or (mp.get_mpattributesubstring)("VBS/Obfuscator")) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

