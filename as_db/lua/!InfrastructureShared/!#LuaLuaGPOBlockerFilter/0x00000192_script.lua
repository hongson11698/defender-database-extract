-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaLuaGPOBlockerFilter\0x00000192_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
local l_0_1 = (l_0_0:lower()):match("^(.*)\\gpt.ini$")
local l_0_2 = (l_0_0:lower()):match("^\\device\\mup\\.+\\sysvol\\.+\\policies\\{(%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x)}\\gpt.ini$")
local l_0_3 = function(l_1_0)
  -- function num : 0_0
  local l_1_1, l_1_2 = pcall(parseRegistryPol, l_1_0)
  do
    if not l_1_1 then
      local l_1_3 = {}
      l_1_3.error = l_1_2
      return l_1_3
    end
    if #l_1_2 == 0 then
      return nil
    end
    local l_1_4 = {}
    local l_1_5 = "^SOFTWARE\\Microsoft\\Windows Defender\\"
    local l_1_6 = "^SOFTWARE\\Policies\\Microsoft\\Windows Defender\\"
    for l_1_10,l_1_11 in ipairs(l_1_2) do
      if (l_1_11.key):find(l_1_5) or (l_1_11.key):find(l_1_6) then
        local l_1_12 = l_1_11.data
        if l_1_11.typ == 1 then
          l_1_12 = (mp.utf16to8)(l_1_12)
        else
          if l_1_11.typ == 4 then
            l_1_12 = (mp.readu_u32)(l_1_12, 1)
          end
        end
        local l_1_13 = #l_1_4 + 1
        local l_1_14 = {}
        l_1_14.key = l_1_11.key
        l_1_14.name = (MpCommon.NormalizeString)(l_1_11.value, "CmdLineNormalizationStandard")
        l_1_14.value = l_1_12
        l_1_4[l_1_13] = l_1_14
        l_1_13 = l_1_11.key
        l_1_13, l_1_14 = l_1_13:find, l_1_13
        l_1_13 = l_1_13(l_1_14, "Exclusions\\Paths")
        if l_1_13 then
          l_1_13 = MpCommon
          l_1_13 = l_1_13.StringRegExpSearch
          l_1_14 = "(c:?\\\\*\\*?%?$)"
          l_1_13 = l_1_13(l_1_14, l_1_12)
          if l_1_13 then
            AppendToRollingQueue("gpo_broad_exclusion", (string.lower)(l_1_12), true, 604800, 100)
          end
        end
        l_1_13 = l_1_11.key
        l_1_13, l_1_14 = l_1_13:find, l_1_13
        l_1_13 = l_1_13(l_1_14, "Exclusions\\Extensions")
        if l_1_13 then
          l_1_13 = MpCommon
          l_1_13 = l_1_13.StringRegExpSearch
          l_1_14 = "(([.*]+)?(exe|dll|bat|ps1)$)"
          l_1_13 = l_1_13(l_1_14, l_1_12)
          if l_1_13 then
            AppendToRollingQueue("gpo_broad_exclusion", (string.lower)(l_1_12), true, 604800, 100)
          end
        end
      end
    end
    if #l_1_4 == 0 then
      return nil
    end
    return l_1_4
  end
end

