-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a27860794\0x00007688_luac 

-- params : ...
-- function num : 0
local l_0_0 = (hstrlog[3]).matched
local l_0_1 = (hstrlog[4]).matched
local l_0_2 = (hstrlog[5]).matched
local l_0_3 = (l_0_0 and 1 or 0) + (l_0_1 and 1 or 0) + (l_0_2 and 1 or 0)
if l_0_3 >= 2 then
  return mp.SUSPICIOUS
end
;
(mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.AFG")
return mp.CLEAN

