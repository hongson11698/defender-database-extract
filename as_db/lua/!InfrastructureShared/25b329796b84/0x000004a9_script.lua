-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b329796b84\0x000004a9_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
if l_0_0 == nil then
  return mp.CLEAN
end
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil then
    local l_0_7 = (string.lower)((string.match)(l_0_6.image_path, "\\([^\\]+)$"))
    if l_0_7 == "services.exe" then
      AddResearchData("BM", true)
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

