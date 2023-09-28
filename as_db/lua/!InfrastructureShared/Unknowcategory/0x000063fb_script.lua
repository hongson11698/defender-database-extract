-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063fb_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
if (mp.get_mpattribute)("Tracur_decryption") then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Tracur_Antiemu")
return mp.LOWFI

