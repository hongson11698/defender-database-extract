-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006669_luac 

-- params : ...
-- function num : 0
if (string.byte)((pe.mmap_va)(pevars.sigaddr - 5, 1), 1) ~= 185 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 16, "��")
return mp.INFECTED

