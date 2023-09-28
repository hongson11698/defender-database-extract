-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFRansomWin32RevilF\0x00000ed0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if (string.find)(l_0_0, "rwenc_exe_x86_debug", 1, true) or (string.find)(l_0_0, "rwenc_exe_x64_debug", 1, true) or (string.find)(l_0_0, "rwenc_dll_x86_debug", 1, true) or (string.find)(l_0_0, "rwenc_dll_x64_debug", 1, true) or (string.find)(l_0_0, "rwenc_x86_x86_debug", 1, true) or (string.find)(l_0_0, "rwenc_x86_x64_debug", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

