-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6ab3d59e2422\0x00000523_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0.image_path ~= nil then
  local l_0_1 = (mp.ContextualExpandEnvironmentVariables)(l_0_0.image_path)
  local l_0_2 = (MpCommon.ExpandEnvironmentVariables)("%windir%\\system32\\cmd.exe")
  if l_0_1 == l_0_2 then
    local l_0_3 = (mp.GetParentProcInfo)(l_0_0.ppid)
    if l_0_3.image_path ~= nil then
      local l_0_4 = (mp.ContextualExpandEnvironmentVariables)(l_0_3.image_path)
      local l_0_5 = (MpCommon.ExpandEnvironmentVariables)("%windir%\\system32\\gpscript.exe")
      if l_0_4 == l_0_5 then
        local l_0_6 = (mp.GetProcessCommandLine)(l_0_0.ppid)
        if l_0_6 ~= nil then
          local l_0_7 = (l_0_6:match("\"[^\"]+\"")):gsub("\"", "")
          if l_0_7 then
            reportSessionInformation()
            ;
            (bm.add_related_file)(l_0_7)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

