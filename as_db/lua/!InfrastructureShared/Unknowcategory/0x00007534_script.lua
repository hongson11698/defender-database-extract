-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007534_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if pehdr.NumberOfSections == 7 and peattributes.no_security == true and l_0_0 >= 348160 and l_0_0 <= 393216 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_DEBUG]).Size == 56 then
  return mp.INFECTED
end
return mp.CLEAN

