-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006329_luac 

-- params : ...
-- function num : 0
if (mp.UfsGetMetadataBool)("PSScriptWithServiceStopCommand", true) == 0 and "PSScriptWithServiceStopCommand" == true and (mp.UfsGetMetadataBool)("PSScriptWithConvertFromB64", true) == 0 and "PSScriptWithConvertFromB64" == true then
  return mp.INFECTED
end
return mp.CLEAN

