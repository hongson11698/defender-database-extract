-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaNtdsExclusions\0x00001134_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 2097152 then
  return mp.INFECTED
end
local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
local l_0_3 = l_0_2:sub(-3)
local l_0_4 = "tdb|edb|mdb|dat|ore|pds|sdb|bim|vol|asf|adb|tmp"
if l_0_4:find(l_0_3, 1, true) then
  return mp.INFECTED
end
local l_0_5 = "catdb|mail.msmessagestore|dhcp.mdb|webcachev01.dat|cachestorage.edb|windowsmail.msmessagestore|defaultstore|actorstatestore|persiststore.edb|imosstore|fs.edb|rm.edb|upgradeservicestore|serverservice.edb|masterservice.edb|6260B5C4|"
if l_0_5:find(l_0_2, 1, true) then
  return mp.INFECTED
end
if l_0_1:find("\\webcache\\", 1, true) or l_0_1:find("\\system32\\logfiles", 1, true) or l_0_1:find("windows\\cryptoguard", 1, true) then
  return mp.INFECTED
end
local l_0_6, l_0_7 = pcall(mp.BMSearchFile, 4096, 2097152, "ATTk590689\144\000")
if l_0_6 and l_0_7 > 4096 then
  (mp.set_mpattribute)("Lua:NtdsditEsedbFileHeader.A")
  ;
  (mp.set_mpattribute)("BM_Ntdsdit_ESEDB_FILE")
  return mp.CLEAN
end
return mp.INFECTED

