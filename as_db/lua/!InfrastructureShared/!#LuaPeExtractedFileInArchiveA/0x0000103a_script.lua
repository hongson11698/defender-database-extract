-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPeExtractedFileInArchiveA\0x0000103a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if l_0_0 == nil or (string.len)(l_0_0) < 22 or (string.find)(l_0_0, "\\appdata\\local\\temp\\", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = (string.match)(l_0_0, "\\appdata\\local\\temp\\(.+)")
if l_0_1 == nil or (string.len)(l_0_1) < 4 then
  return mp.CLEAN
end
if (string.find)(l_0_1, "\\", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_2 = {}
l_0_2.zip = "temp%x_.+%.zip"
l_0_2.rar = "rar$.+"
l_0_2["7zip"] = "7z.+"
l_0_2.wzip = "wz.+"
for l_0_6,l_0_7 in pairs(l_0_2) do
  if (string.match)(l_0_1, l_0_7) ~= nil then
    (mp.set_mpattribute)("Lua:PeExtractedFileInArchive.A!" .. l_0_6)
    return mp.INFECTED
  end
end
return mp.CLEAN

