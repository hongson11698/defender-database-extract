-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007331_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
if l_0_0 ~= nil then
  for l_0_5,l_0_6 in ipairs(l_0_0) do
    if l_0_6.image_path ~= nil then
      local l_0_7 = (string.lower)(l_0_6.image_path)
      if (string.find)(l_0_7, "\\tanium client\\taniumclient.exe", -31, true) then
        return mp.CLEAN
      end
    end
  end
end
do
  return mp.INFECTED
end

