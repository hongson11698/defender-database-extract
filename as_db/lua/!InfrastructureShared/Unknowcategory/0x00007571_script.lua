-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007571_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.amd64_image and peattributes.hasexports == false and l_0_0 > 20992 and l_0_0 < 21760 and pehdr.NumberOfSections == 1 and (mp.get_mpattribute)("TEL:Ransom:Win64/Magniber.PB!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

