-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000637a_luac 

-- params : ...
-- function num : 0
if peattributes.packed and (mp.get_mpattribute)("SIGATTR:deepemu") and (mp.get_mpattribute)("SIGATTR:VirTool:Win32/Obfuscator.QG") then
  return mp.SUSPICIOUS
end
return mp.CLEAN

