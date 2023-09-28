-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000010b2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
  if l_0_1 == nil then
    return mp.CLEAN
  end
  l_0_1 = (string.lower)(l_0_1)
  if l_0_1 == nil or (string.len)(l_0_1) < 4 then
    return mp.CLEAN
  end
  local l_0_2 = (string.sub)(l_0_1, -4)
  local l_0_3 = (string.sub)(l_0_1, -3)
  local l_0_4 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  if l_0_4 == nil then
    return mp.CLEAN
  end
  l_0_4 = (string.lower)(l_0_4)
  if (string.len)(l_0_4) < 4 then
    return mp.CLEAN
  end
  local l_0_5 = (string.sub)(l_0_4, -4)
  if l_0_5 == ".exe" then
    if l_0_2 == ".lnk" then
      (mp.set_mpattribute)("Lua:LNKdroppedByProcess")
    end
    if l_0_3 == ".js" then
      (mp.set_mpattribute)("Lua:JSdroppedByProcess")
    end
    if l_0_2 == ".vbs" then
      (mp.set_mpattribute)("Lua:VBSdroppedByProcess")
    end
    if l_0_2 == ".com" then
      (mp.set_mpattribute)("Lua:COMdroppedByProcess")
    end
    if l_0_2 == ".ps1" then
      (mp.set_mpattribute)("Lua:PSdroppedByProcess")
    end
  end
end
do
  return mp.CLEAN
end

