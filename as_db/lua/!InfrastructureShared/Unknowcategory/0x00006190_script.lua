-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006190_luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(80304, 832)
if (mp.crc32)(-1, l_0_0, 1, 832) == 2937191514 then
  return mp.INFECTED
end
return mp.CLEAN

