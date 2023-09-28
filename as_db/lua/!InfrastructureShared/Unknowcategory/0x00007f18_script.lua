-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f18_luac 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p2
if l_0_0 == nil or (string.find)((string.lower)(l_0_0), "/reporting", 1, true) ~= nil then
  return mp.CLEAN
end
do
  if not (this_sigattrlog[7]).utf8p1 then
    local l_0_1 = (this_sigattrlog[8]).utf8p1
  end
  -- DECOMPILER ERROR at PC28: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_1 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC35: Confused about usage of register: R1 in 'UnsetPending'

  local l_0_2 = (string.lower)(l_0_1)
  if l_0_2 == nil or (string.find)(l_0_2, "c:\\", 1, true) == nil then
    return mp.CLEAN
  end
  if (sysio.IsFileExists)(l_0_2) then
    (bm.add_related_file)(l_0_2)
  end
  local l_0_3 = (bm.get_current_process_startup_info)()
  if l_0_3 ~= nil and l_0_3.ppid ~= nil then
    (bm.request_SMS)(l_0_3.ppid, "m")
    ;
    (bm.add_action)("SmsAsyncScanEvent", 1)
  end
  return mp.INFECTED
end

