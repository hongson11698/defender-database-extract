-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000dd6_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MacOS:HSTR:Generality.E") then
  return mp.CLEAN
end
if #(mp.enum_mpattributesubstring)("Detection:Exploit:iPhoneOS") == 0 and #(mp.enum_mpattributesubstring)("TEL:Exploit:iPhoneOS") == 0 and #(mp.enum_mpattributesubstring)("Detection:Exploit:MacOS") == 0 and #(mp.enum_mpattributesubstring)("TEL:Exploit:MacOS") == 0 then
  return mp.INFECTED
end
return mp.CLEAN

