-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000431_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= l_0_0.integrity_level then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[1]).utf8p2
end
if l_0_1 ~= nil then
  local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    if (sysio.IsFileExists)(l_0_7) then
      (bm.add_related_file)(l_0_7)
    end
  end
end
do
  l_0_2 = mp
  l_0_2 = l_0_2.INFECTED
  return l_0_2
end

