-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000da3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "receipt.pdf.exe") ~= nil or (string.find)(l_0_0, "emotet_exe_e%d_[%x]+_2020%-%d%d%-%d%d__%d+") ~= nil or (string.find)(l_0_0, "emotet_exe_e%d_%x%x%x%x%x%x+_2022%-04%-%d%d__%d%d%d%d+%._exe") ~= nil or (string.find)(l_0_0, "571.exe.2.dr") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

