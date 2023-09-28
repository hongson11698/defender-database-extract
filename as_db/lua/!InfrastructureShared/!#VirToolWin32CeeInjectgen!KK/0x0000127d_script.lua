-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#VirToolWin32CeeInjectgen!KK\0x0000127d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 or l_0_0 > 5242880 then
  return mp.CLEAN
end
if peattributes.packersigmatched == true then
  return mp.CLEAN
end
if peattributes.dropped == true then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 3 then
  return mp.CLEAN
end
if pehdr.Subsystem ~= 2 and pehdr.Subsystem ~= 3 then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("MpInternalParanoid") and not (mp.get_mpattribute)("HSTR:VirTool:Win32/CeeInject.gen!KK_enc") and not (string.find)((string.lower)((mp.getfilename)()), ".pse$") then
  if not (mp.get_mpattribute)("VirTool:Win32/CeeInject.gen!KK_enc") and not (mp.get_mpattribute)("Zbot:CeeInject.gen!KK_enc") then
    return mp.CLEAN
  end
  if (((((((((((((((((((((((peattributes.suspicious_dosheader and not peattributes.suspicious_falign) or peattributes.suspicious_heap_geometry) and not peattributes.suspicious_heap_size) or peattributes.suspicious_image_size) and not peattributes.suspicious_image_version) or peattributes.suspicious_imagebase) and not peattributes.suspicious_linker_version) or peattributes.suspicious_ntheader) and not peattributes.suspicious_number_of_dirs) or peattributes.suspicious_os_version) and not peattributes.suspicious_rebase) or peattributes.suspicious_section_characteristics) and not peattributes.suspicious_section_fsize) or peattributes.suspicious_section_name) and not peattributes.suspicious_section_offset) or peattributes.suspicious_section_rva) and not peattributes.suspicious_section_vsize) or peattributes.suspicious_stack_geometry) and not peattributes.suspicious_stack_size) or peattributes.suspicious_subsystem) and not peattributes.suspicious_subsystem_version) or peattributes.suspicious_timestamp) and not peattributes.suspicious_valign) or 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 < 3 then
    if (pesecs[1]).NameDW ~= 2019914798 and (pesecs[1]).NameDW ~= 2019915566 and (pesecs[1]).NameDW ~= 2019914896 and (pesecs[1]).NameDW ~= 2019914753 and (pesecs[1]).NameDW ~= 2019914795 and (pesecs[1]).NameDW ~= 2013361198 and (pesecs[1]).NameDW ~= 2019885358 and (pesecs[1]).NameDW ~= 23426094 and (pesecs[1]).Characteristics ~= 1610612768 and (pesecs[1]).Characteristics ~= 3758096416 and (pesecs[1]).Characteristics ~= 1610612737 and (pesecs[1]).Characteristics ~= 1610612880 and (pesecs[1]).Characteristics ~= 1610743840 and (pesecs[1]).Characteristics ~= 1342177312 and (pesecs[1]).Characteristics ~= 1610612739 and (pesecs[1]).Characteristics ~= 2415919136 and (pesecs[1]).Characteristics ~= 1879048224 and (pesecs[1]).Characteristics ~= 1879085088 and (pesecs[1]).Characteristics ~= 1879048240 and (pesecs[1]).Characteristics ~= 1879048480 and (pesecs[1]).Characteristics ~= 1610612741 and (pesecs[1]).Characteristics ~= 1610618400 and (pesecs[1]).Characteristics ~= 1610612896 and (pesecs[1]).Characteristics ~= 1073741888 and (pesecs[1]).Characteristics ~= 1342177344 and (pesecs[1]).Characteristics ~= 3841982496 and (pesecs[1]).Characteristics ~= 1073741856 and (pesecs[1]).Characteristics ~= 1610612800 then
      return mp.CLEAN
    end
    if (pesecs[2]).NameDW ~= 1633972782 and (pesecs[2]).NameDW ~= 1633972737 and (pesecs[2]).NameDW ~= 1414677294 and (pesecs[2]).NameDW ~= 1633970478 and (pesecs[2]).NameDW ~= 1920168494 and (pesecs[2]).NameDW ~= 1627419182 and (pesecs[2]).NameDW ~= 1633972737 and (pesecs[2]).NameDW ~= 1633972739 and (pesecs[2]).Characteristics ~= 1073741888 and (pesecs[2]).Characteristics ~= 16777280 and (pesecs[2]).Characteristics ~= 3221225536 and (pesecs[2]).Characteristics ~= 3221291072 and (pesecs[2]).Characteristics ~= 3758096416 and (pesecs[2]).Characteristics ~= 1073741827 and (pesecs[2]).Characteristics ~= 1073807424 and (pesecs[2]).Characteristics ~= 1073741825 and (pesecs[2]).Characteristics ~= 2868904000 and (pesecs[2]).Characteristics ~= 2868904256 and (pesecs[2]).Characteristics ~= 3221225473 and (pesecs[2]).Characteristics ~= 2868904193 and (pesecs[2]).Characteristics ~= 1073773120 and (pesecs[2]).Characteristics ~= 1442840640 and (pesecs[2]).Characteristics ~= 1073742144 and (pesecs[2]).Characteristics ~= 1442881600 and (pesecs[2]).Characteristics ~= 1073807424 and (pesecs[2]).Characteristics ~= 2147483712 and (pesecs[2]).Characteristics ~= 3489660992 and (pesecs[2]).Characteristics ~= 1610612768 then
      return mp.CLEAN
    end
  end
