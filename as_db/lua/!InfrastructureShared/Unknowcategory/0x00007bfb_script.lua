-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007bfb_luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 100)
local l_0_1 = (string.find)(l_0_0, "Yt", 1, true)
local l_0_2 = (string.find)(l_0_0, "\015\132", 1, true)
if l_0_2 ~= nil and l_0_1 ~= nil then
  if l_0_1 <= l_0_2 then
    local l_0_3 = (string.byte)(l_0_0, l_0_2 + 2)
    local l_0_4 = (string.char)(l_0_2 - l_0_1 + l_0_3)
    ;
    (pe.mmap_patch_va)(pevars.sigaddr + l_0_1, (string.format)("\233%s\000\000\000", l_0_4))
  else
    do
      ;
      (pe.mmap_patch_va)(pevars.sigaddr + l_0_2 - 1, "��")
      return mp.LOWFI
    end
  end
end

