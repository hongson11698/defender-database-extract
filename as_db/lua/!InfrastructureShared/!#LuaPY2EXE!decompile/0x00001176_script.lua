-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPY2EXE!decompile\0x00001176_luac 

-- params : ...
-- function num : 0
if peattributes.isdll then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("SIGATTR:PY2EXE!compiled") and not (mp.get_mpattribute)("HSTR:PY2EXE!compiled") then
  return mp.CLEAN
end
local l_0_0 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE]).RVA
if l_0_0 == 0 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readu_u16)((pe.mmap_rva)(l_0_0 + 12, 2), 1)
if l_0_1 ~= 2 then
  return mp.CLEAN
end
local l_0_2 = (mp.readu_u16)((pe.mmap_rva)(l_0_0 + 14, 2), 1)
local l_0_3 = (mp.readu_u16)((pe.mmap_rva)(l_0_0 + 16, 2), 1)
local l_0_4 = (mp.readu_u16)((pe.mmap_rva)(l_0_0 + 24, 2), 1)
if (mp.readu_u32)((pe.mmap_rva)(l_0_0 + l_0_4, 4), 1) ~= 5242892 then
  return mp.CLEAN
end
if (mp.readu_u32)((pe.mmap_rva)(l_0_0 + l_0_4 + 4, 4), 1) ~= 5505113 then
  return mp.CLEAN
end
if (mp.readu_u32)((pe.mmap_rva)(l_0_0 + l_0_4 + 8, 4), 1) ~= 5177416 then
  return mp.CLEAN
end
if (mp.readu_u32)((pe.mmap_rva)(l_0_0 + l_0_4 + 12, 4), 1) ~= 5439566 then
  return mp.CLEAN
end
local l_0_5 = l_0_3 - ((l_0_1 - 1) * 16 + l_0_2 * 16)
local l_0_6 = (mp.readu_u32)((pe.mmap_rva)(l_0_0 + l_0_5 + 4, 4), 1)
local l_0_7 = (mp.readu_u32)((pe.mmap_rva)(l_0_0 + l_0_5, 4), 1)
local l_0_8 = (mp.readu_u32)((pe.mmap_rva)(l_0_7, 4), 1)
if l_0_8 ~= 2018915346 then
  return mp.CLEAN
end
local l_0_9 = (pe.mmap_rva)(l_0_7, l_0_6)
;
(mp.vfo_add_buffer)(l_0_9, "[py2exebin]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

