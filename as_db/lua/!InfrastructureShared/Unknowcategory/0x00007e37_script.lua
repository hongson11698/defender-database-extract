-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e37_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched or (hstrlog[2]).matched then
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
  ;
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_8308")
  ;
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k7.20")
else
  if (hstrlog[3]).matched then
    (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
    ;
    (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_860B")
    ;
    (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k7.20")
  else
    if (hstrlog[4]).matched then
      (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!upk.1")
      ;
      (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_870C")
      ;
      (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k7.20")
    end
  end
end
return mp.INFECTED

