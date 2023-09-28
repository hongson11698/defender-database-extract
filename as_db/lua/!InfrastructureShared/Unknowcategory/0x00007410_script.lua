-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007410_luac 

-- params : ...
-- function num : 0
if peattributes.x86_image == true and peattributes.hasexports == true and peattributes.epinfirstsect == true and peattributes.suspicious_linker_version == true and peattributes.no_security == true and peattributes.nx_bit_set == true and peattributes.headerchecksum0 == true then
  return mp.INFECTED
end
return mp.CLEAN

