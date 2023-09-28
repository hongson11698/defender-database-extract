-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006d21_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 720896 and l_0_0 <= 851968 and peattributes.amd64_image and peattributes.headerchecksum0 and peattributes.suspicious_linker_version then
  return mp.INFECTED
end
return mp.CLEAN

