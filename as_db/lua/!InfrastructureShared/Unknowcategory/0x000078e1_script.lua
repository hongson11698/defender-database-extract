-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000078e1_luac 

-- params : ...
-- function num : 0
if pehdr.Machine == 34404 and peattributes.isdll and ((mp.get_mpattribute)("ALF:Trojan:Win32/TrickBot.SL1") or (mp.get_mpattribute)("ALF:Trojan:Win32/TrickBot.SL2")) and pehdr.NumberOfSections == 8 and (mp.get_mpattribute)("LUA:FileSizeGT2M.A") then
  return mp.INFECTED
end
return mp.CLEAN