end
;
(mp.readprotection)(false)
local l_0_1 = "MZ\144\000\003\000\000\000\004\000\000\000\255\255\000\000\184\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\192\000\000\000\014\031\186\014\000\180\t\205!\184\001L\205![DYNEXE] A HELPER STUB TO EMULATE WIN32 MALWARES.$-----------------------------------------------------------jirehPE\000\000L\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\224\000\002\001\v\001\n\n\004\000\000\000\000\000\000\000\000\000\000\000\224\001\000\000\224\001\000\000\228\001\000\000\000\000@\000\001\000\000\000\001\000\000\000\005\000\001\000\000\000\000\000\005\000\001\000\000\000\000\000\224\001P\000\224\001\000\000\000\000\000\000\003\000@\133\000\000\016\000\000\016\000\000\000\000\016\000\000\016\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000.xray\000\000\000\000\000P\000\224\001\000\000\000\000P\000\224\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\224\000\000��"
if l_0_0 <= (pesecs[1]).PointerToRawData then
  return mp.CLEAN
end
if l_0_0 - (pesecs[1]).PointerToRawData > 5242880 then
  return mp.CLEAN
end
local l_0_2 = l_0_1 .. (mp.readfile)((pesecs[1]).PointerToRawData, l_0_0 - (pesecs[1]).PointerToRawData)
if peattributes.packed == true then
  local l_0_3 = (mp.get_parent_filehandle)()
  if l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = (mp.get_filesize_by_handle)(l_0_3)
  if l_0_4 > 5242880 then
    return mp.CLEAN
  end
  l_0_2 = l_0_2 .. (mp.readfile_by_handle)(l_0_3, 0, l_0_4)
end
do
  if #l_0_2 < 4096 or #l_0_2 > 5242880 then
    return mp.CLEAN
  end
  l_0_2 = l_0_2 .. fastBinaryTransform(l_0_2, "(.).", 0, mp.bitxor)
  l_0_2 = l_0_2 .. fastBinaryTransform(l_0_2, ".(.)", 0, mp.bitxor)
  if #l_0_2 < 4096 or #l_0_2 > 5242880 then
    return mp.CLEAN
  end
  ;
  (mp.vfo_add_buffer)(l_0_2, "[CeeInject_KK_DynExe]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  return mp.CLEAN
end

