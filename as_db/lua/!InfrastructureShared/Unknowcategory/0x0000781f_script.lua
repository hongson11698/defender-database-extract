-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000781f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
local l_0_1 = (this_sigattrlog[1]).utf8p1
local l_0_2 = (string.match)(l_0_1, "\\%l%l%l%l%l%l%l%l.exe")
if l_0_2 ~= nil then
  (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)(l_0_0), 83782614)
  ;
  (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)(l_0_1), 83782614)
  return mp.INFECTED
end
return mp.CLEAN

