-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001168_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if mp.SCANREASON_ONMODIFIEDHANDLECLOSE == l_0_0 and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and (mp.get_mpattribute)("HSTR:RenoFlossLoader") then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
  local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  if l_0_2 ~= nil and l_0_1 ~= nil then
    (mp.ReportLowfi)((MpCommon.PathToWin32Path)(l_0_1) .. "\\" .. l_0_2, 2439729955)
  end
end
do
  if mp.SCANREASON_ONOPEN == l_0_0 and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true then
    local l_0_3, l_0_4 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
    local l_0_5 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%temp%") .. "\\" .. "rarsfx")
    if l_0_3:find(l_0_5, 1, true) ~= nil then
      local l_0_6 = {}
      l_0_6["ccmexec.exe"] = ""
      l_0_6["tpvcgateway.exe"] = ""
      l_0_6["cmrcviewer.exe"] = ""
      if l_0_6[l_0_4] then
        local l_0_7 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
        local l_0_8 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
        if l_0_8 ~= nil and l_0_7 ~= nil then
          (mp.ReportLowfi)((MpCommon.PathToWin32Path)(l_0_7) .. "\\" .. l_0_8, 2439729955)
          return mp.INFECTED
        end
      end
    end
  end
  do
    return mp.CLEAN
  end
end

