-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e1d_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched then
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_7C01")
  ;
  (mp.set_mpattribute)("HSTR:Obfuscator.PN!crc_key.1_075108AA_003272F1")
else
  if (hstrlog[2]).matched then
    (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_7D02")
    ;
    (mp.set_mpattribute)("HSTR:Obfuscator.PN!crc_key.1_075108AC_003272F3")
  else
    if (hstrlog[3]).matched then
      (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_78FC")
      ;
      (mp.set_mpattribute)("HSTR:Obfuscator.PN!crc_key.1_075108A3_003272EA")
    end
  end
end
return mp.INFECTED

