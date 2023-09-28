-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaContextMountedDriveExeCreatesDll\0x0000016b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
if l_0_1 == nil or l_0_0 == nil then
  return mp.CLEAN
end
if l_0_1 == "" or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_2, l_0_3 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if (string.find)(l_0_2, "windows\\syswow64\\", 1, true) or (string.find)(l_0_2, "windows\\system32\\", 1, true) or (string.find)(l_0_2, "\\empower\\oracle\\", 1, true) or l_0_3 == "uninstall.dll" or l_0_3 == "glprop.ax" then
  return mp.CLEAN
end
local l_0_4 = nil
do
  if l_0_0 ~= "rundll32.exe" and l_0_0 ~= "regsvr32.exe" then
    local l_0_5 = l_0_1 .. "\\" .. l_0_0
    l_0_4 = (MpCommon.GetOriginalFileName)(l_0_5)
  end
  if l_0_0 == "regsvr32.exe" or l_0_4 ~= nil and l_0_4 == "regsvr32.exe" then
    local l_0_6 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
    if (MpCommon.QueryPersistContext)(l_0_6, "MountedDriveExeCreatesDll") then
      (mp.set_mpattribute)("Lua:Context/MountedDriveCreatedDllRegsvrLoad")
    end
  else
    do
      do
        if l_0_0 == "rundll32.exe" or l_0_4 ~= nil and l_0_4 == "rundll32.exe" then
          local l_0_7 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
          if (MpCommon.QueryPersistContext)(l_0_7, "MountedDriveExeCreatesDll") then
            (mp.set_mpattribute)("Lua:Context/MountedDriveCreatedDllRundllLoad")
          end
        end
        return mp.CLEAN
      end
    end
  end
end

