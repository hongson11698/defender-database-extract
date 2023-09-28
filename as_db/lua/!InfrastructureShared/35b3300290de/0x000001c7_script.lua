-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\35b3300290de\0x000001c7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil and l_0_0.command_line ~= nil then
  local l_0_1 = l_0_0.command_line
  local l_0_2 = (string.lower)(l_0_1)
  local l_0_3 = l_0_2:match("%s+[%-/]en?c?o?d?e?d?c?o?m?m?a?n?d?%s+")
  if not l_0_3 then
    return mp.CLEAN
  end
  local l_0_4, l_0_5 = (bm.get_process_relationships)()
  for l_0_9,l_0_10 in ipairs(l_0_4) do
    local l_0_11 = l_0_10.cmd_line
    if l_0_11 ~= nil then
      l_0_11 = (string.lower)(l_0_11)
      local l_0_12 = l_0_11:match("\\([^\\]+)$")
      local l_0_13 = {}
      l_0_13["ruby.exe"] = true
      l_0_13["compattelrunner.exe"] = true
      l_0_13["choco.exe"] = true
      l_0_13["senseir.exe"] = true
      l_0_13["gpscript.exe"] = true
      l_0_13["wuauclt.exe"] = true
      l_0_13["dismhost.exe"] = true
      if l_0_13[l_0_12] then
        return mp.CLEAN
      end
    end
  end
  local l_0_14 = GetTacticsTableForPid(l_0_0.ppid)
  if l_0_14 ~= nil and type(l_0_14) == "table" then
    do
      do
        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        -- DECOMPILER ERROR at PC137: Unhandled construct in 'MakeBoolean' P3

        if (((((not IsTacticObservedForPid(l_0_0.ppid, "obfuscation_") and not IsTacticObservedForParents(l_0_0.ppid, "obfuscation_", 2)) or not l_0_14.winrshost_childproc) and not l_0_14.folderguard_folder_blk) or l_0_14.amsitampering) and l_0_14.processinjection_target_remoteinitiated_a) or l_0_14.processinjection_target_remoteinitiated_c then
          local l_0_15 = 0 + 1 + 1 + 1 + 1
        end
        -- DECOMPILER ERROR at PC137: Confused about usage of register: R7 in 'UnsetPending'

        if l_0_15 > 2 then
          TrackPidAndTechniqueBM(l_0_0.ppid, "T1027", "tt-remediate")
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

