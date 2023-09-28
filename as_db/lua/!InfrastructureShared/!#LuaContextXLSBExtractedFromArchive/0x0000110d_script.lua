-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextXLSBExtractedFromArchive\0x0000110d_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_1:find("\\temp\\rar$", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:ContextXLSBWinRARExtracted.A")
  end
  if l_0_1:find("\\temp\\7zo", 1, true) ~= nil then
    (mp.set_mpattribute)("Lua:ContextXLSB7ZipExtracted.A")
  end
  if l_0_1:find("\\temp\\wz[0-9a-f][0-9a-f][0-9a-f][0-9a-f]$") ~= nil then
    (mp.set_mpattribute)("Lua:ContextXLSBWinZipExtracted.A")
  end
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_2 == "7zg.exe" and (l_0_1:find("\\desktop\\", 1, true) ~= nil or l_0_1:find("\\downloads\\", 1, true) ~= nil) then
    (mp.set_mpattribute)("Lua:ContextXLSB7ZipExtracted.B")
  end
  if l_0_2 == "explorer.exe" and l_0_1:find("\\temp\\temp[0-9]_.+%.zip$") ~= nil then
    (mp.set_mpattribute)("Lua:ContextXLSBExplorerZIPExtracted.A")
  end
end
do
  return mp.CLEAN
end

