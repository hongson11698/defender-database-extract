-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f89_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 56064 or l_0_0 > 458752 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
do
  if l_0_0 > 72448 and (mp.get_mpattribute)("RPF:XlsAbnormalSheetStateBits") and (mp.get_mpattribute)("MpExcelFormulaRoutines") then
    local l_0_1 = tostring((mp.readfile)(0, l_0_0))
    l_0_1 = (string.lower)(l_0_1)
    if (string.find)(l_0_1, "%d%.ocx.*%d%.ocx.*%d%.ocx") ~= nil and (string.find)(l_0_1, "system32", 1, true) ~= nil and (string.find)(l_0_1, "egsv", 1, true) ~= nil and (string.find)(l_0_1, "urldownloadtofil", 1, true) ~= nil and (string.find)(l_0_1, "jjccbb", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

