-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005729_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:Trojan:Win32/C2Lop.gen!G") and (mp.get_mpattribute)("HSTR:HasSEH") then
  return mp.SUSPICIOUS
end
return mp.CLEAN

