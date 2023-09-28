-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFGamarue2!lnk\0x0000114a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 24 or l_0_0 > 255 then
  return mp.CLEAN
end
if (mp.bitand)((mp.readu_u32)(headerpage, 8), 16777215) ~= 6070466 and (mp.bitand)((mp.readu_u32)(headerpage, 1), 16777215) ~= 6070466 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = ((mp.readfile)(0, l_0_0))
local l_0_2, l_0_3, l_0_4 = nil, nil, nil
l_0_2 = (string.find)(l_0_1, "�\-({?[%w%s%p]+}?)(%.{?[%w%s%-]+}?)\"?,[%w%p%s]+%z")
if l_0_2 then
  local l_0_5 = (string.lower)(l_0_4)
  local l_0_6 = {}
  l_0_6[".exe"] = true
  l_0_6[".dll"] = true
  l_0_6[".cpl"] = true
  l_0_6[".ocx"] = true
  if l_0_6[l_0_5] then
    return mp.CLEAN
  end
  local l_0_7 = nil
  local l_0_8 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
  if l_0_8 == mp.SCANREASON_ONOPEN or l_0_8 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    l_0_7 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  end
  if l_0_7 == nil then
    l_0_7 = ((mp.getfilename)()):match("(.+)\\[^\\]+$")
  end
  if l_0_7 ~= nil then
    (mp.ReportLowfi)(l_0_7 .. "\\ \\" .. l_0_3 .. l_0_4, 2406282551)
    ;
    (mp.ReportLowfi)(l_0_7 .. "\\ \\IndexerVolumeGuid", 2012828607)
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

