-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006370_luac 

-- params : ...
-- function num : 0
local l_0_0 = (nri.GetRawResponseBlob)()
if l_0_0 and (MpCommon.BinaryRegExpSearch)("\\\\\\\\10\\.[0-9\\.]+|172\\.[0-9\\.]+|192\\.168\\.[0-9\\.]+\\\\d+", l_0_0) then
  return mp.INFECTED
end
return mp.CLEAN

