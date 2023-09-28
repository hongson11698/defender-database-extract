-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\130b3c3b13680\0x0000828e_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
local l_0_3 = nil
local l_0_4 = "|.js|jse|vbs|vbe|"
local l_0_5 = nil
while 1 do
  local l_0_6 = nil
  if (({[({SPAWNING_SCRIPT = 1, COLORCPL_ABUSE = 2, BITSADMIN_HTTP = 3}).SPAWNING_SCRIPT] = function()
  -- function num : 0_0 , upvalues : l_0_3, l_0_4, l_0_5
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    l_0_3 = (this_sigattrlog[1]).utf8p2
    local l_1_0 = (mp.GetExecutablesFromCommandLine)(l_0_3)
    for l_1_4,l_1_5 in ipairs(l_1_0) do
      if (sysio.IsFileExists)(l_1_5) then
        local l_1_6 = (string.lower)((string.sub)(l_1_5, -3))
        if (string.find)(l_0_4, l_1_6, 1, true) then
          return l_0_5.COLORCPL_ABUSE
        end
      end
    end
  else
    do
      do return mp.CLEAN end
    end
  end
end
, [l_0_5.COLORCPL_ABUSE] = function()
  -- function num : 0_1 , upvalues : l_0_5
  if ((this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil) or (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
    return l_0_5.BITSADMIN_HTTP
  else
    return mp.CLEAN
  end
end
, [l_0_5.BITSADMIN_HTTP] = function()
  -- function num : 0_2 , upvalues : l_0_2
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[5]).utf8p2)
    local l_3_0 = function(l_4_0)
    -- function num : 0_2_0
    local l_4_1 = {}
    for l_4_5 in (string.gmatch)(l_4_0, "http[s]?://[^\"%s]+") do
      (table.insert)(l_4_1, l_4_5)
    end
    return l_4_1
  end

    if l_0_2 ~= nil and (string.find)(l_0_2, "bitsadmin", 1, true) then
      local l_3_1 = l_3_0(l_0_2)
      local l_3_2 = {}
      l_3_2.SIG_CONTEXT = "BM"
      l_3_2.CONTENT_SOURCE = "COLORCPL_BITSADMIN_CSCRIPT"
      l_3_2.PROCESS_CONTEXT = "bitsadmin.exe"
      l_3_2.FILELESS = "true"
      l_3_2.CMDLINE_URL = "true"
      for l_3_6,l_3_7 in ipairs(l_3_1) do
        if (string.match)(l_3_7, "^https?://") then
          local l_3_8 = SafeGetUrlReputation
          local l_3_9 = {}
          -- DECOMPILER ERROR at PC53: No list found for R9 , SetList fails

          -- DECOMPILER ERROR at PC54: Overwrote pending register: R10 in 'AssignReg'

          l_3_8 = l_3_8(l_3_9, l_3_7, false, 3000)
          l_3_9 = l_3_8.urls
          l_3_9 = l_3_9[l_3_7]
          if l_3_9 then
            l_3_9 = l_3_8.urls
            l_3_9 = l_3_9[l_3_7]
            l_3_9 = l_3_9.determination
            if l_3_9 ~= 1 then
              l_3_9 = l_3_8.urls
              l_3_9 = l_3_9[l_3_7]
              l_3_9 = l_3_9.confidence
              if l_3_9 ~= 90 then
                l_3_9 = mp
                l_3_9 = l_3_9.INFECTED
                return l_3_9
              end
            end
          end
        end
      end
    end
  else
    do
      do return mp.CLEAN end
    end
  end
end
})[l_0_5.SPAWNING_SCRIPT])() ~= mp.CLEAN then
    if (({[({SPAWNING_SCRIPT = 1, COLORCPL_ABUSE = 2, BITSADMIN_HTTP = 3}).SPAWNING_SCRIPT] = function()
  -- function num : 0_0 , upvalues : l_0_3, l_0_4, l_0_5
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    l_0_3 = (this_sigattrlog[1]).utf8p2
    local l_1_0 = (mp.GetExecutablesFromCommandLine)(l_0_3)
    for l_1_4,l_1_5 in ipairs(l_1_0) do
      if (sysio.IsFileExists)(l_1_5) then
        local l_1_6 = (string.lower)((string.sub)(l_1_5, -3))
        if (string.find)(l_0_4, l_1_6, 1, true) then
          return l_0_5.COLORCPL_ABUSE
        end
      end
    end
  else
    do
      do return mp.CLEAN end
    end
  end
end
, [l_0_5.COLORCPL_ABUSE] = function()
  -- function num : 0_1 , upvalues : l_0_5
  if ((this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil) or (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
    return l_0_5.BITSADMIN_HTTP
  else
    return mp.CLEAN
  end
end
, [l_0_5.BITSADMIN_HTTP] = function()
  -- function num : 0_2 , upvalues : l_0_2
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
    l_0_2 = (string.lower)((this_sigattrlog[5]).utf8p2)
    local l_3_0 = function(l_4_0)
    -- function num : 0_2_0
    local l_4_1 = {}
    for l_4_5 in (string.gmatch)(l_4_0, "http[s]?://[^\"%s]+") do
      (table.insert)(l_4_1, l_4_5)
    end
    return l_4_1
  end

    if l_0_2 ~= nil and (string.find)(l_0_2, "bitsadmin", 1, true) then
      local l_3_1 = l_3_0(l_0_2)
      local l_3_2 = {}
      l_3_2.SIG_CONTEXT = "BM"
      l_3_2.CONTENT_SOURCE = "COLORCPL_BITSADMIN_CSCRIPT"
      l_3_2.PROCESS_CONTEXT = "bitsadmin.exe"
      l_3_2.FILELESS = "true"
      l_3_2.CMDLINE_URL = "true"
      for l_3_6,l_3_7 in ipairs(l_3_1) do
        if (string.match)(l_3_7, "^https?://") then
          local l_3_8 = SafeGetUrlReputation
          local l_3_9 = {}
          -- DECOMPILER ERROR at PC53: No list found for R9 , SetList fails

          -- DECOMPILER ERROR at PC54: Overwrote pending register: R10 in 'AssignReg'

          l_3_8 = l_3_8(l_3_9, l_3_7, false, 3000)
          l_3_9 = l_3_8.urls
          l_3_9 = l_3_9[l_3_7]
          if l_3_9 then
            l_3_9 = l_3_8.urls
            l_3_9 = l_3_9[l_3_7]
            l_3_9 = l_3_9.determination
            if l_3_9 ~= 1 then
              l_3_9 = l_3_8.urls
              l_3_9 = l_3_9[l_3_7]
              l_3_9 = l_3_9.confidence
              if l_3_9 ~= 90 then
                l_3_9 = mp
                l_3_9 = l_3_9.INFECTED
                return l_3_9
              end
            end
          end
        end
      end
    end
  else
    do
      do return mp.CLEAN end
    end
  end
end
})[l_0_5.SPAWNING_SCRIPT])() == mp.INFECTED then
      break
    end
    -- DECOMPILER ERROR at PC33: LeaveBlock: unexpected jumping out IF_THEN_STMT

    -- DECOMPILER ERROR at PC33: LeaveBlock: unexpected jumping out IF_STMT

  end
end
do
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

