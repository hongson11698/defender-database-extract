-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000465b_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:Win32/Banload.ARM") then
  return mp.INFECTED
end
return mp.SUSPICIOUS

