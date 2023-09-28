-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001138_luac 

-- params : ...
-- function num : 0
if peattributes.isdll then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_1:find("\\temp\\rar$ex", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:ContextWinRARExtracted.A")
  end
  if l_0_1:find("\\temp\\7zo", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:Context7ZipExtracted.A")
  end
  if l_0_1:find("\\temp\\wz[0-9a-f][0-9a-f][0-9a-f][0-9a-f]$") ~= nil then
    (mp.set_mpattribute)("Lua:ContextWinZipExtracted.A")
  end
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_2 == "irsetup.exe" and l_0_1:find("\\temp\\", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:ContextIRSetupExtracted.A")
  end
  if l_0_2 == "7zg.exe" and (l_0_1:find("\\desktop\\", 1, true) ~= nil or l_0_1:find("\\downloads\\", 1, true) ~= nil) then
    (mp.set_mpattribute)("Lua:Context7ZipExtracted.B")
  end
  if l_0_2 == "explorer.exe" and l_0_1:find("\\temp\\temp[0-9]_.+%.zip$") ~= nil then
    (mp.set_mpattribute)("Lua:ContextExplorerZIPExtracted.A")
  end
end
do
  return mp.CLEAN
end

