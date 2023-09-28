-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000110e_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  if l_0_1 == nil or #l_0_1 < 1 then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)(l_0_1)
  local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
  if l_0_3 == nil or #l_0_3 < 1 then
    return mp.CLEAN
  end
  local l_0_4 = (MpCommon.PathToWin32Path)(l_0_3)
  if l_0_4 == nil or #l_0_4 < 1 then
    return mp.CLEAN
  end
  local l_0_5 = (string.lower)(l_0_4)
  local l_0_6 = {}
  l_0_6["ww2help.dll"] = ""
  l_0_6["cryptsp.dll"] = ""
  l_0_6["fxsst.dll"] = ""
  l_0_6["secur32.dll"] = ""
  if l_0_5:find("\\windows\\", 1, true) and l_0_6[l_0_2] then
    local l_0_7, l_0_8 = (mp.IsTrustedFile)(true)
    if l_0_7 ~= true then
      local l_0_9 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
      if l_0_9 == nil or #l_0_9 < 1 then
        return mp.CLEAN
      end
      local l_0_10 = (string.lower)(l_0_9)
      local l_0_11 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
      if l_0_11 == nil or #l_0_11 < 1 then
        return mp.CLEAN
      end
      local l_0_12 = (MpCommon.PathToWin32Path)(l_0_11)
      if l_0_12 == nil or #l_0_12 < 1 then
        return mp.CLEAN
      end
      local l_0_13 = (string.lower)(l_0_12)
      local l_0_14 = l_0_13 .. "\\" .. l_0_10
      ;
      (mp.ReportLowfi)(l_0_14, 4051462255)
      return mp.INFECTED
    end
  end
  do
    do
      do return mp.CLEAN end
      return mp.CLEAN
    end
  end
end

