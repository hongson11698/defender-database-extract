-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3e788be21\0x00008057_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 3 and (pesecs[1]).SizeOfRawData > 151552 and ((pehdr.DataDirectory)[2]).Size > 74 and ((pehdr.DataDirectory)[2]).Size < 90 and peattributes.isexe and (hstrlog[1]).matched then
  (mp.set_mpattribute)("LowFi:Kurei_PNG")
  ;
  (mp.readprotection)(false)
  local l_0_0 = (pe.foffset_va)((hstrlog[1]).VA)
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC47: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC48: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC50: Overwrote pending register: R3 in 'AssignReg'

  local l_0_2 = ((3058425074).readfile)(8654206, 1168)
  if (mp.crc32)(-1, l_0_2, 1, 0) == l_0_1[1] then
    l_0_2 = (mp.readfile)(l_0_0 + 61440, 1168)
    if (mp.crc32)(-1, l_0_2, 1, 0) == l_0_1[2] then
      return mp.INFECTED
    end
    return mp.LOWFI
  end
  return mp.LOWFI
end
do
  return mp.CLEAN
end

