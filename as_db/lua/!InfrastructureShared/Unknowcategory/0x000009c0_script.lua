-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000009c0_luac 

-- params : ...
-- function num : 0
local l_0_1 = nil
local l_0_2 = 100000000
if (this_sigattrlog[3]).matched then
  local l_0_0 = 10000000
  l_0_2 = 30000000
  l_0_0 = 10000000
else
  do
    -- DECOMPILER ERROR at PC18: Overwrote pending register: R0 in 'AssignReg'

    if (this_sigattrlog[4]).matched then
      l_0_2 = 30000000
    else
      return mp.CLEAN
    end
    if not l_0_1.utf8p1 then
      return mp.CLEAN
    end
    local l_0_3 = 10000000
    if not (string.find)((string.lower)(l_0_1.utf8p1), ":\\users\\", 1, true) then
      return mp.CLEAN
    end
    if (string.find)((string.lower)(l_0_1.utf8p1), "\\citrix\\", 1, true) or (string.find)((string.lower)(l_0_1.utf8p1), "\\assembly\\", 1, true) or (string.find)((string.lower)(l_0_1.utf8p1), ".tmp", 1, true) then
      return mp.CLEAN
    end
    if (sysio.IsFileExists)((string.lower)(l_0_1.utf8p1)) then
      local l_0_4 = nil
      if (sysio.GetFileSize)((string.lower)(l_0_1.utf8p1)) < l_0_2 and l_0_3 < (sysio.GetFileSize)((string.lower)(l_0_1.utf8p1)) then
        local l_0_5 = nil
        ;
        (bm.request_SMS)(((bm.get_current_process_startup_info)()).ppid, "M")
        ;
        (bm.add_action)("SmsAsyncScanEvent", 1)
        return mp.INFECTED
      end
    end
    do
      return mp.CLEAN
    end
  end
end