local l_0_4 = function(l_2_0)
  -- function num : 0_1
  if not ((sysio.GetLastResult)()).Success then
    return nil
  end
  if (sysio.GetFileSize)(l_2_0) <= 65536 or not 65536 then
    local l_2_3 = nil
    if not ((sysio.GetLastResult)()).Success then
      return nil
    end
    local l_2_4 = (sysio.ReadFile)(l_2_0, 0, (sysio.GetFileSize)(l_2_0))
    local l_2_6 = {}
    do
      local l_2_7 = nil
      if not pcall(parseXML, l_2_4, function(l_3_0, l_3_1, l_3_2)
    -- function num : 0_1_0 , upvalues : l_2_5
    local l_3_3 = "^SOFTWARE\\Microsoft\\Windows Defender\\"
    local l_3_4 = "^SOFTWARE\\Policies\\Microsoft\\Windows Defender\\"
    if l_3_0 == "Properties" and l_3_1.key and ((l_3_1.key):find(l_3_3) or (l_3_1.key):find(l_3_4)) then
      local l_3_5 = l_3_1.value
      if l_3_1.type == "REG_DWORD" then
        l_3_5 = tonumber(l_3_1.value, 16)
      end
      local l_3_6 = l_2_5
      local l_3_7 = #l_2_5 + 1
      local l_3_8 = {}
      l_3_8.key = l_3_1.key
      l_3_8.name = (MpCommon.NormalizeString)(l_3_1.name, "CmdLineNormalizationStandard")
      l_3_8.value = l_3_5
      l_3_6[l_3_7] = l_3_8
      l_3_6 = l_3_1.key
      l_3_6, l_3_7 = l_3_6:find, l_3_6
      l_3_8 = "Exclusions\\Paths"
      l_3_6 = l_3_6(l_3_7, l_3_8)
      if l_3_6 then
        l_3_6 = MpCommon
        l_3_6 = l_3_6.StringRegExpSearch
        l_3_7 = "(c:?\\\\*\\*?%?$)"
        l_3_8 = l_3_5
        l_3_6 = l_3_6(l_3_7, l_3_8)
        if l_3_6 then
          l_3_8 = AppendToRollingQueue
          l_3_8("gpo_broad_exclusion", (string.lower)(l_3_5), true, 604800, 100)
        end
      end
      l_3_6 = l_3_1.key
      l_3_6, l_3_7 = l_3_6:find, l_3_6
      l_3_8 = "Exclusions\\Extensions"
      l_3_6 = l_3_6(l_3_7, l_3_8)
      if l_3_6 then
        l_3_6 = MpCommon
        l_3_6 = l_3_6.StringRegExpSearch
        l_3_7 = "(([.*]+)?(exe|dll|bat|ps1)$)"
        l_3_8 = l_3_5
        l_3_6 = l_3_6(l_3_7, l_3_8)
        if l_3_6 then
          l_3_8 = AppendToRollingQueue
          l_3_8("gpo_broad_exclusion", (string.lower)(l_3_5), true, 604800, 100)
        end
      end
    end
  end
, function()
    -- function num : 0_1_1
  end
) then
        l_2_6.error = parseXML
      end
      if not next(l_2_6) then
        return nil
      end
      do return l_2_6 end
      -- DECOMPILER ERROR at PC52: freeLocal<0 in 'ReleaseLocals'

    end
  end
end

local l_0_6 = function(l_3_0)
  -- function num : 0_2 , upvalues : l_0_2
  if not ((sysio.GetLastResult)()).Success then
    return nil
  end
  if (sysio.GetFileSize)(l_3_0) <= 65536 or not 65536 then
    local l_3_3 = nil
    if not ((sysio.GetLastResult)()).Success then
      return nil
    end
    local l_3_4, l_3_5, l_3_6, l_3_7, l_3_8, l_3_9, l_3_10, l_3_11, l_3_12 = (sysio.ReadFile)(l_3_0, 0, (sysio.GetFileSize)(l_3_0)), nil, nil, nil, nil, nil, nil, nil, nil
    local l_3_13 = nil
    do
      if pcall(parseXML, l_3_4, function(l_5_0, l_5_1, l_5_2)
    -- function num : 0_2_1 , upvalues : l_3_5, l_3_6, l_3_7, l_3_12, l_3_13, l_3_8, l_3_9, l_3_10, l_3_11
    if l_5_2 and l_5_1 then
      error("unexpected text in tag with attributes")
    else
      if not l_3_5 then
        if l_5_0 == "Task" or l_5_0 == "ImmediateTask" then
          l_3_5 = 1
        else
          if l_5_0 == "TaskV2" or l_5_0 == "ImmediateTaskV2" then
            l_3_5 = 2
          end
        end
        l_3_6 = l_5_1.uid or ""
        l_3_7 = l_5_1.changed or ""
      else
        -- DECOMPILER ERROR at PC41: Unhandled construct in 'MakeBoolean' P1

        if l_3_5 == 1 and l_5_0 == "Properties" then
          l_3_12 = l_5_1.appName
          l_3_13 = l_5_1.args
          l_3_8 = l_5_1.name or ""
          l_3_9 = l_5_1.runAs or ""
          l_3_10 = l_5_1.cpassword or ""
          l_3_11 = l_5_1.startIn or ""
        end
      end
    end
    if l_5_0 == "Properties" then
      if not l_5_1.name then
        l_3_8 = l_3_5 ~= 2 or ""
        l_3_9 = l_5_1.runAs or ""
        l_3_10 = l_5_1.cpassword or ""
        if l_5_0 == "Command" then
          l_3_12 = l_5_2
        else
          if l_5_0 == "Arguments" then
            l_3_13 = l_5_2
          else
            if l_5_0 == "WorkingDirectory" then
              l_3_11 = l_5_2
            end
          end
        end
      end
    end
  end
, function(l_6_0)
    -- function num : 0_2_2 , upvalues : l_3_5, l_3_15, l_3_12, l_3_13, l_3_6, l_3_7, l_3_8, l_3_9, l_3_10, l_3_11
    if not l_3_5 then
      return 
    end
    -- DECOMPILER ERROR at PC12: Unhandled construct in 'MakeBoolean' P1

    if l_3_5 == 1 and (l_6_0 == "Task" or l_6_0 == "ImmediateTask") then
      l_3_15()
      l_3_12 = nil
      l_3_5 = nil
      l_3_6 = nil
      l_3_7 = nil
      l_3_8 = nil
      l_3_9 = nil
      l_3_10 = nil
      l_3_11 = nil
    end
    if l_3_5 == 2 then
      if l_6_0 == "Exec" then
        l_3_15()
        l_3_12 = nil
        l_3_11 = nil
      else
        if l_6_0 == "TaskV2" or l_6_0 == "ImmediateTaskV2" then
          l_3_5 = nil
          l_3_6 = nil
          l_3_7 = nil
          l_3_8 = nil
          l_3_9 = nil
          l_3_10 = nil
        end
      end
    end
  end
) or not next({error = true}) then
        return nil
      end
      -- DECOMPILER ERROR at PC81: Confused about usage of register: R12 in 'UnsetPending'

      do return {error = true} end
      -- DECOMPILER ERROR at PC82: freeLocal<0 in 'ReleaseLocals'

      -- WARNING: undefined locals caused missing assignments!
    end
  end
