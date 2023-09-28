-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000005e7_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
local l_0_2 = "["
for l_0_6,l_0_7 in ipairs(l_0_1) do
  if l_0_7 ~= nil and l_0_7.ppid ~= nil then
    l_0_2 = l_0_2 .. l_0_7.ppid .. ";" .. l_0_7.image_path .. "|"
  end
end
l_0_2 = l_0_2 .. "]"
if l_0_2 ~= "[]" then
  (bm.add_related_string)("childlist", l_0_2, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN

