-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ca0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.command_line
if l_0_1 ~= nil then
  local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    if (sysio.IsFileExists)(l_0_7) and not (mp.IsKnownFriendlyFile)(l_0_7, true, false) then
      (bm.add_related_file)(l_0_7)
    end
  end
end
do
  l_0_2 = bm
  l_0_2 = l_0_2.get_process_relationships
  l_0_2 = l_0_2()
  local l_0_8, l_0_9 = nil
  l_0_9 = ipairs
  l_0_9 = l_0_9(l_0_8)
  for l_0_13,l_0_14 in l_0_9 do
    local l_0_14 = nil
    l_0_14 = bm
    l_0_14 = l_0_14.request_SMS
    l_0_14(l_0_13.ppid, "m")
    l_0_14 = mp
    l_0_14 = l_0_14.INFECTED
    do return l_0_14 end
  end
  do return mp.CLEAN end
  -- DECOMPILER ERROR at PC54: Confused about usage of register R4 for local variables in 'ReleaseLocals'

end

