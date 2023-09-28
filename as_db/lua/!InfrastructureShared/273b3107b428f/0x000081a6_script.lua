-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\273b3107b428f\0x000081a6_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_3, l_0_4 = nil, nil, nil
local l_0_6 = nil
do
  if (this_sigattrlog[4]).matched then
    local l_0_2, l_0_5 = , (this_sigattrlog[4]).utf8p2
  end
  -- DECOMPILER ERROR at PC18: Confused about usage of register: R2 in 'UnsetPending'

  if not contains(l_0_5, "^werfault.exe$", false) then
    return mp.CLEAN
  end
  local l_0_7, l_0_8 = nil
  if l_0_5 ~= nil then
    for l_0_12,l_0_13 in ipairs(R7_PC34) do
      local l_0_9, l_0_10, l_0_11 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)())), (bm.get_process_relationships)()
      -- DECOMPILER ERROR at PC36: Confused about usage of register: R10 in 'UnsetPending'

      if R10_PC36.image_path ~= nil and (R10_PC36.reason == bm.RELATIONSHIP_INJECTION or R10_PC36.reason == bm.RELATIONSHIP_CREATED) and (string.find)((string.lower)(R10_PC36.image_path), "\\werfault.exe", -13, true) then
        l_0_7 = R10_PC36.ppid
      end
    end
  end
  do
    -- DECOMPILER ERROR at PC65: Confused about usage of register: R4 in 'UnsetPending'

    -- DECOMPILER ERROR at PC68: Confused about usage of register: R4 in 'UnsetPending'

    if l_0_10 ~= nil then
      for l_0_18,l_0_19 in ipairs(l_0_10) do
        local l_0_15, l_0_16, l_0_17 = nil
        -- DECOMPILER ERROR at PC71: Confused about usage of register: R10 in 'UnsetPending'

        -- DECOMPILER ERROR at PC78: Confused about usage of register: R10 in 'UnsetPending'

        if R10_PC36.image_path ~= nil then
          l_0_6 = (string.lower)((MpCommon.PathToWin32Path)(R10_PC36.image_path))
        end
        if (sysio.IsFileExists)(l_0_6) and not (mp.IsKnownFriendlyFile)(l_0_6, true, false) then
          (bm.add_related_file)(l_0_6)
        end
      end
    end
    do
      -- DECOMPILER ERROR at PC104: Confused about usage of register: R3 in 'UnsetPending'

      -- DECOMPILER ERROR at PC110: Confused about usage of register: R3 in 'UnsetPending'

      if (sysio.IsFileExists)(l_0_15) and not (mp.IsKnownFriendlyFile)(l_0_15, true, false) and l_0_7 ~= nil then
        (bm.request_SMS)(l_0_7, "M")
        ;
        (bm.add_action)("SmsAsyncScanEvent", 1)
        -- DECOMPILER ERROR at PC130: Confused about usage of register: R3 in 'UnsetPending'

        ;
        (bm.add_related_file)(l_0_15)
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

