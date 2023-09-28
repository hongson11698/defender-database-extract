-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFAdwareWin32NeoreklamiExecutables\0x00000f10_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if #l_0_1 ~= 20 then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilesize)()
if l_0_2 < 6291456 or l_0_2 > 8388608 then
  return mp.CLEAN
end
do
  if l_0_0:find("\\windows\\temp\\", 1, true) ~= nil then
    local l_0_3 = l_0_0:match("temp\\([^\\]+)$")
    if l_0_3 ~= nil and #l_0_3 == 16 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

