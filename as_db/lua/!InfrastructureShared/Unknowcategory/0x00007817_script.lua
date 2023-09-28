-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007817_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  local l_0_1, l_0_2, l_0_3 = pcall(bm.get_process_relationships, l_0_0.ppid)
  if l_0_1 then
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      if l_0_8 ~= nil and l_0_8.ppid ~= nil then
        (bm.request_SMS)(l_0_8.ppid, "m")
        ;
        (bm.add_action)("SmsAsyncScanEvent", 1)
      end
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.INFECTED
  return l_0_1
end

