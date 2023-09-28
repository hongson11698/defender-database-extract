-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000005a1_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 20000000 then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("BM_ELF_EXEC_FILE") then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or l_0_1 == nil or l_0_0 == "" or l_0_1 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_0, "/tmp/", 1, true) == 1 or (string.find)(l_0_0, "/var/tmp/", 1, true) == 1 or (string.find)(l_0_0, "/root/", 1, true) == 1 or (string.find)(l_0_0, "/home/", 1, true) == 1 or (string.find)(l_0_0, "/run/shm/", 1, true) == 1 or (string.find)(l_0_0, "/dev/shm/", 1, true) == 1 or (string.find)(l_0_1, ".", 1, true) == 1 then
  return mp.INFECTED
end
return mp.CLEAN

