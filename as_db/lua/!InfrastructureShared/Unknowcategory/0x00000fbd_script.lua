-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000fbd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_1:find("\\downloads", 1, true) then
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    if l_0_2:len() > 4 and (string.sub)(l_0_2, -4) == ".hta" then
      if l_0_1:find("\\downloads\\toolbox", 1, true) or l_0_1:find("appdata", 1, true) or l_0_1:find("programdata", 1, true) or l_0_1:find("\\mf.+mfdriver") then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

