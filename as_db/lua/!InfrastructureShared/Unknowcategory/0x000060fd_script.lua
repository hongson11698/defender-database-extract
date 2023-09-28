-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000060fd_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:Win32/DelphiFile") and (mp.get_mpattribute)("pea_isexe") and (mp.getfilesize)() < 1024000 then
  return mp.INFECTED
end
return mp.CLEAN

