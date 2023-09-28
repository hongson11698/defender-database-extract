-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006cd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if MpCommon.SECURITY_MANDATORY_HIGH_RID < l_0_0.integrity_level then
  return mp.CLEAN
end
local l_0_1 = (bm.get_imagepath)()
do
  if l_0_1 ~= nil then
    local l_0_2 = {}
    l_0_2["rpcnetp.exe"] = true
    l_0_2["services.exe"] = true
    l_0_2["svchost.exe"] = true
    if l_0_2[((string.lower)((string.sub)(l_0_1, -30))):match("\\system32\\([^\\]+%.exe)$")] then
      return mp.CLEAN
    end
  end
  local l_0_3 = nil
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    l_0_3 = (this_sigattrlog[1]).utf8p2
  end
  if l_0_3 ~= nil and (string.find)(l_0_3, "UnistackSvcGroup", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end

