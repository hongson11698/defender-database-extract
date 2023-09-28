-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\25b3b490ab18\0x00000206_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0.ppid ~= nil and l_0_0.image_path ~= nil and l_0_0.command_line ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("\\([^\\]+)$")
  local l_0_3 = {}
  l_0_3["cmd.exe"] = true
  l_0_3["powershell.exe"] = true
  l_0_3["pwsh.exe"] = true
  l_0_3["cscript.exe"] = true
  l_0_3["wscript.exe"] = true
  l_0_3["mshta.exe"] = true
  l_0_3["rundll.exe"] = true
  l_0_3["regsvr32.exe"] = true
  if l_0_3[l_0_2] then
    addRelatedProcess()
    bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 6)
  end
  AddResearchData(l_0_0.ppid, true)
end
do
  return mp.INFECTED
end

