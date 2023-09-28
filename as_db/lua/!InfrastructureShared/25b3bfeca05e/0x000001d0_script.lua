-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b3bfeca05e\0x000001d0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0.command_line and l_0_0.image_path then
    local l_0_1 = (string.lower)(l_0_0.image_path)
    if l_0_1:find("\\program files", 1, true) then
      return mp.CLEAN
    end
    bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 1)
    triggerMemoryScanOnProcessTree(true, true, "SMS_H", 5000, "Behavior:Win32/MsilAmsiTamper.A")
    add_parents()
    return mp.INFECTED
  end
  return mp.CLEAN
end

