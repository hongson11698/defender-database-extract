-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ca3_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (pe.get_exports)()
if l_0_0 < 10 then
  return mp.CLEAN
end
local l_0_2 = {}
l_0_2.svr_create = 1
l_0_2.svr_start = 1
l_0_2.svr_stop = 1
l_0_2.svr_close = 1
l_0_2.svr_user_accept = 1
l_0_2.svr_user_get_wlan = 1
l_0_2.svr_user_recv_notify = 1
l_0_2.svr_user_send_notify = 1
l_0_2.svr_user_manager = 1
l_0_2.svr_user_close = 1
local l_0_3 = 0
for l_0_7 = 1, l_0_0 do
  local l_0_8 = (pe.mmap_string_rva)((l_0_1[l_0_7]).namerva, 64)
  if l_0_2[l_0_8] then
    l_0_3 = l_0_3 + l_0_2[l_0_8]
  end
end
if l_0_3 == 10 then
  return mp.INFECTED
end
return mp.CLEAN

