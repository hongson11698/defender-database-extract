-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BM_ESRPLuaVulnDriverInVirtualVolume\0x000003ea_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
l_0_0 = (MpCommon.PathToWin32Path)(l_0_0)
local l_0_1 = (MpCommon.GetMountedFileBackingFilePath)(l_0_0)
if l_0_1 ~= nil then
  local l_0_2 = (mp.enum_mpattributesubstring)("ESRP:PEStatic:")
  if #l_0_2 > 0 then
    return mp.INFECTED
  end
  local l_0_3 = (mp.enum_mpattributesubstring)("BM_ESRP:")
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    if l_0_8 == "BM_ESRP:Lua:VulnerableAsrNotOnClose" then
      return mp.INFECTED
    end
    if (string.find)(l_0_8, "^BM_ESRP:Hstr:") then
      return mp.INFECTED
    end
  end
end
do
  l_0_2 = mp
  l_0_2 = l_0_2.CLEAN
  return l_0_2
end

