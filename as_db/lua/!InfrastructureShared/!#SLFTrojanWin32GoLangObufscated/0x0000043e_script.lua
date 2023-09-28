-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanWin32GoLangObufscated\0x0000043e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_mpattributevalue)("RPF:GoLang:pclntab_magic_unknown")
if l_0_0 and (mp.bitand)(l_0_0, 4294967280) ~= 4294967280 then
  return mp.INFECTED
end
return mp.CLEAN

