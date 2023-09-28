-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!LsassDumpA\Includes\0x000000c7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_0 ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
local l_0_3 = {}
l_0_3["\\programdata\\microsoft\\diagnosis\\temp\\diagtrack_{.*\\processdumpaction902\\processdump_.*.dmp"] = ""
l_0_3["\\users\\.*\\appdata\\local\\temp\\vmware.loucs\\vmwarednd\\.*\\lsass.exe_.*.dmp"] = ""
l_0_3["\\staging.ssm\\files\\windows\\temp\\haxm\\xm_7fbc1d8.tmp"] = ""
l_0_3["\\users\\.*\\appdata\\local\\temp\\cabviewer\\.*\\.*-processdump_.*.dmp"] = ""
l_0_3["\\users\\.*\\appdata\\local\\temp\\lsass.exe.*.dmp"] = ""
l_0_3["\\wer\\reportqueue\\aw.*\\agent.pluginhost.exe.*mini.dmp"] = ""
l_0_3["lsass.exe.secure.wxhu.dmp.decrypt.dmp"] = ""
l_0_3[":\\data\\dumps\\debuguser.*\\dumpuid.*_processdump_.*.dmp"] = ""
l_0_3[":\\data\\dumps\\debuguser.*\\dumpuid.*.hdmp"] = ""
l_0_3[":\\data\\dumps\\debuguser.*\\dumpuid.*lsass.exe.*.secure.wxhu.dmp.decrypt.dmp"] = ""
l_0_3["lsass.exe.secure.wxtu.dmp.decrypt.dmp"] = ""
l_0_3[":\\windows\\temp\\.*_processdump_.*.dmp"] = ""
l_0_3[":\\windows\\temp\\.*_memory.hdmp"] = ""
local l_0_4 = {}
l_0_4["\\programdata\\microsoft\\azurewatson\\.\\awdumpifeo.exe"] = ""
l_0_4["\\windows\\system32\\werfault.exe"] = ""
l_0_4["\\programdata\\microsoft\\azurewatson\\.\\procdump\\x..\\procdump.*.exe"] = ""
l_0_4["\\windows\\system32\\svchost.exe"] = ""
l_0_4["doubletake.exe"] = ""
l_0_4["vmware.vmx.exe"] = ""
l_0_4["cabviewer.exe"] = ""
l_0_4[":\\data\\debuggers\\debuggers\\debuggers\\CDB.*amd64skdump.exe"] = ""
l_0_4["werdbg.exe"] = ""
l_0_4[":\\data\\debuggers\\debuggers\\debuggers\\cdb.*amd64skdump.exe"] = ""
local l_0_5 = 0
for l_0_9,l_0_10 in pairs(l_0_3) do
  if l_0_2:match(l_0_9) ~= nil then
    l_0_5 = 1
    break
  end
end
do
  if l_0_5 == 1 then
    for l_0_14,l_0_15 in pairs(l_0_4) do
      if l_0_1:match(l_0_14) ~= nil then
        return mp.CLEAN
      end
    end
  end
  do
    if l_0_1:find("haxm.exe") ~= nil then
      return mp.CLEAN
    end
    local l_0_16 = (mp.getfilesize)()
    if l_0_16 < 30720000 then
      return mp.CLEAN
    end
    local l_0_17 = ":\000\\\000W\000i\000n\000d\000o\000w\000s\000\\\000S\000y\000s\000t\000e\000m\0003\0002\000\\\000l\000s\000a\000s\000s\000.\000e\000x\000e\000"
    local l_0_18 = ":\000\\\000W\000i\000n\000d\000o\000w\000s\000\\\000S\000y\000s\000t\000e\000m\0003\0002\000\\\000l\000s\000a\000s\000r\000v\000.\000d\000l\000l\000\000\000"
    local l_0_19 = "lsass.pdb"
    ;
    (mp.readprotection)(false)
    local l_0_20 = tostring((mp.readfile)(0, 200000))
    ;
    (mp.readprotection)(true)
    if l_0_20:find(l_0_17, 1, true) == nil or l_0_20:find(l_0_18, 1, true) == nil or l_0_20:find(l_0_19, 1, true) == nil then
      return mp.CLEAN
    end
    local l_0_21 = (mp.GetParentProcInfo)()
    if l_0_21 ~= nil and l_0_21.ppid ~= nil then
      TrackPidAndTechnique(l_0_21.ppid, "T1003.001", "credentialdumping_concrete", 86400)
    end
    return mp.INFECTED
  end
end