end

local l_0_7 = {}
local l_0_8 = {}
l_0_8.preferences = {registry = l_0_4(l_0_1 .. "\\machine\\preferences\\registry\\registry.xml"), scheduledtasks = l_0_6(l_0_1 .. "\\machine\\preferences\\scheduledtasks\\scheduledtasks.xml")}
l_0_8.registry = l_0_3(l_0_1 .. "\\machine\\registry.pol")
l_0_7.machine = l_0_8
l_0_7.user, l_0_8 = l_0_8, {
preferences = {registry = l_0_4(l_0_1 .. "\\user\\preferences\\registry\\registry.xml"), scheduledtasks = l_0_6(l_0_1 .. "\\user\\preferences\\scheduledtasks\\scheduledtasks.xml")}
, registry = l_0_3(l_0_1 .. "\\user\\registry.pol")}
l_0_8 = next
l_0_8 = l_0_8((l_0_7.machine).preferences)
if not l_0_8 then
  l_0_8 = l_0_7.machine
  l_0_8 = l_0_8.registry
  if not l_0_8 then
    l_0_8 = next
    l_0_8 = l_0_8((l_0_7.user).preferences)
    if not l_0_8 then
      l_0_8 = l_0_7.user
      l_0_8 = l_0_8.registry
    end
  end
end
if l_0_8 then
  l_0_8 = crypto
  l_0_8 = l_0_8.Sha1Buffer
  l_0_8 = l_0_8(l_0_2, 0, #l_0_2)
  local l_0_9 = (string.format)("http://gpo.%s", l_0_8)
  local l_0_10 = nil
  local l_0_11 = (mp.bitand)(tonumber((mp.get_mpattributevalue)("Lua:GPOVersion")), 4294901760) / 65536
  local l_0_12 = (mp.bitand)(l_0_10, 65535)
  local l_0_13 = {SIG_CONTEXT = "LUA_GENERIC", CONTENT_SOURCE = "GPO", TAG = "NOLOOKUP", GPO_USER_VERSION = l_0_11, GPO_MACHINE_VERSION = l_0_12, INFO = safeJsonSerialize(l_0_7)}
  local l_0_14 = pcall
  local l_0_15 = mp.GetUrlReputation
  l_0_14 = l_0_14(l_0_15, {l_0_9}, l_0_13)
  if l_0_14 and ((l_0_15.urls)[1]).determination == 4 then
    AppendToRollingQueue("gpo_block", l_0_2, l_0_10, 28800, 128)
    return mp.INFECTED
  end
  AppendToRollingQueue("gpo_applied", l_0_2, l_0_10, 31536000, 128)
  return mp.INFECTED
end
do
  do
    l_0_8 = mp
    l_0_8 = l_0_8.CLEAN
    do return l_0_8 end
    -- DECOMPILER ERROR at PC158: freeLocal<0 in 'ReleaseLocals'

  end
end

