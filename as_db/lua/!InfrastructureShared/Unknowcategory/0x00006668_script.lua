-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006668_luac 

-- params : ...
-- function num : 0
local l_0_0 = doshdr.e_lfanew + pehdr.NumberOfSections * 40 + pehdr.SizeOfOptionalHeader + 64
if (mp.readu_u32)(headerpage, l_0_0) == 4867584 then
  return mp.INFECTED
end
return mp.CLEAN

