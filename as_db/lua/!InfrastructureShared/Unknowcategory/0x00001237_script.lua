-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001237_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 ~= nil then
  local l_0_1 = (string.sub)(l_0_0, -3)
  local l_0_2 = (string.sub)(l_0_0, -4)
  if l_0_0:match("%->.+/") or l_0_0:match("%->.+\\") or l_0_0:match("%->.+%->") then
    return mp.CLEAN
  end
  if l_0_1 == ".js" or l_0_2 == ".jse" or l_0_2 == ".vbs" or l_0_2 == ".vbe" or l_0_2 == ".wsf" then
    do
      do
        -- DECOMPILER ERROR at PC237: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC237: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC237: Unhandled construct in 'MakeBoolean' P3

        if (((((((((((((((((((((((mp.get_mpattributesubstring)("SCPT:JS/Obfus") or (mp.get_mpattributesubstring)("SCPT:TrojanDownloader:JS") or (mp.get_mpattributesubstring)("SCPT:Trojan:JS/Obfuse") or (mp.get_mpattributesubstring)("SCPT:TrojanDropper:JS/Obfuse")) and not (mp.get_mpattributesubstring)("SCPT:Jenxcus")) or (mp.get_mpattributesubstring)("VBS/Obfus")) and (mp.get_mpattributesubstring)("SCPT:Kira")) or (mp.get_mpattributesubstring)("SCPT:JS/HtmlSmuggling")) and not (mp.get_mpattributesubstring)("SCPT:Obfusc")) or (mp.get_mpattributesubstring)("SCPT:SimpleAsciiObfuscator")) and not (mp.get_mpattributesubstring)("SWF/Obfuscator")) or not (mp.get_mpattributesubstring)("SCPT:charcode.A")) and not (mp.get_mpattributesubstring)("SCRIPT:StringFromCharCode.A")) or (mp.get_mpattributesubstring)("VBS/Obfuscator")) and not (mp.get_mpattributesubstring)("SCPT:JS/parseInt")) or (mp.get_mpattributesubstring)("SCPT:JS/PushShift")) and not (mp.get_mpattributesubstring)("SCPT:Obfuscator.LongVariableName.A")) or (mp.get_mpattributesubstring)("TrojanDownloader:JS/Donvibs")) and not (mp.get_mpattributesubstring)("TrojanDownloader:JS/Donvibs.EH!atb01")) or (mp.get_mpattributesubstring)("SCPT:JS/Base64Func.A")) and (mp.get_mpattributesubstring)("SCRIPT:TrojanDownloader:JS/Nemucod")) or (mp.get_mpattributesubstring)("SCPT:JS/Gootkit")) and (mp.get_mpattributesubstring)("TrojanDownloader:HTML/Obfuse")) or (mp.get_mpattributesubstring)("TrojanDownloader:JS/Obfuse")) and (mp.get_mpattributesubstring)("Scpt:Trojan:JS/GootLoader")) or (mp.get_mpattributesubstring)("SCPT:TrojanDownloader:O97M/Qakbot") then
          local l_0_3, l_0_4, l_0_5, l_0_6 = 0 + 1 + 2 + 1 + 1 + 2 + 2 + 1 + 2 + 2 + 2 + 2 + 2 + 1 + 1 + 1 + 2
        end
        -- DECOMPILER ERROR at PC237: Confused about usage of register: R3 in 'UnsetPending'

        if l_0_3 >= 6 then
          (mp.set_mpattribute)("Lua:ObfusJsVbs.D")
        end
        -- DECOMPILER ERROR at PC243: Confused about usage of register: R3 in 'UnsetPending'

        if l_0_3 >= 4 then
          (mp.set_mpattribute)("Lua:ObfusJsVbs.C")
        end
        -- DECOMPILER ERROR at PC249: Confused about usage of register: R3 in 'UnsetPending'

        if l_0_3 >= 5 then
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

