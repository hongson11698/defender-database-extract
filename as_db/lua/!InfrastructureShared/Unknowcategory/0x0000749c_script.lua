-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000749c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
local l_0_1 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_DEBUG]).Size
if peattributes.no_security == true and l_0_0 >= 32768 and l_0_0 <= 655360 and (l_0_1 >= 56 or pehdr.SizeOfImage <= l_0_1) then
  return mp.INFECTED
end
return mp.CLEAN

