-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000074b5_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((bm.get_imagepath)(), -10))
if l_0_0 == "\\mshta.exe" then
  local l_0_1 = (bm.get_current_process_startup_info)()
  local l_0_2 = l_0_1.command_line
  if (string.find)(l_0_2, "-embedding", 1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

