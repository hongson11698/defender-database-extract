-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080db_luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
if (hstrlog[1]).matched then
  local l_0_0 = (mp.readfile)((pe.foffset_va)((hstrlog[1]).VA + 6), 1)
  ;
  (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)(-(string.byte)(l_0_0), 255), 1))
else
  do
    if (hstrlog[2]).matched then
      local l_0_1 = (mp.readfile)((pe.foffset_va)((hstrlog[2]).VA + 32), 1)
      local l_0_2 = (mp.readfile)((pe.foffset_va)((hstrlog[2]).VA), 4)
      ;
      (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)(-(string.byte)(l_0_1), 255), 1))
      ;
      (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", (mp.readu_u32)(l_0_2, 1)))
    else
      do
        do
          if (hstrlog[3]).matched then
            local l_0_3 = (mp.readfile)((pe.foffset_va)((hstrlog[3]).VA + 5), 1)
            ;
            (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", (mp.bitand)(-(string.byte)(l_0_3), 255), 1))
          end
          return mp.INFECTED
        end
      end
    end
  end
end

