-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LinuxEditSystemLibPreload\0x00000594_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_FULL)
if l_0_1 ~= "/etc/ld.so.preload" then
  return mp.CLEAN
end
local l_0_2 = tostring(headerpage)
if l_0_2 == nil then
  return mp.CLEAN
end
for l_0_6,l_0_7 in ipairs(split(l_0_2, "\n")) do
  if l_0_7 ~= nil and l_0_7 ~= "" and (sysio.IsFileExists)(l_0_7) then
    (mp.ReportLowfi)(l_0_7, 4017216192)
  end
end
return mp.INFECTED

