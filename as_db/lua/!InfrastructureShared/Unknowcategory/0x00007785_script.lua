-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007785_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 614400 and l_0_0 <= 720896 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_DEBUG]).Size == 56 and pehdr.Subsystem == 2 and pehdr.NumberOfSections >= 7 and pehdr.NumberOfSections <= 10 then
  return mp.INFECTED
end
return mp.CLEAN

