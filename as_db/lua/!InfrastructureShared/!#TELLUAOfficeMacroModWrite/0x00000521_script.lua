-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELLUAOfficeMacroModWrite\0x00000521_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = {}
  l_0_1[".doc"] = ""
  l_0_1[".docm"] = ""
  l_0_1[".dotm"] = ""
  l_0_1[".dot"] = ""
  l_0_1[".xls"] = ""
  l_0_1[".xlsm"] = ""
  l_0_1[".ppt"] = ""
  l_0_1[".pptm"] = ""
  local l_0_2 = ((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_CNAME, mp.FILEPATH_QUERY_LOWERCASE))):sub(-5)
  if l_0_1[l_0_2:sub(-4)] ~= nil or l_0_1[l_0_2] ~= nil then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

