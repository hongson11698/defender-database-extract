-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000215_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
if l_0_0 then
  local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1.command_line)
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
    if (sysio.IsFileExists)(l_0_7) then
      (bm.add_related_file)(l_0_7)
    end
  end
end
do
  l_0_2 = nil
  local l_0_8 = nil
  l_0_8 = this_sigattrlog
  l_0_8 = l_0_8[5]
  l_0_8 = l_0_8.matched
  if l_0_8 then
    l_0_8 = this_sigattrlog
    l_0_8 = l_0_8[5]
    l_0_8 = l_0_8.utf8p2
    if l_0_8 ~= nil then
      l_0_8 = this_sigattrlog
      l_0_8 = l_0_8[5]
      l_0_2 = l_0_8.utf8p2
    end
  end
  if l_0_2 ~= nil then
    l_0_8 = mp
    l_0_8 = l_0_8.GetExecutablesFromCommandLine
    l_0_8 = l_0_8(l_0_2)
    local l_0_9 = nil
    l_0_9 = ipairs
    l_0_9 = l_0_9(l_0_8)
    for l_0_13,l_0_14 in l_0_9 do
      local l_0_14 = nil
      l_0_14 = mp
      l_0_14 = l_0_14.ContextualExpandEnvironmentVariables
      l_0_14 = l_0_14(l_0_13)
      l_0_13 = l_0_14
      l_0_14 = sysio
      l_0_14 = l_0_14.IsFileExists
      l_0_14 = l_0_14(l_0_13)
      if l_0_14 then
        l_0_14 = bm
        l_0_14 = l_0_14.add_related_file
        l_0_14(l_0_13)
      end
    end
  end
  do
    l_0_8 = mp
    l_0_8 = l_0_8.INFECTED
    do return l_0_8 end
    -- DECOMPILER ERROR at PC75: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  end
end

