-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6678daac6\0x00007419_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
else
  if mp.HSTR_WEIGHT == 2 then
    (mp.set_mpattribute)("HSTR:Win32/Obfuscator_Upatre_Dyzap_1")
  else
    if (hstrlog[3]).matched then
      (mp.set_mpattribute)("HSTR:Win32/Obfuscator_Upatre_Dyzap_2")
    end
  end
end
return mp.CLEAN

