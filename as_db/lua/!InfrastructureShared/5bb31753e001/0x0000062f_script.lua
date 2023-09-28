-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb31753e001\0x0000062f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
local l_0_1 = (bm.get_current_process_startup_info)()
if not l_0_1 or not l_0_1.command_line or not l_0_0 then
  return mp.INFECTED
end
if StringEndsWith(l_0_0, "/bash") or StringEndsWith(l_0_0, "/dash") or StringEndsWith(l_0_0, "/sh") or StringEndsWith(l_0_0, "/perl") or StringEndsWith(l_0_0, "/ruby") or (string.find)(l_0_0, "/python", 1, true) or StringEndsWith(l_0_0, "/zsh") or StringEndsWith(l_0_0, "/csh") or StringEndsWith(l_0_0, "/ksh") or StringEndsWith(l_0_0, "/tcsh") then
  local l_0_2 = l_0_1.command_line
  local l_0_3 = (mp.GetExecutablesFromCommandLine)(l_0_2)
  if l_0_3 then
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      if (sysio.IsFileExists)(l_0_8) then
        (bm.add_related_file)(l_0_8)
      end
    end
  end
end
do
  l_0_2 = mp
  l_0_2 = l_0_2.INFECTED
  return l_0_2
end

