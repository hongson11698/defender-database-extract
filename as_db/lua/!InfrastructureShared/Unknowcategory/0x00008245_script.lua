-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008245_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched or (hstrlog[10]).matched then
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_04")
else
  if (hstrlog[2]).matched or (hstrlog[9]).matched or (hstrlog[3]).matched or (hstrlog[4]).matched or (hstrlog[5]).matched or (hstrlog[12]).matched or (hstrlog[11]).matched or (hstrlog[6]).matched or (hstrlog[8]).matched then
    (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_05")
  else
    if (hstrlog[7]).matched or (hstrlog[15]).matched then
      (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_02")
    else
      if (hstrlog[24]).matched then
        if (hstrlog[19]).matched then
          (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0C")
        else
          if (hstrlog[20]).matched then
            (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0D")
          else
            ;
            (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0A")
          end
        end
      else
        if (hstrlog[25]).matched then
          if (hstrlog[21]).matched then
            (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0D")
          else
            if (hstrlog[22]).matched then
              (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0F")
            end
          end
        else
          if (hstrlog[26]).matched and (hstrlog[23]).matched then
            (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_14")
          end
        end
      end
    end
  end
end
if (hstrlog[17]).matched or (hstrlog[18]).matched then
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0A")
else
  if (hstrlog[13]).matched or (hstrlog[14]).matched or (hstrlog[16]).matched then
    (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_06")
  end
end
return mp.CLEAN

