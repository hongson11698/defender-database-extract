-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001463_luac 

-- params : ...
-- function num : 0
local l_0_2 = nil
local l_0_3 = nil
local l_0_4 = "rdp-brute-"
local l_0_5 = 100
local l_0_6 = 30
do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = 0
  end
  do
    if (this_sigattrlog[3]).matched then
      local l_0_1 = nil
    end
    if l_0_2 ~= nil and l_0_3 ~= nil then
      local l_0_7 = nil
      local l_0_8, l_0_9 = 10
      if not pcall(MpCommon.RollingQueueCreate, l_0_4 .. l_0_2, l_0_5, l_0_6, 0) then
        return mp.CLEAN
      end
      if not pcall(MpCommon.RollingQueueAppend, l_0_9, l_0_3, "", l_0_6) then
        return mp.CLEAN
      end
      if not pcall(MpCommon.RollingQueueCount, l_0_9) then
        return mp.CLEAN
      end
      if l_0_8 <= l_0_7 then
        pcall(MpCommon.RollingQueueErase, l_0_9)
        return mp.INFECTED
      end
    end
    do
      do
        do return mp.CLEAN end
        -- WARNING: undefined locals caused missing assignments!
      end
    end
  end
end

