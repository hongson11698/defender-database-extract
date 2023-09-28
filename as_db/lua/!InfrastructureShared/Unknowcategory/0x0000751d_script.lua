-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000751d_luac 

-- params : ...
-- function num : 0
if peattributes.isdll == true and peattributes.x86_image == true and peattributes.hasexports == true and peattributes.no_ep == true and peattributes.no_security == true and peattributes.suspicious_falign == true and peattributes.epoutofimage == true and peattributes.hasappendeddata == true then
  return mp.INFECTED
end
return mp.CLEAN

