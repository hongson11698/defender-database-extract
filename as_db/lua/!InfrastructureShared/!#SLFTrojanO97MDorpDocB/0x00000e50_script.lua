-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanO97MDorpDocB\0x00000e50_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if not l_0_0 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(l_0_0 - 6912, 2912)
;
(mp.readprotection)(true)
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2, l_0_3 = (string.find)(l_0_1, "Dorp.kock", 1, true)
if l_0_2 and (string.find)(l_0_1, "D\000o\000c\000u\000S\000i\000g\000n\000\174\000", l_0_3, true) then
  return mp.INFECTED
end
return mp.CLEAN

