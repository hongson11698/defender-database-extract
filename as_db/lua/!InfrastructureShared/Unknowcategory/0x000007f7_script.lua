-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000007f7_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  local l_0_7 = (string.lower)((string.match)(l_0_6.image_path, "\\([^\\]+)$"))
  if l_0_7 == "java.exe" or l_0_7 == "javaw.exe" then
    return mp.INFECTED
  end
  do return mp.CLEAN end
end
return mp.CLEAN

