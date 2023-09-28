-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\95d72a4b174a\0x00000760_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 then
  local l_0_1 = "(tomcat|nginx|httpd|w3wp|sqlservr|oracle|msmdsrv|msdtssrvr|mysql)"
  local l_0_2 = (string.lower)(l_0_0.image_path)
  local l_0_3 = (l_0_2:match("([^\\]+)$"))
  local l_0_4 = nil
  _ = (MpCommon.StringRegExpSearch)(l_0_1, l_0_3)
  if not l_0_4 then
    l_0_0 = (mp.GetParentProcInfo)(l_0_0.ppid)
    if l_0_0 then
      l_0_2 = (string.lower)(l_0_0.image_path)
      l_0_3 = l_0_2:match("([^\\]+)$")
      -- DECOMPILER ERROR at PC44: Overwrote pending register: R4 in 'AssignReg'

      _ = (MpCommon.StringRegExpSearch)(l_0_1, l_0_3)
      if l_0_4 then
        set_research_data("GParentPath", l_0_3, false)
      end
    end
  else
    set_research_data("ParentPath", l_0_3, false)
  end
  if l_0_4 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

