-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000012e4_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil and ((string.find)(l_0_6.image_path, "google chrome", 1, true) or (string.find)(l_0_6.image_path, "safari", 1, true) or (string.find)(l_0_6.image_path, "firefox", 1, true)) then
    return mp.INFECTED
  end
end
return mp.CLEAN

