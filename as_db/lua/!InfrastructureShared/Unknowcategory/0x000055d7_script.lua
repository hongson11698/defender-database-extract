-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000055d7_luac 

-- params : ...
-- function num : 0
if peattributes.isdll == true and (mp.get_mpattribute)("NID:Win32/Qakbot.PAA!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
