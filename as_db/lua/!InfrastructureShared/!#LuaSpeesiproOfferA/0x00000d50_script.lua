-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSpeesiproOfferA\0x00000d50_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC10: Overwrote pending register: R0 in 'AssignReg'

local l_0_0 = nil
if l_0_0 ~= nil and (string.find)(l_0_0, "\\programdata\\.+\\offers\\.+%.exe", 1, false) then
  (mp.set_mpattribute)("Lua:SpeesiproOffer.A")
end
return mp.CLEAN

