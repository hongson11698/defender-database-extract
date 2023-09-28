-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008199_luac 

-- params : ...
-- function num : 0
if peattributes.isdll then
  return mp.CLEAN
end
if peattributes.isdamaged then
  return mp.CLEAN
end
if not peattributes.isexe then
  return mp.CLEAN
end
if not peattributes.hasexports then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 4 then
  return mp.CLEAN
end
local l_0_0 = -1
for l_0_4 = 3, pehdr.NumberOfSections do
  local l_0_5 = (string.lower)((pesecs[l_0_4]).Name)
  if (string.sub)(l_0_5, 1, 8) == "cpadinfo" then
    do
      do
        l_0_0 = l_0_4
        do break end
        -- DECOMPILER ERROR at PC57: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC57: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC57: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
if l_0_0 == -1 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_6 = (pe.mmap_rva)((pesecs[l_0_0]).VirtualAddress, 4)
local l_0_7 = (mp.readu_u32)(l_0_6, 1)
if l_0_7 ~= 1129341284 then
  return mp.CLEAN
end
local l_0_8 = (pe.mmap_rva)(((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]).RVA, 40)
local l_0_9 = (mp.readu_u32)(l_0_8, 13)
local l_0_10 = (pe.mmap_rva)(l_0_9, 32)
if (string.sub)(l_0_10, 1, 12) == "electron.exe" then
  (mp.set_mpattribute)("Lua:ElectronExe.A")
else
  if (string.sub)(l_0_10, 1, 6) == "nw.exe" then
    (mp.set_mpattribute)("Lua:NWJsExe.A")
  end
end
return mp.INFECTED

