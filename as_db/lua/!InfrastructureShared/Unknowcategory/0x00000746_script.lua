-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000746_luac 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[13]
do
  if l_0_0 and l_0_0.matched then
    local l_0_1 = (MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_0.ppid)
    if l_0_1 and MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= l_0_1.IntegrityLevel then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

