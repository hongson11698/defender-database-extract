-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000f39_luac 

-- params : ...
-- function num : 0
if (mp.readu_u16)(headerpage, 1) == 23117 then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 65536 then
  return mp.CLEAN
end
local l_0_1 = (mp.bitxor)((mp.readu_u32)(headerpage, 1), 3688618971)
if l_0_1 == 0 then
  return mp.CLEAN
end
if (mp.bitxor)((mp.readu_u32)(headerpage, 5), l_0_1) == 2305 and (mp.bitxor)((mp.readu_u32)(headerpage, 9), l_0_1) == 1801666816 and (mp.bitxor)((mp.readu_u32)(headerpage, 13), l_0_1) == 1836216134 then
  (mp.set_mpattribute)("MpNonPIIFileType")
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

