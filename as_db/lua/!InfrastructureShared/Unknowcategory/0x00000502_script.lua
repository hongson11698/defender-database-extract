-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000502_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0.integrity_level < MpCommon.SECURITY_MANDATORY_HIGH_RID then
  return mp.CLEAN
end
local l_0_1 = (bm.get_imagepath)()
do
  if l_0_1 ~= nil and (string.len)(l_0_1) >= 15 then
    local l_0_2 = {}
    l_0_2["devenv.exe"] = true
    l_0_2["w3wp.exe"] = true
    l_0_2["iisexpress.exe"] = true
    l_0_2["encompass.exe"] = true
    l_0_2["dtexec.exe"] = true
    l_0_2["sqlnexus.exe"] = true
    l_0_2["mesclient.exe"] = true
    l_0_2["ssms.exe"] = true
    l_0_2["msbuild.exe"] = true
    l_0_2["isserverexec.exe"] = true
    if l_0_2[((string.lower)((string.sub)(l_0_1, -15))):match("\\([^\\]+)$")] then
      return mp.CLEAN
    end
  end
  local l_0_3 = nil
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    l_0_3 = (this_sigattrlog[3]).utf8p2
  end
  if l_0_3 ~= nil then
    local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_3)
    for l_0_8,l_0_9 in ipairs(l_0_4) do
      l_0_9 = (mp.ContextualExpandEnvironmentVariables)(l_0_9)
      if (sysio.IsFileExists)(l_0_9) then
        (bm.add_related_file)(l_0_9)
      end
    end
  end
  do
    l_0_4 = mp
    l_0_4 = l_0_4.INFECTED
    return l_0_4
  end
end

