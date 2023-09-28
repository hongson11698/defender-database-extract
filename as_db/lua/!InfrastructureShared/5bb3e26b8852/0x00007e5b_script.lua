-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb3e26b8852\0x00007e5b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if not contains(l_0_0, (MpCommon.ExpandEnvironmentVariables)("%systemdrive%")) then
  return mp.CLEAN
end
local l_0_1 = {}
-- DECOMPILER ERROR at PC23: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC24: Overwrote pending register: R2 in 'AssignReg'

if not (":\\windows\\")(l_0_0, l_0_1) then
  return mp.CLEAN
end
local l_0_2 = (bm.get_current_process_startup_info)()
do
  do
    if l_0_2 ~= nil and l_0_2.command_line ~= nil then
      local l_0_3 = {}
      -- DECOMPILER ERROR at PC46: No list found for R3 , SetList fails

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R4 in 'AssignReg'

      -- DECOMPILER ERROR at PC48: Overwrote pending register: R5 in 'AssignReg'

      -- DECOMPILER ERROR at PC49: Overwrote pending register: R6 in 'AssignReg'

      if ("mega")("webdav", "copy") then
        (bm.add_threat_file)(l_0_0)
        return mp.INFECTED
      end
    end
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

