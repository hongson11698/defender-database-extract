-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\287812330\0x00007d4d_luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.hasexports then
  local l_0_0 = (pe.mmap_va)(pehdr.ImageBase + ((pehdr.DataDirectory)[1]).RVA, 40)
  local l_0_1 = (mp.readu_u32)(l_0_0, 13)
  local l_0_2 = (mp.readu_u32)(l_0_0, 21)
  if l_0_2 == 3 then
    local l_0_3 = (pe.mmap_va)(pehdr.ImageBase + l_0_1, 27)
    if (string.sub)(l_0_3, 8) == "\000Destroy\000Init\000Start\000" then
      (mp.set_mpattribute)("do_exhaustivehstr_rescan")
    end
  end
end
do
  return mp.CLEAN
end

