-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaHiddenFilesOnMountedDrivesWithMotw\0x0000016c_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or #l_0_0 > 2 or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = l_0_0 .. "\\" .. l_0_1
local l_0_3 = (MpCommon.GetMountedFileBackingFilePath)(l_0_2)
if l_0_3 == nil then
  return mp.CLEAN
end
do
  if IsKeyInRollingQueue("CC_filelist", l_0_3) then
    local l_0_4 = (sysio.GetFileAttributes)(l_0_2)
    if (mp.bitand)(l_0_4, 2) == 2 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

