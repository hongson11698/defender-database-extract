-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\117b34d075332\0x00008294_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2, l_0_3 = nil, nil
local l_0_4 = nil
local l_0_5 = nil
local l_0_6 = nil
while 1 do
  local l_0_7 = nil
  if (({[({UNTRUSTED_PROCESS = 1, UNTRUSTED_INJECTING = 2, MAKING_CONNECTIONS = 3}).UNTRUSTED_PROCESS] = function()
  -- function num : 0_0 , upvalues : l_0_6
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    return l_0_6.UNTRUSTED_INJECTING
  else
    return mp.CLEAN
  end
end
, [l_0_6.UNTRUSTED_INJECTING] = function()
  -- function num : 0_1 , upvalues : l_0_4, l_0_5, l_0_6
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_4 = (this_sigattrlog[2]).ppid
    l_0_5 = (string.lower)(tostring((this_sigattrlog[2]).image_path))
    if not l_0_4 or not l_0_5 then
      return mp.CLEAN
    end
    local l_2_0 = {}
    -- DECOMPILER ERROR at PC37: No list found for R0 , SetList fails

    -- DECOMPILER ERROR at PC38: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC39: Overwrote pending register: R2 in 'AssignReg'

    for l_2_4,l_2_5 in ("\\users\\.+")("\\windows\\.+") do
      if (string.find)(l_0_5, l_2_5) and checkFileLastWriteTime(l_0_5, 3600) and not (mp.IsKnownFriendlyFile)(l_0_5, true, false) then
        return l_0_6.MAKING_CONNECTIONS
      end
    end
  else
    do
      do return mp.CLEAN end
      -- WARNING: undefined locals caused missing assignments!
    end
  end
end
, [l_0_6.MAKING_CONNECTIONS] = function()
  -- function num : 0_2 , upvalues : l_0_4
  do
    if ((((this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2) or ((this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2) or ((this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2) or (this_sigattrlog[6]).matched)) then
      local l_3_0 = (this_sigattrlog[6]).utf8p2
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    if l_3_0 then
      local l_3_1 = nil
      for l_3_5,l_3_6 in ipairs((bm.GetConnectionHistory)()) do
        local l_3_2 = nil
        -- DECOMPILER ERROR at PC47: Confused about usage of register: R6 in 'UnsetPending'

        if R6_PC47.Url == nil then
          return mp.CLEAN
        end
        local l_3_8 = nil
        if (string.match)(l_3_8, "^https?://") then
          local l_3_9 = {SIG_CONTEXT = "BM", CONTENT_SOURCE = "WRITE_PROCESS_MEMEORY"}
          local l_3_10 = SafeGetUrlReputation
          l_3_10 = l_3_10({l_3_8}, l_3_9, false, 3000)
          if (l_3_10.urls)[l_3_8] and ((l_3_10.urls)[l_3_8]).determination ~= 1 and ((l_3_10.urls)[l_3_8]).confidence ~= 90 then
            (bm.request_SMS)(l_0_4, "h+")
            ;
            (bm.add_action)("SmsAsyncScanEvent", 0)
            return mp.INFECTED
          end
        end
      end
    else
      do
        do return mp.CLEAN end
      end
    end
  end
end
})[l_0_6.UNTRUSTED_PROCESS])() ~= mp.CLEAN then
    if (({[({UNTRUSTED_PROCESS = 1, UNTRUSTED_INJECTING = 2, MAKING_CONNECTIONS = 3}).UNTRUSTED_PROCESS] = function()
  -- function num : 0_0 , upvalues : l_0_6
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    return l_0_6.UNTRUSTED_INJECTING
  else
    return mp.CLEAN
  end
end
, [l_0_6.UNTRUSTED_INJECTING] = function()
  -- function num : 0_1 , upvalues : l_0_4, l_0_5, l_0_6
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_4 = (this_sigattrlog[2]).ppid
    l_0_5 = (string.lower)(tostring((this_sigattrlog[2]).image_path))
    if not l_0_4 or not l_0_5 then
      return mp.CLEAN
    end
    local l_2_0 = {}
    -- DECOMPILER ERROR at PC37: No list found for R0 , SetList fails

    -- DECOMPILER ERROR at PC38: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC39: Overwrote pending register: R2 in 'AssignReg'

    for l_2_4,l_2_5 in ("\\users\\.+")("\\windows\\.+") do
      if (string.find)(l_0_5, l_2_5) and checkFileLastWriteTime(l_0_5, 3600) and not (mp.IsKnownFriendlyFile)(l_0_5, true, false) then
        return l_0_6.MAKING_CONNECTIONS
      end
    end
  else
    do
      do return mp.CLEAN end
      -- WARNING: undefined locals caused missing assignments!
    end
  end
end
, [l_0_6.MAKING_CONNECTIONS] = function()
  -- function num : 0_2 , upvalues : l_0_4
  do
    if ((((this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2) or ((this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2) or ((this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2) or (this_sigattrlog[6]).matched)) then
      local l_3_0 = (this_sigattrlog[6]).utf8p2
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    if l_3_0 then
      local l_3_1 = nil
      for l_3_5,l_3_6 in ipairs((bm.GetConnectionHistory)()) do
        local l_3_2 = nil
        -- DECOMPILER ERROR at PC47: Confused about usage of register: R6 in 'UnsetPending'

        if R6_PC47.Url == nil then
          return mp.CLEAN
        end
        local l_3_8 = nil
        if (string.match)(l_3_8, "^https?://") then
          local l_3_9 = {SIG_CONTEXT = "BM", CONTENT_SOURCE = "WRITE_PROCESS_MEMEORY"}
          local l_3_10 = SafeGetUrlReputation
          l_3_10 = l_3_10({l_3_8}, l_3_9, false, 3000)
          if (l_3_10.urls)[l_3_8] and ((l_3_10.urls)[l_3_8]).determination ~= 1 and ((l_3_10.urls)[l_3_8]).confidence ~= 90 then
            (bm.request_SMS)(l_0_4, "h+")
            ;
            (bm.add_action)("SmsAsyncScanEvent", 0)
            return mp.INFECTED
          end
        end
      end
    else
      do
        do return mp.CLEAN end
      end
    end
  end
end
})[l_0_6.UNTRUSTED_PROCESS])() == mp.INFECTED then
      break
    end
    -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out IF_THEN_STMT

    -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out IF_STMT

  end
end
do
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

