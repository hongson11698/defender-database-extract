-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25787d056\0x0000821b_luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(0, (mp.getfilesize)() < 4096 and (mp.getfilesize)() or 4096)
if (hstrlog[1]).VA + 256 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 256 + 1) or 8192 == 119961420 and (hstrlog[1]).VA + 273 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 273 + 1) or 8192 == 7045161 and (hstrlog[1]).VA + 301 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 301 + 1) or 8192 == 3772714986 and (hstrlog[1]).VA + 322 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 322 + 1) or 8192 == 1731713986 and (hstrlog[1]).VA + 336 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 336 + 1) or 8192 == 4281919927 and (hstrlog[1]).VA + 353 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 353 + 1) or 8192 == 3778800756 and (hstrlog[1]).VA + 367 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 367 + 1) or 8192 == 1632464501 and (hstrlog[1]).VA + 408 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 408 + 1) or 8192 == 1606998274 and (hstrlog[1]).VA + 440 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 440 + 1) or 8192 == 3847464024 and (hstrlog[1]).VA + 466 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 466 + 1) or 8192 == 1606998274 and (hstrlog[1]).VA + 494 < 4096 and (mp.readu_u32)(l_0_0, (hstrlog[1]).VA + 494 + 1) or 8192 == 1632464501 then
  return mp.INFECTED
end
return mp.CLEAN

