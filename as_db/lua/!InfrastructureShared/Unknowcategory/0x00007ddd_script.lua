-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ddd_luac 

-- params : ...
-- function num : 0
if peattributes.epscn_islast and peattributes.epscn_writable and peattributes.firstsectwritable and (epcode[1] == 96 or epcode[1] == 144) and (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 4096 and pe.OPCLOG_SZ > 20 then
  local l_0_0 = 0
  local l_0_1 = 1
  while l_0_1 < 20 do
    if (opclog[l_0_1]).value == 144 then
      l_0_0 = l_0_0 + 1
    end
    l_0_1 = l_0_1 + 1
  end
  if l_0_0 >= 7 then
    (mp.set_mpattribute)("Lua:Obfuscator_entry_nopcount")
  end
end
do
  return mp.CLEAN
end

